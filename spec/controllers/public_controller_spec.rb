require 'rails_helper'

RSpec.describe PublicController, type: :controller do

  describe "GET #listVoluntary" do
    it "returns http success" do
      get :listVoluntary
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #listInstitution" do
    it "returns http success" do
      get :listInstitution
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #voluntary" do
    it "returns http success" do
      get :voluntary
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #institution" do
    it "returns http success" do
      get :institution
      expect(response).to have_http_status(:success)
    end
  end

end
