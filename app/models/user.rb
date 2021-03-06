class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :address
  has_many :user_evalutions
  has_many :credits
  has_many :SNS_authentications
  has_many :favorites
  has_many :comments

  # has_many :evaluations, througth: user_evaluations

end
