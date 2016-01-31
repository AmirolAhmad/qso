require 'rails_helper'

RSpec.describe Admin::DashboardsController, type: :controller do
  let(:admin) { FactoryGirl.create(:admin) }

  describe "GET #index" do
    it "returns http success" do
      allow(controller).to receive(:current_user).and_return(admin)
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
