// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.


require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import $ from 'jquery';
import 'bootstrap/dist/js/bootstrap';
import './styles.scss'



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(document).on('click', '.modal-footer', function(){
  $('#myModal').hide()
});
$(document).on('click', '.modal-header', function(){
  $('#myModal').hide()
});

$(document).on('click', 'tr.list:not(.editList)', function() {
  $.ajax({
    url: $(this).data('url'),
    type: 'get',
    dataType: 'script'
  });
});

$(document).on("change", "#user_address_attributes_state_id", function(){
  var val = $(this).val();
  $.ajax({
    url: "/admin/city?state_id="+val,
    method: "GET", 
    dataType: "json",
    success: function(data) {
      console.log(data)
      var optionsAsString = "";
      $.each(data, function( index, city ) {
        optionsAsString += "<option value='" + city.id + "'>" + city.city_name + "</option>";
      });
    $('select[name="user[address_attributes][city_id]"]').html( optionsAsString );
    }
  });
});
