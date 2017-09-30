// Meal Selection Page
$('.meal-selection').click( function(event) {
  if( $('body.get_started').length > 0 ) {
    var submitButtonText = "Subscribe Now";
  } else {
    var submitButtonText = "Update My Order";
  }

  if( $('.meal-selection input:checked').length > 3) {
    alert("Please only pick 3 meals");
    event.target.checked = false;
    event.preventDefault();
  }

  if( $('.meal-selection input:checked').length == 3) {
    $('input[type=submit].meal-update').removeAttr('disabled');
    $('input[type=submit].meal-update').attr("value",submitButtonText);
  } else {
    $('input[type=submit].meal-update').attr("disabled","disabled");
    $('input[type=submit].meal-update').attr("value","Choose " + (3 - $('.meal-selection input:checked').length).toString() + " More");
  }

  $('.number_more_meals').text(3 - $('.meal-selection input:checked').length);
});
