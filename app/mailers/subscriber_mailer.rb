class SubscriberMailer < ApplicationMailer
  def success_to_subscribe(subscriber)
    @subscriber = subscriber

    mail to: @subscriber.email, subject: "Thank you #{@subscriber.name.capitalize } for your subscription! Yoda is coming soon"
  end
end
