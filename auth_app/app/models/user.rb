class User < ActiveRecord::Base
	before_save :ensure_confirmation_token


	attr_accessor :name, :email, :password, :password_confirmation, :remember_me
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :token_authentication



  def skip_confirmation!
  	self.confirmed_at = Time.now
  	
  end
end
