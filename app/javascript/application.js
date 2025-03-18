// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import Rails from '@rails/ujs'
Rails.start()
// // Auto-hide flash messages after 3 seconds
// document.addEventListener("turbo:load", function() {
//   const flashMessages = document.querySelectorAll('.flash');
  
//   flashMessages.forEach(function(flash) {
//     // Set a timeout to hide the flash message after 3 seconds
//     setTimeout(function() {
//       flash.style.transition = "opacity 0.5s ease";
//       flash.style.opacity = 0;
      
//       // Remove the element from the DOM after the fade out
//       setTimeout(function() {
//         flash.remove();
//       }, 500);
//     }, 3000);
//   });
// });