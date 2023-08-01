<?php
/**
 * Copyright © 2013-2017 Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */
namespace Magento\Update\Test\Unit;

use Magento\Update\Queue;

class QueueTest extends \PHPUnit_Framework_TestCase
{
    /**
     * @var \PHPUnit_Framework_MockObject_MockObject|\Magento\Update\Queue\Reader
     */
    private $reader;

    /**
     * @var \PHPUnit_Framework_MockObject_MockObject|\Magento\Update\Queue\Writer
     */
    private $writer;

    /**
     * @var \PHPUnit_Framework_MockObject_MockObject|\Magento\Update\Queue\JobFactory
     */
    private $jobFactory;

    /**
     * @var Queue
     */
    private $queue;

    public function setUp()
    {
        $this->reader = $this->getMock('Magento\Update\Queue\Reader', [], [], '', false);
        $this->writer = $this->getMock('Magento\Update\Queue\Writer', [], [], '', false);
        $this->jobFactory = $this->getMock('Magento\Update\Queue\JobFactory', [], [], '', false);
        $this->queue = new Queue($this->reader, $this->writer, $this->jobFactory);
    }

    public function testPeek()
    {
        $this->reader->expects($this->once())
            ->method('read')
            ->willReturn('{"jobs": [{"name": "job A", "params" : []}, {"name": "job B", "params" : []}]}');
        $this->assertEquals(['name' => 'job A', 'params' => []], $this->queue->peek());
    }

    public function testPeekEmpty()
    {
        $this->reader->expects($this->once())
            ->method('read')
            ->willReturn('');
        $this->assertEquals([], $this->queue->peek());
    }

    /**
     * @expectedException \RuntimeException
     * @expectedExceptionMessage "params" field is missing for one or more jobs
     */
    public function testPeekException()
    {
        $this->reader->expects($this->once())
            ->method('read')
            ->willReturn('{"jobs": [{"name": "job A"}, {"name": "job B"}]}');
        $this->queue->peek();
    }

    /**
     * @expectedException \RuntimeException
     * @expectedExceptionMessage "jobs" field is missing or is not an array
     */
    public function testPeekExceptionNoJobsKey()
    {
        $this->reader->expects($this->once())
            ->method('read')
            ->willReturn('{"foo": "bar"}');
        $this->queue->peek();
    }

    public function testPopQueuedJob()
    {
        $this->reader->expects($this->once())
            ->method('read')
            ->willReturn('{"jobs": [{"name": "job A", "params" : []}, {"name": "job B", "params" : []}]}');
        $job = $this->getMockForAbstractClass('Magento\Update\Queue\AbstractJob', [], '', false);
        $this->jobFactory->expects($this->once())->method('create')->with('job A', [])->willReturn($job);
        $rawData = ['jobs' => [['name' => 'job B', 'params' => []]]];
        $this->writer->expects($this->once())->method('write')->with(json_encode($rawData, JSON_PRETTY_PRINT));
        $this->assertEquals($job, $this->queue->popQueuedJob());
    }

    public function testPopQueuedJobEmptyAfter()
    {
        $this->reader->expects($this->once())
            ->method('read')
            ->willReturn('{"jobs": [{"name": "job A", "params" : []}]}');
        $job = $this->getMockForAbstractClass('Magento\Update\Queue\AbstractJob', [], '', false);
        $this->jobFactory->expects($this->once())->method('create')->with('job A', [])->willReturn($job);
        $this->writer->expects($this->once())->method('write')->with('');
        $this->assertEquals($job, $this->queue->popQueuedJob());
    }

    /**
     * @expectedException \RuntimeException
     * @expectedExceptionMessage "params" field is missing for one or more jobs
     */
    public function testPopQueuedJobException()
    {
        $this->reader->expects($this->once())
            ->method('read')
            ->willReturn('{"jobs": [{"name": "job A"}, {"name": "job B"}]}');
        $this->writer->expects($this->never())->method('write');
        $this->queue->popQueuedJob();
    }

    /**
     * @expectedException \RuntimeException
     * @expectedExceptionMessage "jobs" field is missing or is not an array
     */
    public function testPopQueuedJobExceptionNoJobsKey()
    {
        $this->reader->expects($this->once())
            ->method('read')
            ->willReturn('{"foo": "bar"}');
        $this->writer->expects($this->never())->method('write');
        $this->queue->popQueuedJob();
    }

    public function testAddJobs()
    {
        $queue = ['jobs' => []];
        $this->reader->expects($this->at(0))->method('read')->willReturn('');
        $queue['jobs'][] = ['name' => 'job A', 'params' => []];
        $this->writer->expects($this->at(0))
            ->method('write')
            ->with(json_encode($queue, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
        $this->reader->expects($this->at(1))
            ->method('read')
            ->willReturn(json_encode($queue, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
        $queue['jobs'][] = ['name' => 'job B', 'params' => []];
        $this->writer->expects($this->at(1))
            ->method('write')
            ->with(json_encode($queue, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
        $this->queue->addJobs([['name' => 'job A', 'params' => []], ['name' => 'job B', 'params' => []]]);
    }

    /**
     * @expectedException \RuntimeException
     * @expectedExceptionMessage field is missing for one or more jobs
     */
    public function testAddJobsInvalidJobs()
    {
        $this->queue->addJobs([['no_name' => 'no job', 'no_params' => []]]);
    }
}
