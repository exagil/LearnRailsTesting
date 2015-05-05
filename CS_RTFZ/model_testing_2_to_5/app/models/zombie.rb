class Zombie < ActiveRecord::Base
	has_many :tweets
	has_one :weapon

	validates :name, :graveyard, presence: true

	def avatar_url
		"http://zombitar.com/#{id}.jpg"
	end

	def decapitate
		weapon.slice(self, :head)
		self.status("dead again")
	end
end