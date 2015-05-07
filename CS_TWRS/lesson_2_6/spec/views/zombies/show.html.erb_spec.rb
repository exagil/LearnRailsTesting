require 'rails_helper'

RSpec.describe "zombies/show", type: :view do
  before(:each) do
    @zombie = assign(:zombie, Zombie.create!(
      :name => "Name",
      :graveyard => "Graveyard"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Graveyard/)
  end
end
