class Notification < ApplicationRecord
  after_create_commit {push_notify(Notification.count, self)}

  private

  def push_notify counter, notification
    ActionCable.server.broadcast 'notification_channel',
      counter: render_counter(counter),
      notification: render_notification(notification)
  end

  private

  def render_counter counter
    ApplicationController.renderer
                         .render(partial: 'notifications/counter',
                                 locals: { counter: counter })
  end

  def render_notification notification
    ApplicationController.renderer
                         .render(partial: 'notifications/notification',
                                 locals: { notification: notification })
  end
end
