import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['input', 'output'];

  preview() {
    var input = this.inputTarget;
    var output = this.outputTarget;
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function () {
        output.style.backgroundImage = `url(${reader.result})`;
      };
      reader.readAsDataURL(input.files[0]);
    }
  }
}



// image_input.addEventListener('change', function() {
//    const reader = new FileReader();
//    reader.addEventListener('load', () => {
//      document.querySelector("#display_image").style.backgroundImage = `url(${reader.result})`;
//    });
// reader.readAsDataURL(this.files[0]);
