require 'rails_helper'

RSpec.describe "Enrollments", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/enrollments/create"
      expect(response).to have_http_status(:success)
    end
  end

end
