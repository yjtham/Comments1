class Status < ActiveRecord::Base
	# Added to use gem Commontator
	acts_as_commontable


	belongs_to :user
	validates :content, presence: true,
						length: {minimum: 2}
	validates :user_id, presence: true
end
