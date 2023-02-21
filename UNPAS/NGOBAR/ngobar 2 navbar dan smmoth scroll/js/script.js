// // event saat link
$(".page-scroll").on("click", function (e) {
  console.log("Okee");

  // 1. ambil href
  var tujuan = $(this).attr("href");
  // console.log(tujuan);

  // 2. tangkap element
  var elemenTujuan = $(tujuan);
  // console.log(elementTujuan);

  // 3.mengetahui jarak element dari atas
  // console.log(elementTujuan.offset().top);

  // 4. jarak atas pada html
  // console.log($("html").scrollTop());

  // 5. set Scroll Navbar
  // $("html").scrollTop(elementTujuan.offset().top - 50);

  //  6.  membuat animasi
  // $("html , body").animate(
  //   {
  //     scrollTop: elementTujuan.offset().top - 50,
  //   },
  //   1000,
  //   "easeInSine" //linear,dll
  // );

  // rekomendsdasi
  $("html , body").animate(
    {
      scrollTop: elemenTujuan.offset().top - 50,
    },
    1000,
    "easeInOutExpo"
  );

  e.preventDefault();
});

// uda pasti benar dibawah ini ----------------------------------------------
// $(".page-scroll").on("click", function (e) {
//   var tujuan = $(this).attr("href");

//   var elemenTujuan = $(tujuan);

//   $("html , body").animate({
//     scrollTop: elemenTujuan.offset().top - 50,
//   });

//   e.preventDefault();
// });
