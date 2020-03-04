require 'rails_helper'

RSpec.describe UsersController, type: :controller do 
  describe "GET#new" do 
    it "should render sign up form" do 
      allow(subject).to receive(:logged_in?).and_return(true)

      get :new 
      expect(response).to render_template(:new)
    end
  end

  describe "GET#index" do
      it "should render the users index" do 
          get :index 
          expect(response).to render_template(:index)
      end
  end
end