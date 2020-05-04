class User < ApplicationRecord

  belongs_to :city
  has_many :gossips
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
  has_many :comments
  has_many :likes

  # validates :first_name, :last_name, :description, :email, :age, presence: true
  # validates :email,
  #   uniqueness: true,
  #   format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }

end
