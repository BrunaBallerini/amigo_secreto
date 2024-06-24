require 'rails_helper'

RSpec.describe "New car:", type: :request do
  describe "Creating a new car" do
    it "with success" do
      post "/cars", params: {
        "name": "Brasilia",
        "model": "VW",
        "year": "1965"
    }
      expect(response).to have_http_status(:ok)
    end
  end
end
