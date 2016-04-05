require 'rails_helper'

RSpec.describe LogsController, type: :controller do
  let(:log) { FactoryGirl.create(:log) }
  let(:valid_attributes) { FactoryGirl.attributes_for(:log) }
  let(:invalid_attributes) { FactoryGirl.attributes_for(:log).merge({callsign: nil}) }
  let(:user) { FactoryGirl.create(:user) }
  let(:valid_session) { sign_in(user) }
  let(:admin) { FactoryGirl.create(:admin) }
  let(:valid_admin_session) { sign_in(admin) }

  # GET INDEX PAGE
  describe "GET #index" do
    before { valid_session }

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  # GET NEW PAGE
  describe "GET #new" do
    before { valid_session }

    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  # ACTION WHEN POSTING
  describe "POST #create" do
    describe "if current_user is user or admin" do
      before { valid_session }

      context "with valid attributes" do
        it "saves the log" do
          expect do
            post :create, { log: valid_attributes }
          end.to change(Log, :count).by(1)
        end

        it "redirects to the log index" do
          post :create, { log: valid_attributes }
          expect(response).to redirect_to(logs_url)
        end
      end

      context "with invalid attributes" do
        it "does not save the log" do
          expect do
            post :create, { log: invalid_attributes }
          end.to change(Log, :count).by(0)
        end
        it "renders new on failed create" do
          post :create, { log: invalid_attributes }
          expect(response).to render_template('new')
        end
      end
    end
  end

end
