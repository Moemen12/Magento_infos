"use strict";

require(['jquery'], function ($) {
  $(document).ready(function () {
    var fileInput = document.getElementById('carriers_tablerate_state_maker');
    var importUrl = 'admin_1k2k7r/'; // Replace with the correct URL

    fileInput.addEventListener('change', function (event) {
      var file = event.target.files[0];
      var formData = new FormData();
      formData.append('csv_file', file);
      formData.append('form_key', window.FORM_KEY); // Include the form key from Magento

      $.ajax({
        url: importUrl,
        type: 'POST',
        data: formData,
        processData: false,
        contentType: false,
        success: function success(response) {
          if (response.success) {
            console.log('CSV data sent successfully!');
          } else {
            console.log('Error while sending CSV data: ' + response.message);
          }
        },
        error: function error(_error) {
          console.log('Error:', _error);
        }
      });
    });
  });
});