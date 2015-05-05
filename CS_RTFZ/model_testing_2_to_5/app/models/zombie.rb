class Zombie < ActiveRecord::Base
	has_many :tweets
	has_one :weapon

	validates :name, :graveyard, presence: true

	def avatar_url
		"http://zombitar.com/#{id}.jpg"
	end
end