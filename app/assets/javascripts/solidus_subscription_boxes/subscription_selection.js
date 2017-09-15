// Meal Selection Page
$('.meal-selection').click( function(event) {
  if( $('.meal-selection input:checked').length > 3) {
    alert("Please only pick 3 feals");
    event.target.checked = false;
    event.preventDefault();
  }

  if( $('.meal-selection input:checked').length == 3) {
    $('input[type=submit]').removeAttr('disabled');
    $('input[type=submit]').attr("value","Subscribe Now");
  } else {
    $('input[type=submit]').attr("disabled","disabled");
    $('input[type=submit]').attr("value","Choose " + (3 - $('.meal-selection input:checked').length).toString() + " More");
  }

  $('.number_more_meals').text(3 - $('.meal-selection input:checked').length);
});
