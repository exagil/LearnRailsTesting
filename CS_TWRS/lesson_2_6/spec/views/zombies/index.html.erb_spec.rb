require 'rails_helper'

RSpec.describe "zombies/index", type: :view do
  before(:each) do
    assign(:zombies, [
      Zombie.create!(
        :name => "Name",
        :graveyard => "Graveyard"
      ),
      Zombie.create!(
        :name => "Name",
        :graveyard => "Graveyard"
      )
    ])
  end

  it "renders a list of zombies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Graveyard".to_s, :count => 2
  end
end
