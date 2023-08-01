<?php
/**
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */

namespace Magento\Cms\Controller\Adminhtml\Wysiwyg\Images;

use Magento\Framework\App\Filesystem\DirectoryList;
use Magento\Framework\App\Response\HttpFactory as ResponseFactory;

/**
 * Test for \Magento\Cms\Controller\Adminhtml\Wysiwyg\Images\Upload class.
 */
class UploadTest extends \PHPUnit\Framework\TestCase
{
    /**
     * @var \Magento\Cms\Controller\Adminhtml\Wysiwyg\Images\Upload
     */
    private $model;

    /**
     * @var \Magento\Framework\Filesystem\Directory\WriteInterface
     */
    private $mediaDirectory;

    /**
     * @var string
     */
    private $fullExcludedDirectoryPath;

    /**
     * @var string
     */
    private $fileName = 'magento_small_image.jpg';

    /**
     * @var \Magento\Framework\Filesystem
     */
    private $filesystem;

    /**
     * @var \Magento\Framework\ObjectManagerInterface
     */
    private $objectManager;

    /**
     * @var ResponseFactory
     */
    private $responseFactory;

    /**
     * @inheritdoc
     */
    protected function setUp()
    {
        $this->objectManager = \Magento\TestFramework\Helper\Bootstrap::getObjectManager();
        $excludedDirName = 'downloadable';
        $this->filesystem = $this->objectManager->get(\Magento\Framework\Filesystem::class);
        $imagesHelper = $this->objectManager->get(\Magento\Cms\Helper\Wysiwyg\Images::class);
        $this->mediaDirectory = $this->filesystem->getDirectoryWrite(DirectoryList::MEDIA);
        $this->model = $this->objectManager->get(\Magento\Cms\Controller\Adminhtml\Wysiwyg\Images\Upload::class);
        $fixtureDir = realpath(__DIR__ . '/../../../../../Catalog/_files');
        $tmpFile = $this->filesystem->getDirectoryRead(DirectoryList::PUB)->getAbsolutePath() . $this->fileName;
        $this->fullExcludedDirectoryPath = $imagesHelper->getStorageRoot() . DIRECTORY_SEPARATOR . $excludedDirName;
        $this->responseFactory = $this->objectManager->get(ResponseFactory::class);
        copy($fixtureDir . DIRECTORY_SEPARATOR . $this->fileName, $tmpFile);
        $_FILES = [
            'image' => [
                'name' => $this->fileName,
                'type' => 'image/png',
                'tmp_name' => $tmpFile,
                'error' => 0,
                'size' => filesize($fixtureDir),
            ],
        ];
    }

    /**
     * Execute method with correct directory path and file name to check that file can be uploaded to the directory
     * located under WYSIWYG media.
     *
     * @return void
     * @magentoAppIsolation enabled
     */
    public function testExecute()
    {
        $directoryName = 'directory1';
        /** @var \Magento\Cms\Helper\Wysiwyg\Images $imagesHelper */
        $imagesHelper = $this->objectManager->get(\Magento\Cms\Helper\Wysiwyg\Images::class);
        $fullDirectoryPath = $imagesHelper->getStorageRoot() . DIRECTORY_SEPARATOR . $directoryName;
        $this->mediaDirectory->create($this->mediaDirectory->getRelativePath($fullDirectoryPath));

        $this->model->getRequest()->setParams(['type' => 'image/png']);
        $this->model->getRequest()->setMethod('POST');
        $this->model->getStorage()->getSession()->setCurrentPath($fullDirectoryPath);
        $this->model->execute();
        $this->assertTrue(
            $this->mediaDirectory->isExist(
                $this->mediaDirectory->getRelativePath(
                    $fullDirectoryPath . DIRECTORY_SEPARATOR . $this->fileName
                )
            )
        );
    }

    /**
     * Execute method with excluded directory path and file name to check that file can't be uploaded.
     *
     * @return void
     * @magentoAppIsolation enabled
     */
    public function testExecuteWithExcludedDirectory()
    {
        $expectedError = 'We can\'t upload the file to current folder right now. Please try another folder.';
        $this->model->getRequest()->setParams(['type' => 'image/png']);
        $this->model->getRequest()->setMethod('POST');
        $this->model->getStorage()->getSession()->setCurrentPath($this->fullExcludedDirectoryPath);
        /** @var JsonResponse $jsonResponse */
        $jsonResponse = $this->model->execute();
        /** @var Response $response */
        $jsonResponse->renderResult($response = $this->responseFactory->create());
        $data = json_decode($response->getBody(), true);

        $this->assertEquals($expectedError, $data['error']);
        $this->assertFalse(
            $this->mediaDirectory->isExist(
                $this->mediaDirectory->getRelativePath(
                    $this->fullExcludedDirectoryPath . DIRECTORY_SEPARATOR . $this->fileName
                )
            )
        );
    }

    /**
     * Execute method with correct directory path and file name to check that file can be uploaded to the directory
     * located under linked folder.
     *
     * @return void
     * @magentoDataFixture Magento/Cms/_files/linked_media.php
     */
    public function testExecuteWithLinkedMedia()
    {
        $directoryName = 'linked_media';
        $fullDirectoryPath = $this->filesystem->getDirectoryRead(DirectoryList::PUB)
                ->getAbsolutePath() . DIRECTORY_SEPARATOR . $directoryName;
        $wysiwygDir = $this->mediaDirectory->getAbsolutePath() . '/wysiwyg';
        $this->model->getRequest()->setMethod('POST');
        $this->model->getRequest()->setParams(['type' => 'image/png']);
        $this->model->getStorage()->getSession()->setCurrentPath($wysiwygDir);
        $this->model->execute();
        $this->assertTrue(is_file($fullDirectoryPath . DIRECTORY_SEPARATOR . $this->fileName));
    }

    /**
     * @inheritdoc
     */
    public static function tearDownAfterClass()
    {
        $filesystem = \Magento\TestFramework\Helper\Bootstrap::getObjectManager()
            ->get(\Magento\Framework\Filesystem::class);
        /** @var \Magento\Framework\Filesystem\Directory\WriteInterface $directory */
        $directory = $filesystem->getDirectoryWrite(DirectoryList::MEDIA);
        if ($directory->isExist('wysiwyg')) {
            $directory->delete('wysiwyg');
        }
    }
}
