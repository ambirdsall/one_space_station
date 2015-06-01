require 'rails_helper'

RSpec.describe ConversionsController, type: :controller do
  describe "GET /convert" do
    context "text parameter missing" do
      it "responds with bad request status" do
        params = {}
        get :convert, params
        expect(response).to have_http_status(:bad_request)
      end
    end

    context "text parameter present" do
      before :each do
        params = {text: "A string with normal. And double.  Spacing.  "}
        get :convert, params
      end

      it "returns JSON" do
        # pending looking up matchers for JSON responses.
      end
    end
  end
end
