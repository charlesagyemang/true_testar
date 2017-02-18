// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

  // var user_url = "";
  // var admin_url = "";

$(document).ready(function () {

  // $.ajax({
  //       url: 'https://stormy-refuge-52415.herokuapp.com/urls',
  //       dataType: 'json',
  //       cache: false,
  //       success: function (data) {
  //       user_url = data[data.length - 1]['user'];
  //       admin_url = data[data.length - 1]['admin'];
  //         $("#json").attr("target", "blank")
  //         $("#json").attr("href", user_url);
  //         $("#yep").append("<br />" + user_url)
  //       },
  //       error: function(xhr, status, err) {
  //         $("#json").hide();
  //         // $("#yep").append(err);
  //      }
  // });


  // $('#btn_create_a_test').click(function(){
  //   window.location.href = 'http://localhost:8080/#/builder';
  //   return false;
  // });

  // $('#btn_view_test_progress').click(function(){
  //   //Get whith Authentication
  //   var admin_token = admin_url.substr(-32);
  //   var formId = admin_token.substr(0,16);
  //   var original_get_url = "https://formbuildertry.herokuapp.com/v1/buckets/formbuilder/collections/" + formId + "/records"
  //   $.ajax({
  //         url: original_get_url,
  //         dataType: 'json',
  //         cache: false,
  //         beforeSend: function (xhr) {
  //           xhr.setRequestHeader ("Authorization", "Basic " + btoa("form" + ":" + admin_token));
  //         },
  //         success: function (data) {
  //           console.log(data['data'])
  //         },
  //         error: function(xhr, status, err) {
  //           console.log(err)
  //        }
  //      });
  //     //  window.location.href = admin_url;
  //     //  return false;
  // });


  // $("#company_signup").click(function() {
  //
  //   var company_name              = $("#company_name").val();
  //   var company_location          = $("#company_location").val();
  //   var company_type              = $("#company_type").val();
  //   var company_age               = $("#company_age").val();
  //   var password                  = $("#company_password").val();
  //   var company_repeat_password   = $("#company_repeat_type").val();
  //   var company_bio               = $("#company_bio").val();
  //   var company_email             = $("#company_email").val();
  //
  //     $.ajax({
  //           type: 'POST',
  //           dataType: "json",
  //           contentType: "application/json",
  //           url: "https://stormy-refuge-52415.herokuapp.com/companies",
  //           data: JSON.stringify({
  //               "company_name"    :    company_name,
  //               "company_location":    company_location,
  //               "company_type"    :    company_type,
  //               "company_age"     :    company_age,
  //               "password"        :    password,
  //               "company_bio"     :    company_bio,
  //               "company_email"   :    company_email
  //           }),
  //           success: function (data) {
  //             alert("success")
  //             window.location.href = 'http://localhost:3000/compdash/index';
  //             return false;
  //           },
  //           error: function(e) {
  //           	console.log(e)
  //             window.location.href = 'http://localhost:3000/register_as_company/login';
  //             return false;
  //           }
  //       });
  // })
  //
  // $('#btn_download_test_results').click(function (){
  //   var password = "";
  //   $.ajax({
  //         url: 'https://stormy-refuge-52415.herokuapp.com/companies',
  //         dataType: 'json',
  //         cache: false,
  //         success: function (data) {
  //         console.log(data[0]['password_digest'])
  //
  //         },
  //         error: function(xhr, status, err) {
  //           console.log(err)
  //       }
  //   });
  //
  //
  // })
  //
  //
  // $('#btn_view_test_progress').click(function(){
  //   //Get whith Authentication
  //   var username = "EO946931";
  //   var password = "jePense2!!";
  //   var original_get_url = "https://api.pinnaclesports.com/v2/sports"
  //   $.ajax({
  //         url: original_get_url,
  //         dataType: 'json',
  //         cache: false,
  //         beforeSend: function (xhr) {
  //           xhr.setRequestHeader ("Authorization", "Basic " + btoa(username + ":" + password));
  //         },
  //         success: function (data) {
  //           console.log(data['data'])
  //         },
  //         error: function(xhr, status, err) {
  //           console.log(err)
  //        }
  //      });
  //      //  window.location.href = admin_url;
  //      //  return false;
  //
  // });



})
