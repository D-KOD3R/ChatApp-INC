module MessagesHelper
  def messagables
    # all other users except the current user
    User.messagable_users(current_user).pluck(:name, :id)
  end

  def created_time(message)
    # message created at
    message.created_at
  end
end
