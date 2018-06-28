class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = ['user', 'trainer']

#Validations
  validates :role, inclusion: { in: ROLES }

#Associations
  has_many :recieved_messages, class_name: "Message", foreign_key: "reciever_id", dependent: :destroy
  has_many :sent_messages, class_name: "Message", foreign_key: "sender_id", dependent: :destroy
#Scopes
  scope :messagable_users, ->(user_id) { where.not(id: user_id) }

end
