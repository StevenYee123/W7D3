require 'rails_helper'

RSpec.describe SessionsController, type: :controller do 
    describe "GET#new" do 
    it "should render the login page" do 
      allow(subject).to receive(:logged_in?).and_return(true)

      get :new 
      expect(response).to render_template(:new)
    end
  end

  describe "GET#index" do 
    it "should redirect to /users" do 
      # get users_url 
      expect(response).to redirect_to(users_url)
    end
  end
end
