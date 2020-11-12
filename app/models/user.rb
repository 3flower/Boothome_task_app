class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :trackable, :rememberable, :validatable, :omniauthable,
         :authentication_keys => [:login], invite_for: 24.hours

  has_many :tasks, dependent: :destroy
end
