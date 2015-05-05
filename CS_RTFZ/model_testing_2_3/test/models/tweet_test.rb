require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  test "can detect brains" do
  	tweet = tweets(:chirag_1)
  	assert true, tweet.brains?
  end
end
