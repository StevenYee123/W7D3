require 'rails_helper'

  RSpec.describe User, type: :model do 
    subject(:user) do 
      FactoryBot.build(:user, username: 'JohnDoe', password: 'password')
    end
    
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:password_digest ) }
    it { should validate_presence_of(:username) }
    it { should validate_length_of(:password).is_at_least(6)}
    
    describe "::find_by_credentials" do 
      # FactoryBot.find(:user)
      before {user.save!} 
      

      it "returns a user with valid params" do 
        expect(User.find_by_credentials("JohnDoe", "password")).to eq(user)
      end

      it "returns nil if invalid params" do 
        expect(User.find_by_credentials("JohnDoe", "")).to eq(nil)
      end
    end

end