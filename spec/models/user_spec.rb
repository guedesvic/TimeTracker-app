require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create(email: "test@test.com", password: "123456", password_confirmation: "123456", first_name: "Victor", last_name: "G")
  end

  describe "creation" do
    it "can be created" do
      expect(@user).to be_valid
    end

    it "cannot be created without first_name, last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end

  describe "custom name methods" do
    it "has a full name method tha combines first and last name" do
    expect(@user.full_name).to eq("Victor G")
    end
  end
end
