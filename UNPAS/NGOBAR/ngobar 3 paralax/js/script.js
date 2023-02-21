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
  $("html , body").animate(
    {
      scrollTop: elemenTujuan.offset().top - 50,
    },
    1000,
    "easeInOutExpo"
  );

  e.preventDefault();
});

// paralax
// about
$(window).on("load", function () {
  $(".pKiri").addClass("pMuncul");
  $(".pKanan").addClass("pMuncul");
});

$(window).scroll(function () {
  var wScroll = $(this).scrollTop();

  // console.log(wScroll);

  $(".jumbotron img").css({
    transform: "translate(0px," + wScroll / 4 + "%)",
  });
  $(".jumbotron h1").css({
    transform: "translate(0px," + wScroll / 2 + "%)",
  });

  $(".jumbotron p").css({
    transform: "translate(0px," + wScroll / 1.2 + "%)",
  });

  // portofolio - 1
  // if (wScroll > $(".portofolio").offset().top - 200) {
  //   $(".portofolio .thumbnail").addClass("muncul");
  // }

  // portofolio - 2
  if (wScroll > $(".portofolio").offset().top - 200) {
    $(".portofolio .thumbnail").each(function (index) {
      setTimeout(function () {
        // console.log("ok");
        $(".portofolio .thumbnail").eq(index).addClass("muncul");
        //method eq : element yang ke berapa dalam 6 tadi, supaya bisa satu satu : jika tidak dipakai semua akan bersama sama lagi
        // mainkan index didalam timer
      }, 300 * (index + 1));
    });
  }
});
