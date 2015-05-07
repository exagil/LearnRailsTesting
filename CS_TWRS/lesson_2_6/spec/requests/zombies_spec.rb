require 'rails_helper'

RSpec.describe "Zombies", type: :request do
  describe "GET /zombies" do
    it "works! (now write some real specs)" do
      get zombies_path
      expect(response).to have_http_status(200)
    end
  end
end
