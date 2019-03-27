class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      cookies[:saved_subscriber] = true
      redirect_to subscribers_index_path, notice: 'Saved Successfully!'
    else
      redirect_to subscribers_index_path, notice: 'Failed to save'
    end
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:name, :email)
  end
end
