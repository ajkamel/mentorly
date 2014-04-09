class GroupMessage < ActiveRecord::Base

	belongs_to :group

	validates :title, presence: true, uniqueness: true

end