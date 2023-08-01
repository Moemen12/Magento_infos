"use strict";

require(['jquery'], function ($) {
  $(document).ready(function () {
    var parentCategoriesTwo = document.querySelectorAll('.parentCategoriesTwo');
    parentCategoriesTwo.forEach(function ($value) {
      $value.addEventListener('click', function () {
        var collapse = $value.parentElement.querySelector('.collapse');

        if (collapse) {
          if (collapse.classList.contains('show')) {
            collapse.classList.remove('show');
          } else {
            collapse.classList.add('show');
          }
        }
      });
    }); // Local array to maintain the wishlist products

    var wishlist_products = []; // Function to toggle product in the wishlist

    function toggleWishlistProduct(productId) {
      $.ajax({
        url: 'shop/Index/Index',
        // Replace with the correct route URL
        type: 'POST',
        data: {
          product_id: productId
        },
        dataType: 'json',
        success: function success(response) {
          // Handle the response here
          if (response.redirect_url) {
            // Redirect the user to the specified URL
            window.location.href = response.redirect_url;
          } else {
            console.log(response); // Toggle the product in the local wishlist_products array

            if (wishlist_products.includes(productId)) {
              // Product is in the wishlist, remove it
              wishlist_products = wishlist_products.filter(function (id) {
                return id !== productId;
              });
              $('#product-' + productId).find('path').attr('fill', 'black');
            } else {
              // Product is not in the wishlist, add it
              wishlist_products.push(productId);
              $('#product-' + productId).find('path').attr('fill', 'red');
            }
          }
        },
        error: function error(_error) {
          console.log('Error:', _error);
        }
      });
    } // Fetch and set initial wishlist products


    $.ajax({
      url: 'shop/Index/wishlistItems',
      // Replace with the correct route URL
      type: 'GET',
      dataType: 'json',
      success: function success(response) {
        wishlist_products = response.items || []; // Loop through each SVG element with class 'nn'

        $('.nn').each(function () {
          var productId = parseInt($(this).data('product-id')); // Check if the 'productId' exists in the wishlist_products array

          if (wishlist_products.includes(productId)) {
            // Change the fill color to red
            $(this).find('path').attr('fill', 'red');
          }
        });
      },
      error: function error(_error2) {
        console.log('Error:', _error2);
      }
    }); // Attach click event to all SVG elements with class 'nn'

    $(".nn").click(function () {
      var prodid = $(this).data("product-id");
      toggleWishlistProduct(prodid);
    });
  });
});