class SubscriberMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscriber_mailer.welcome.subject
  #
  def success_to_subscribe(subscriber)
    @subscriber = subscriber

    mail to: @subscriber.email, subject: "Thank you #{@subscriber.name.capitalize} for your subscription! Yoda is coming soon"
  end
end
