class User < ActiveRecord::Base
	has_secure_password

	validates :email, presence: true, uniqueness: true
	validates :password, confirmation: true
	validates :password, presence: true, on: :create
	validates :password_confirmation, presence: true
	
end
