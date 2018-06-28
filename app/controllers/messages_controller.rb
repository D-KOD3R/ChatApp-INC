class MessagesController < ApplicationController
  before_action :authenticate_user!


  def index
    #All the messages recieved by logged in user
    @messages = current_user.recieved_messages
  end

  def new
    #Building message
    @message = Message.new
  end

  def create
    message = current_user.sent_messages.build(message_params)
    if message.save
      #Success story
      redirect_and_flash "Message sent sucessfully to #{message.reciever.try(:name)}.", :notice, new_message_path
    else
      #Failure story
      redirect_and_flash message.errors.full_messages.first, :error, new_message_path
    end
  end

private
  def message_params
    # Sanatizing parameters
    params.require(:message).permit(:reciever_id, :content)
  end

end
