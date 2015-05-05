require 'test_helper'

class ZombieTest < ActiveSupport::TestCase
  def setup
    @z = zombies(:chirag)
  end

  test "invalid without a name" do
  	@z = Zombie.new
  	assert !@z.valid?, "Name is not being validated"
  end

  test "valid with all attributes" do
  	@z = Zombie.new(name: "Chirag Aggarwal", graveyard: 'SuperYard')
  	assert @z.valid?, "Zombie was not valid"
  end

  test "invalid name gives error message" do
		@z.name = nil
  	@z.valid?
    assert_presence(@z, :name)
  	# assert_match /can't be blank/, @z.errors[:name].join, "Presence error not found on zombie name"
  end

  test "invalid graveyard gives error message" do
    @z.graveyard = nil
    @z.valid?
    assert_presence(@z, :graveyard)
    # assert_match /can't be blank/, @z.errors[:graveyard].join, "Presence error not found on zombie graveyard"
  end

  test "can generate avatar url" do
  	assert "http://zombitar.com/#{@z.id}.jpg", @z.avatar_url
  end

  test "should respond to tweets" do
  	assert_respond_to @z, :tweets, "Is not responding to tweets"
  end

  test "should only contain tweets that belong to zombie" do
  	assert_equal true, @z.tweets.all? {|t| t.zombie == @z}
  end
end
