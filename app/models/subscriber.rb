class Subscriber < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :name, length: { minimum: 2 }
  validates :email, length: { maximum: 200 }

  after_create :send_subscription_email

  private

  def send_subscription_email
    SubscriberMailer.success_to_subscribe(self).deliver_now
  end
end
