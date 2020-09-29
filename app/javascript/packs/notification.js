$(document).ready(function(){
  $('input[placeholder]').placeholderLabel({
    placeholderColor: "#898989",
    labelColor: "black",
    labelSize: "14px",
    fontStyle: "normal",
    useBorderColor: true,
    inInput: true,
    timeMove: 200
  });

  $("#open_notification").click(function() {
      $("#notificationContainer").fadeToggle(300);
      $("#notification_count").fadeOut("fast");
      $('.count-li').hide();
      return false;
  });

  $(document).click(function() {
      $("#notificationContainer").hide();
  });


  $("#notificationContainer").click(function() {
      return false;
  });
});
