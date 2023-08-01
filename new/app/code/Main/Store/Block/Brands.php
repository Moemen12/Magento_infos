<?php

namespace Main\Store\Block;

use Magento\Framework\UrlInterface;
use Magento\Store\Model\StoreManagerInterface;
use Magento\Catalog\Api\ProductAttributeRepositoryInterface;
use Magento\Catalog\Helper\Image;
use Magento\Swatches\Helper\Data as SwatchHelper;



// ...

class Brands extends \Magento\Framework\View\Element\Template
{
    // ...

    /** @var UrlInterface */
    protected $urlBuilder;

    protected $swatchHelper;

    protected $imageHelper;
    protected $attributeRepository;
    public function __construct(
        \Magento\Framework\View\Element\Template\Context $context,
        ProductAttributeRepositoryInterface $attributeRepository,
        SwatchHelper $swatchHelper,
        Image $imageHelper,
        UrlInterface $urlBuilder,
        array $data = []
    ) {
        $this->attributeRepository = $attributeRepository;
        $this->swatchHelper = $swatchHelper;
        $this->imageHelper = $imageHelper;
        $this->urlBuilder = $urlBuilder;
        parent::__construct($context, $data);
    }

    // ...

    public function getSwatchData()
    {
        $attributeCode = 'brands'; // Replace 'color' with your actual attribute code

        try {
            $attribute = $this->attributeRepository->get($attributeCode);
        } catch (\Magento\Framework\Exception\NoSuchEntityException $e) {
            // Handle the exception if the attribute is not found
            return [];
        }

        $swatchOptions = $attribute->getOptions();
        $optionIds = [];

        foreach ($swatchOptions as $option) {
            $optionIds[] = $option->getValue();
        }

        // Get the swatches information, including images, based on option ids
        $swatches = $this->swatchHelper->getSwatchesByOptionsId($optionIds);

        $swatchData = [];

        // Get the base media URL
        $baseMediaUrl = $this->urlBuilder->getBaseUrl(['_type' => UrlInterface::URL_TYPE_MEDIA]);

        foreach ($swatchOptions as $option) {
            $optionId = $option->getValue();
            $optionLabel = $option->getLabel();

            // Get the swatch image URL for this option
            $swatchImageUrl = null;
            if (isset($swatches[$optionId]['value'])) {
                $imageFileName = $swatches[$optionId]['value'];

                // Construct the correct URL for the swatch image
                $swatchAttributeCode = $attribute->getAttributeCode();
                $swatchImageUrl = $baseMediaUrl . 'attribute/swatch/' . $imageFileName;
            }

            // Store the data for this swatch option
            $swatchData[] = [
                'label' => $optionLabel,
                'image_url' => $swatchImageUrl,
                'option_id' => $optionId
            ];
        }

        return $swatchData;
    }

    // ...
}
