require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "should render register page" do
      get "/"
      expect(response).to have_http_status(200)
    end
  end
end
