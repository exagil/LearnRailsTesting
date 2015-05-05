require 'test_helper'

class ZombieTest < ActiveSupport::TestCase
  test "invalid without a name" do
  	z = Zombie.new
  	assert !z.valid?, "Name is not being validated"
  end

  test "valid with all attributes" do
  	z = Zombie.new(name: "Chirag Aggarwal", graveyard: 'SuperYard')
  	z = zombies(:chirag)
  	assert z.valid?, "Zombie was not valid"
  end

  test "invalid name gives error message" do
  	z = zombies(:chirag)
		z.name = nil
  	z.valid?
  	assert_match /can't be blank/, z.errors[:name].join, "Presence error not found on zombie"
  end

  test "can generate avatar url" do
  	z = zombies(:chirag)
  	assert "http://zombitar.com/#{z.id}.jpg", z.avatar_url
  end

  test "should respond to tweets" do
  	z = zombies(:chirag)
  	assert_respond_to z, :tweets, "Is not responding to tweets"
  end

  test "should only contain tweets that belong to zombie" do
  	z = zombies(:chirag)
  	assert_equal true, z.tweets.all? {|t| t.zombie == z}
  end
end
