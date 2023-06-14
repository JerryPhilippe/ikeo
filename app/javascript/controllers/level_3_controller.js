import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-3"
export default class extends Controller {
  static targets = ["bubble", "progression", "mouse", "broom"]

  connect() {
    this.enableBroom = false

    if (window.location.pathname == "/cave"){
      this.mouseTarget.classList.add("cursor");
    };

    // this.canvas = document.getElementById("scratch");
    // // const context = this.canvas.getContext("2d");
    // this.machin = this.canvas.getContext("2d");

    // let image = new Image();
    // image.src = "assets/poussiere.png";

    // image.onload = () => {
    //   this.machin.drawImage(image, 0, 0, this.canvas.width, this.canvas.height);
    // };

  }

  switchLight(){
    this.mouseTarget.classList.remove("cursor");
    this.enableBroom = true
    this.broomTarget.classList.add("balais-img");
  }

  move(e) {
    let mouseY = e.clientY
    let mouseX = e.clientX
    this.mouseTarget.style.background = "none";
    this.mouseTarget.style.backgroundImage = "radial-gradient(circle closest-corner at " + mouseX + "px " + mouseY + "px , rgba(0,0,0,0) 0%, rgba(0,0,0,1) 35%)";
  }

  clean(e) {
    // let mouseY = e.clientY
    // let mouseX = e.clientX
    // console.log(this.mouseTarget);

    //initially mouse X and mouse Y positions are 0
    // let mouseX = 0;
    // let mouseY = 0;
    // let isDragged = false;

    // //Events for touch and mouse
    // let events = {
    //   mouse: {
    //     down: "mousedown",
    //     move: "mousemove",
    //     up: "mouseup",
    //   },
    //   touch: {
    //     down: "touchstart",
    //     move: "touchmove",
    //     up: "touchend",
    //   },
    // };

    // let deviceType = "";

    // //Detech touch device
    // const isTouchDevice = () => {
    //   try {
    //     //We try to create TouchEvent. It would fail for desktops and throw error.
    //     document.createEvent("TouchEvent");
    //     deviceType = "touch";
    //     return true;
    //   } catch (e) {
    //     deviceType = "mouse";
    //     return false;
    //   }
    // };

    // //Get left and top of this.canvas
    // let rectLeft = this.canvas.getBoundingClientRect().left;
    // let rectTop = this.canvas.getBoundingClientRect().top;

    // //Exact x and y position of mouse/touch
    // const getXY = (e) => {
    //   mouseX = (!isTouchDevice() ? e.pageX : e.touches[0].pageX) - rectLeft;
    //   mouseY = (!isTouchDevice() ? e.pageY : e.touches[0].pageY) - rectTop;
    // };

    // isTouchDevice();
    // //Start Scratch
    // this.canvas.addEventListener(events[deviceType].down, (event) => {
    //   isDragged = true;
    //   //Get x and y position
    //   getXY(event);
    //   scratch(mouseX, mouseY);
    // });

    // this.canvas.addEventListener("mouseenter", (event) => {
    //   isDragged = true;
    //   //Get x and y position
    //   getXY(event);
    //   scratch(mouseX, mouseY);
    // });

    // //mousemove/touchmove
    // this.canvas.addEventListener(events[deviceType].move, (event) => {
    //   if (!isTouchDevice()) {
    //     event.preventDefault();
    //   }
    //   if (isDragged) {
    //     getXY(event);
    //     scratch(mouseX, mouseY);
    //   }
    // });

    // //stop drawing
    // this.canvas.addEventListener(events[deviceType].up, () => {
    //   isDragged = false;
    // });

    // //If mouse leaves the square
    // this.canvas.addEventListener("mouseleave", () => {
    //   isDragged = false;
    // });

    // const scratch = (x, y) => {
    //   this.machin.globalCompositeOperation = "destination-out";
    //   this.machin.beginPath();
    //   // Use a larger radius to cover more area
    //               // radius
    //                 // I
    //                 // V
    //   this.machin.arc(x, y, 50, 0, 2 * Math.PI);
    //   this.machin.fill();
    //   console.log("coucou")
    // };
  }

  getBroom(evt) {
    if (!this.enableBroom) { return; }
    document.querySelector('body').dataset.broom = 'enable'

    window.addEventListener('mousemove', (e) => {
      let mouseY = e.clientY
      let mouseX = e.clientX

      this.broomTarget.style.position = "fixed"
      this.broomTarget.style.top = `${mouseY}px`
      this.broomTarget.style.left = `${mouseX + 15}px`
    })
  }
}
