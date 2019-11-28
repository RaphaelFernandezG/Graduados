$(document).ready(function () {
    $('.tabs').tabs();
    $('.datepicker').datepicker({format: 'dd/m/yyyy'});
    $('input#input_text, textarea#descri').characterCounter();
    $('select').formSelect();
    $('.slider').slider();
    $('.carousel').carousel({ padding: 120, indicators: true, shift:120,  numVisible: 3, duration: 200});
    $('.sidenav').sidenav();
    $('.tooltipped').tooltip();
    $('.pushpin-demo-nav').each(function () {
        var $this = $(this);
        var $target = $('#' + $(this).attr('data-target'));
        $this.pushpin({
            top: $target.offset().top
        });
    });
    $(".dropdown-trigger").dropdown({ coverTrigger: false });
    $(".dropdown-trigger").dropdown({ hover: true });
});

