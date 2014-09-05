require 'rails_helper'

RSpec.describe User, :type => :model do
  it "1) should create a user with the new syntax" do
    Will = Student.new(:user_id => self.uid)
    expect(user.provider).to eq(["provider"])
      expect(user.uid).to eq(["uid"])
      expect(user.full_name).to eq(["info"]["full_name"])
      expect(user.gender).to eq(["info"]["gender"])
      expect(user.about_me).to eq(["info"]["about_me"])
      expect(user.city).to eq(["info"]["city"])
      expect(user.state).to eq(["info"]["state"])
      expect(user.country).to eq(["info"]["country"])
      expect(user.dob).to eq(["info"]["dob"])
      expect(user.member_since).to eq(["info"]["member_since"])
      expect(user.locale).to eq(["info"]["locale"])
      expect(user.timezone).to eq(["info"]["timezone"])
      expect(user.token).to eq(["credentials"]["token"])
      expect(user.secret).to eq(["credentials"]["secret"])
  end


	