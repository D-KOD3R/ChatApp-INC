class Message < ApplicationRecord

#Validations
  validates :content, presence: true

#Associations
  belongs_to :reciever, class_name: "User"
  belongs_to :sender, class_name: "User"

end
