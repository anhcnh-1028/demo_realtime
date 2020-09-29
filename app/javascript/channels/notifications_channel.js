import consumer from "./consumer"

consumer.subscriptions.create("NotificationsChannel", {
  connected() {},

  disconnected() {},

  received(data) {
    $('#notificationList').prepend(data.notification);
    $('#open_notification').html(data.counter);
  }
});
