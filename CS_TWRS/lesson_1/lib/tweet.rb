class Tweet
	attr_accessor :status

	def initialize(options={})
		self.status = options[:status]
	end

	def public?
    self.status && self.status[0] != "@"                                 
  end
end