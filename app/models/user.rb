class User < ActiveRecord::Base



	has_secure_password
	acts_as_messageable
	has_and_belongs_to_many(:groups)



		
	validates :email, presence: true, uniqueness: true
	validates :password, length: {minimum: 5}
	validates :name, presence: true
	validates :admin, inclusion: { in: [true, false]}

	
	def mailboxer_email(object)

  		return user.email

	end

end