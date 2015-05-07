require 'rails_helper'

RSpec.describe "zombies/new", type: :view do
  before(:each) do
    assign(:zombie, Zombie.new(
      :name => "MyString",
      :graveyard => "MyString"
    ))
  end

  it "renders new zombie form" do
    render

    assert_select "form[action=?][method=?]", zombies_path, "post" do

      assert_select "input#zombie_name[name=?]", "zombie[name]"

      assert_select "input#zombie_graveyard[name=?]", "zombie[graveyard]"
    end
  end
end
