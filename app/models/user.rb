class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :first_name, :last_name, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :buttons
  has_many :scaffolds

  def full_name
  	first_name + " " + last_name
  	
  end
end
