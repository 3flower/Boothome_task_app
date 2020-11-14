// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require turbolinks
//= require activestorage
//= require bootstrap-sprockets
//= require_tree .

$(function(){

  // indexタグ検索
  $('#not-btn').click(function(){
    $('#task-not-index').fadeIn();
    $('#task-commencement-index').fadeOut();
    $('#task-completion-index').fadeOut();
    $('#task-all-index').fadeOut();
  });
  $('#commencement-btn').click(function(){
    $('#task-not-index').fadeOut();
    $('#task-commencement-index').fadeIn();
    $('#task-completion-index').fadeOut();
    $('#task-all-index').fadeOut();
  });
  $('#completion-btn').click(function(){
    $('#task-not-index').fadeOut();
    $('#task-commencement-index').fadeOut();
    $('#task-completion-index').fadeIn();
    $('#task-all-index').fadeOut();
  });

  // バリデーション(disabled)
    // new
    // $('#task-new-submit').attr('disabled', 'disabled');
    // $('#new-title').bind('keydown keyup keypress change', function() {
    //   if ( $(this).val().length > 0 ) {
    //     $('#task-new-submit').removeAttr('disabled');
    //   } else {
    //     $('#task-new-submit').attr('disabled', 'disabled');
    //   }
    // });
    // if ($('#new-title').val().length > 0) {
    //   $('#task-new-submit').attr('disabled');
    // } else {
    //   $('#task-new-submit').removeAttr('disabled');
    // }
    // var a = $('#new-title').val().length
    // console.log(a)
});
