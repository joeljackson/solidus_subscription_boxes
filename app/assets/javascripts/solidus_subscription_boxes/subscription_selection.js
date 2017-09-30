// Meal Selection Page
function subscriptionFormatDate(date) {
  var monthNames = [
    "January", "February", "March",
    "April", "May", "June", "July",
    "August", "September", "October",
    "November", "December"
  ];

  var day = date.getDate();
  var monthIndex = date.getMonth();
  
  return monthNames[monthIndex] + ' ' + day;
}


$('.meal-selection').click( function(event) {
  if( $('body.get_started').length > 0 ) {
    var submitButtonText = "Subscribe Now";
  } else {
    var submitButtonText = "Update My Order";
  }

  if( $('.meal-selection input:checked').length > 3 ) {
    alert("Please only pick 3 meals");
    event.target.checked = false;
    event.preventDefault();
  }

  if( $('.meal-selection input:checked').length == 3 ) {
    $('input[type=submit].meal-update').removeAttr('disabled');
    $('input[type=submit].meal-update').attr("value",submitButtonText);
  } else {
    $('input[type=submit].meal-update').attr("disabled","disabled");
    $('input[type=submit].meal-update').attr("value","Choose " + (3 - $('.meal-selection input:checked').length).toString() + " More");
  }

  $('.number_more_meals').text(3 - $('.meal-selection input:checked').length);
});

$(document).ajaxSuccess(function( event, xhr, settings ) {
  if( settings.url.match(/\/api\/v1\/subscriptions\/\d*\/skip/) ) {
    var actionableDate = new Date(Date.parse(xhr.responseJSON.actionable_date));
    $('.actionable-date-update').text(subscriptionFormatDate(actionableDate));
  }
  if( settings.url.match(/\/api\/v1\/subscriptions\/\d*\/cancel/) ) {
    $('.manage-subscription').remove();
  }
});


