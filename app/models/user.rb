class User < ActiveRecord::Base



	has_secure_password
	acts_as_messageable

  	# attr_accessible :email, :password, :password_confirmation, :remember_me

		
	validates :email, presence: true, uniqueness: true
	validates :password, length: {minimum: 5}
	validates :name, presence: true
	validates :admin, inclusion: { in: [true, false]}

	# def name
 #  		return "You should add method :name in your Messageable model"
	# end


end