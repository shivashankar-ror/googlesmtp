# == Schema Information
#
# Table name: users
#
#  id                           :integer          not null, primary key
#  email                        :string(100)      not null
#  password_digest              :string(128)      not null
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#  temp_access_token            :string(128)
#  temp_access_token_expires_at :datetime
#

require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "Secure Password" do 
    it { should have_secure_password }
  end  

  describe "Validations" do
    context "email" do 
      it { should validate_presence_of(:email)             }  
      it { should validate_length_of(:email).is_at_most(100) }   
    end
    context "password" do 
      it { should validate_presence_of(:password).on(:create)  }
      it { should validate_length_of(:password).is_at_least(8) }
      it { should validate_length_of(:password).is_at_most(40) }
    end
    context "password_confirmation" do 
      before do
        @user = User.new(:password => 'password', :password_confirmation => 'password1')  
      end
      it "should be present if password is set" do         
        @user.valid?
        expect(@user.errors[:password_confirmation]).to include("doesn't match Password")
      end
    end
  end

  describe "Callbacks" do
    context "before_create: set_temp_access" do 
      before do
        @user = User.new(Fabricate.attributes_for(:user))
      end
      it "should set temp_access_token" do         
        expect(@user.save).to be_truthy
        expect(@user.temp_access_token).not_to be_nil
      end
    end
  end
end
