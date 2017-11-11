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

$('.box-controls i').click(function(event) {
  var value = parseInt($(this).siblings('input').val());
  if(this.classList.contains('add')) {
    value = Math.min(value + 1, 9);
  } else {
    value = Math.max(value - 1, 0);
  }
  $(this).siblings('input').val(value);


  var numberOfMeals = function() {
    var total = 0;
    $('.box-controls input').each( function(element) {
      total = total + parseInt(this.value);
    });
    return total;
  }

  if( $('body.get_started').length > 0 ) {
    var submitButtonText = "Subscribe Now";
  } else {
    var submitButtonText = "Update My Order";
  }

  if( numberOfMeals() >= 3 ) {
    $('input[type=submit].meal-update').removeAttr('disabled');
    $('input[type=submit].meal-update').attr("value",submitButtonText);
  } else {
    $('input[type=submit].meal-update').attr("disabled","disabled");
    $('input[type=submit].meal-update').attr("value","Choose " + (Math.max(3 - numberOfMeals(), 0)).toString() + " More");
  }

  $('.number_more_meals').text(3 - numberOfMeals());
});

$(document).ajaxSuccess(function( event, xhr, settings ) {
  if( settings.url.match(/\/api\/v1\/subscriptions\/\d*\/skip/) ) {
    var actionableDate = new Date(Date.parse(xhr.responseJSON.actionable_date));
    $('.actionable-date-update').text(subscriptionFormatDate(actionableDate));
  }
  if( settings.url.match(/\/api\/v1\/subscriptions\/\d*\/cancel/) ) {
    $('.manage-subscription').remove();
  }
  if( settings.url.match(/\/api\/v1\/subscriptions\/\d*$/)) {
    alert("You've updated your subscription.")
  }
});


