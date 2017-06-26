module V1
  class User < ActiveRecord::Base
    has_many :contacts

    # Include default devise modules.
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :omniauthable#, :confirmable
    include DeviseTokenAuth::Concerns::User
  end
end
