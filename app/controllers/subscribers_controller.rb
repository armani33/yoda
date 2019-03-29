class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      cookies[:saved_subscriber] = true
      redirect_to subscribers_path, notice: 'Thanks for your subscribtion! See you soon!'
    else
      redirect_to subscribers_path, notice: 'Failed to suscribe, refresh and try again.'
    end
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:name, :email)
  end
end
