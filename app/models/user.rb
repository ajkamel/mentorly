class User < ActiveRecord::Base

	has_secure_password
	has_and_belongs_to_many(:groups)
	has_many :group_messages, through: :groups

	validates :email, presence: true, uniqueness: true
	validates :password, length: {minimum: 5}
	validates :name, presence: true
	validates :admin, inclusion: { in: [true, false]}
	validates :address, presence: true
	validates :picture_url, presence: true
	validates :bio, presence: true
	validates :birthdate, presence: true


	def self.find_mentors

		@mentors = []
		all_users = User.all
		all_users.each do |user|
			unless user.mentor == false
			   @mentors << user
			end
		end
		return @mentors
	end

	#method to find all metees in the user table
	def self.find_mentees

		@mentees = []
		all_users = User.all
		all_users.each do |user|
			unless user.mentor == true  && user.admin == true
			  @mentees << user
			end
		end
		return @mentees
	end

	#method to find te mentor
	def mentor?

		unless self.mentor == false
			return self
		end
	end

	def mentee?

		unless self.mentor == true && self.admin == true
			return self
		end
	end
end