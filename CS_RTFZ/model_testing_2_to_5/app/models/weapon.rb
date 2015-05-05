class Weapon < ActiveRecord::Base
  belongs_to :zombie

  def slice(*args)
  	return nil
  end
end