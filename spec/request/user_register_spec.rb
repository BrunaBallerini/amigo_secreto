require 'rails_helper'

RSpec.describe "New user", type: :request do
  describe "user registers new" do
    it "success" do
      post "/users", params: {"user[email]": "padawan@email.com", "user[password]": "58412369", "user[password_confirmation]": "58412369"}
      expect(response).to have_http_status(:see_other)
    end
    it "failure" do
      post "/users"
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end
