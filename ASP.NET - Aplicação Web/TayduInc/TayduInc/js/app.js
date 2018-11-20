/* EFEITO DE SCROLL */

$('.header-menu a').click(function(e) {
    e.preventDefault;
    var id = $(this).attr('href');
        targetOffset = $(id).offset().top;

    $('html, body').animate({
        scrollTop: targetOffset - 80
    }, 500);
})

$('.navbar-style li a').click(function(e) {
    e.preventDefault;
    var id = $(this).attr('href');
        targetOffset = $(id).offset().top;

    $('html, body').animate({
        scrollTop: targetOffset - 80
    }, 500);
})

$('.footer-links a').click(function(e) {
    e.preventDefault;
    var id = $(this).attr('href');
        targetOffset = $(id).offset().top;

    $('html, body').animate({
        scrollTop: targetOffset - 80
    }, 500);
})


/*
INDEX
*/

$('.introducao-header_link a').click(function(e) {
    e.preventDefault;
    var id = $(this).attr('href');
        targetOffset = $(id).offset().top;

    $('html, body').animate({
        scrollTop: targetOffset - 80
    }, 500);
})


/*
ABOUT US
*/

$('.list-scroll ul li a').click(function(e) {
    e.preventDefault;
    var id = $(this).attr('href');
        targetOffset = $(id).offset().top;

    $('html, body').animate({
        scrollTop: targetOffset - 80
    }, 500);
})



/* ADICIONAR POSIÇÃO FIXA NO MENU */

$(window).scroll(function() {
    if($(this).scrollTop() > 600) {
        $('.header-menu').addClass("fixar");
    } else {
        $('.header-menu').removeClass("fixar");
    }
})


$(window).scroll(function() {
    if($(this).scrollTop() > 600) {
        $('.header-menu-mobile').addClass("fixar");
    } else {
        $('.header-menu-mobile').removeClass("fixar");
    }
})



/* BOTÃO DE GO TOP */

$(function(){
 
    $(document).on( 'scroll', function(){ 
        if ($(window).scrollTop() > 600) {
            $('.smoothscroll-top').addClass('show');
        } else {
            $('.smoothscroll-top').removeClass('show');
        }
    });
 
    $('.smoothscroll-top').on('click', scrollToTop);
});
 
function scrollToTop() {
    verticalOffset = typeof(verticalOffset) != 'undefined' ? verticalOffset : 0;
    element = $('body');
    offset = element.offset();
    offsetTop = offset.top;
    $('html, body').animate({scrollTop: offsetTop}, 600, 'linear').animate({scrollTop:25},200).animate({scrollTop:0},150) .animate({scrollTop:0},50);
}




/* DASHBOARD */


// Entrada e Saída dos Gráficos

$(document).ready(function(){
    $(".link-ddl").click(function(){
      $(".ddl").delay(50).fadeToggle();
    });
});


$('[name="usoRAM"]').change(function() {
    $('.toggle-1').toggle(200);
});

$('[name="usoCPU"]').change(function() {
    $('.toggle-2').toggle(200);
});

$('[name="atividadeHD"]').change(function() {
   $('.toggle-3').toggle(200);
});

$('[name="usoHD"]').change(function() {
    $('.toggle-4').toggle(200);
});



// Botão para Trocar entre os Gráficos

$(document).ready(function(){
    $(".btn1").click(function(){
        $("#graficos-1").hide() && $("#graficos-2").show();
    });
});

$(document).ready(function(){
    $(".btn2").click(function(){
        $("#graficos-2").hide() && $("#graficos-1").show();
    });
});


// Abas do Analytics

$(".aba").hover(
    function(){$(this).addClass("ativa")},
    function(){$(this).removeClass("ativa")}
);  


$(document).ready(function(){
    $("#content div:nth-child(1)").show();
    $(".abas li:first div").addClass("selected");       
    $(".aba").click(function(){
        $(".aba").removeClass("selected");
        $(this).addClass("selected");
        var indice = $(this).parent().index();
        indice++;
        $(".conteudo").hide();
        $(".conteudo:nth-child("+indice+")").show();
    });
    
    $(".aba").hover(
        function(){$(this).addClass("ativa")},
        function(){$(this).removeClass("ativa")}
    );              
});


/* MODAL DASHBOARD */

$(document).ready(function(){

    $('#showPassword').on('click', function(){
       
      var passwordField = $('#password');
   
      var passwordFieldType = passwordField.attr('type');

      if(passwordFieldType == 'password')
      {
          passwordField.attr('type', 'text');
          $(this).val('Esconder');
      } else {
          passwordField.attr('type', 'password');
          $(this).val('Revelar');
      }
    });
  });