# Preview all emails at http://localhost:3000/rails/mailers/subscriber_mailer
class SubscriberMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/subscriber_mailer/success_to_subscribe
  def success_to_subscribe
    subscriber = Subscriber.last
    SubscriberMailer.success_to_subscribe(subscriber)
  end
end
