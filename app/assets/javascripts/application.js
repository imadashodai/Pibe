// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .


function update_player1(form_id) {
  var element = "#formation_player1_id"
  $.ajax({
        url: "/formations/upd_player1", 
        type: "POST",
        data: { 'status': +$(element).val(), 'form_id': +form_id　}
   })
}

function update_player2(form_id) {
  var element = "#formation_player2_id"
  $.ajax({
        url: "/formations/upd_player2", 
        type: "POST",
        data: { 'status': +$(element).val(), 'form_id': +form_id　}
   })
}

function update_player3(form_id) {
  var element = "#formation_player3_id"
  $.ajax({
        url: "/formations/upd_player3", 
        type: "POST",
        data: { 'status': +$(element).val(), 'form_id': +form_id　}
   })
}

function update_player4(form_id) {
  var element = "#formation_player4_id"
  $.ajax({
        url: "/formations/upd_player4", 
        type: "POST",
        data: { 'status': +$(element).val(), 'form_id': +form_id　}
   })
}

function update_player5(form_id) {
  var element = "#formation_player5_id"
  $.ajax({
        url: "/formations/upd_player5", 
        type: "POST",
        data: { 'status': +$(element).val(), 'form_id': +form_id　}
   })
}

function update_player6(form_id) {
  var element = "#formation_player6_id"
  $.ajax({
        url: "/formations/upd_player6", 
        type: "POST",
        data: { 'status': +$(element).val(), 'form_id': +form_id　}
   })
}

function update_player7(form_id) {
  var element = "#formation_player7_id"
  $.ajax({
        url: "/formations/upd_player7", 
        type: "POST",
        data: { 'status': +$(element).val(), 'form_id': +form_id　}
   })
}

function update_player8(form_id) {
  var element = "#formation_player8_id"
  $.ajax({
        url: "/formations/upd_player8", 
        type: "POST",
        data: { 'status': +$(element).val(), 'form_id': +form_id　}
   })
}

function update_player9(form_id) {
  var element = "#formation_player9_id"
  $.ajax({
        url: "/formations/upd_player9", 
        type: "POST",
        data: { 'status': +$(element).val(), 'form_id': +form_id　}
   })
}

function update_player10(form_id) {
  var element = "#formation_player10_id"
  $.ajax({
        url: "/formations/upd_player10", 
        type: "POST",
        data: { 'status': +$(element).val(), 'form_id': +form_id　}
   })
}

function update_player11(form_id) {
  var element = "#formation_player11_id"
  $.ajax({
        url: "/formations/upd_player11", 
        type: "POST",
        data: { 'status': +$(element).val(), 'form_id': +form_id　}
   })
}