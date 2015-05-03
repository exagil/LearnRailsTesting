class String
  def is_number?
    self =~ (/\d+/)
  end

  def humanize
    self.downcase.capitalize!
    if self.match(/zombie/)
      raise RuntimeError
    else
      return self.downcase.capitalize
    end
  end
end
