class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = ['user', 'trainer']

#Validations
  validates :role, inclusion: { in: ROLES }

#Associations
  has_many :recieved_messages, class_name: "Message", foreign_key: "reciever_id"
  has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"

end
