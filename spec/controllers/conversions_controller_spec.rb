require 'rails_helper'

RSpec.describe ConversionsController, type: :controller do
  context "GET /convert" do
    it "responds with 400 if text param is missing" do
      params = {}
      get :convert, params
      expect(response).to have_http_status(:bad_request)
    end
  end
end
