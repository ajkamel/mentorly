class GroupMessage < ActiveRecord::Base

	belongs_to :group

	validates :title, presence: true, uniqueness: true
	validates :message, presence: true
	validates :img_url, presence: true

end