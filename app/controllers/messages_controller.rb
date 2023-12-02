class MessagesController < ApplicationController
  # GET /messages
  def random
    greeting = Message.order('RANDOM()').first
    render json: { greeting: greeting.content }
  end
end
