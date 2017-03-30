require "rails_helper"

RSpec.describe Api::V1::EventsController, type: :controller do
  describe "GET #index" do
    let(:event1) { FactoryGirl.create(:event) }
    let(:event2) { FactoryGirl.create(:event) }
    let(:user) { FactoryGirl.create(:user) }

    it "should return all bars and their associated reviews" do
      get :index
      json = JSON.parse(response.body)
    end
  end
end
