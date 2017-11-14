$(document).on('turbolinks:load',function(){
	console.log('work')
	$(".button-collapse").sideNav();
	$('select').material_select();

	var mySwiper = new Swiper ('.swiper-container', {
    // Optional parameters
    loop: true,
    initialSlide: 0,
    slidesPerView: 3,
    spaceBetween: 0,
    // Responsive breakpoints
    breakpoints: {
      // when window width is <= 320px
      320: {
        slidesPerView: 1,
        spaceBetween: 10
      },
      // when window width is <= 480px
      480: {
        slidesPerView: 1,
        spaceBetween: 20
      },
      // when window width is <= 640px
      640: {
        slidesPerView: 2,
        spaceBetween: 30
      }
    },
    // If we need pagination
    pagination: '.swiper-pagination',
    
    // Navigation arrows
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',
  })  

  //Change Cover Photo for Album
  $('.choose_cover_photo').on('click', function(){
    url = house_id
    console.log(url)
    photo_click = $(this).data("id");
    $.ajax({
      type: "PUT", 
      url: house_id,
      data: {
        house: {cover_photo_id: photo_click}
      },
      success: function(response){
        console.log(photo_click)
        Materialize.toast('Обложка обновлена', 4000)
      }
    })
  })

  $("#lightGallery").lightGallery({
    lang: {
      allPhotos: 'Все фотографии',
      download: true,
      counter: true
    }
  }); 
});