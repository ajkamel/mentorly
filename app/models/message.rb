class Message < ActiveRecord::Base


	has_secure_password
	acts_as_messageable



end