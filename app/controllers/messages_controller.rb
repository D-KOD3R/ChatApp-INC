class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @messages = current_user.recieved_messages
  end

  def new
  end
end
