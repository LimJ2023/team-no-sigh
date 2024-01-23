//swiper
var swiper = new Swiper(".popular-content", {
    slidesPerView: 1,
    spaceBetween: 10,
    autoplay: {
      delay: 5500,
      disableOnInteraction: false,
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
    breakpoints:{
        280:{
            slidesPerView: 1,
            spaceBetween: 10,
        },
        320:{
            slidesPerView: 2,
            spaceBetween: 10,
        },
        510:{
            slidesPerView: 2,
            spaceBetween: 10,
        },
        758:{
            slidesPerView: 3,
            spaceBetween: 15,
        },
        900:{
            slidesPerView: 4,
            spaceBetween: 20,
        },
    },
  });
  //show video
  let playButton = document.querySelector('.play-movie');
  let video = document.querySelector('.video-container');
  let myvideo = document.querySelector('#myvideo');
  let closebtn = document.querySelector('.close-video');

  playButton.onclick = () =>{
    video.classList.add("show-video");
    //auto play when click on btn
    myvideo.play();
  };
  closebtn.onclick = () =>{
    video.classList.remove("show-video");
    //pause on close button
    myvideo.pause();
  };