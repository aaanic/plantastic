/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import Rails from 'rails-ujs';

Rails.start()

document.addEventListener("DOMContentLoaded", () => {
// Modal Reminders
// Get the button that opens the modal
    const btn = document.querySelector('.open-modal');
    const modal = document.getElementById("myModal");

    // Get the <span> element that closes the modal
    const span = document.getElementsByClassName("close")[0];

    if (btn) {
      // When the user clicks the button, open the modal
      btn.addEventListener("click", openModal);

      function openModal() {
        modal.classList.add("modal-active");
      }


      // When the user clicks on <span> (x), close the modal
      span.onclick = function() {
        modal.classList.remove("modal-active");
      }

      const submitClose = document.querySelector(".button-center button");
        console.log(submitClose);
      submitClose.addEventListener("click", function() {
        modal.classList.remove("modal-active");
      })

      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function(event) {
        if (event.target == modal) {
          modal.classList.remove("modal-active");
        }
      }
    }
})
