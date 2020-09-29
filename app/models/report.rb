class Report < ApplicationRecord
  after_create_commit {create_notify}

  private

  def create_notify
    Notification.create content: description
  end
end
