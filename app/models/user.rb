class User < ActiveRecord::Base
  has_many :stats
  has_many :foods


  def fitbit
    consumer_key = ENV["FIT_BIT_KEY"]
    consumer_secret = ENV["FIT_BIT_SECRET"]
     
    @client ||= Fitgem::Client.new(
              :consumer_key => consumer_key,
              :consumer_secret => consumer_secret,
              :token => self.token,
              :secret => self.secret,
              :user_id => self.uid
            )

  end

  def self.authenticate email, password
    User.find_by_email(email).try(:authenticate,password)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.full_name = auth["info"]["full_name"]
      user.gender = auth["info"]["gender"]
      user.about_me = auth["info"]["about_me"]
      user.city = auth["info"]["city"]
      user.state = auth["info"]["state"]
      user.country = auth["info"]["country"]
      user.dob = auth["info"]["dob"]
      user.member_since = auth["info"]["member_since"]
      user.locale = auth["info"]["locale"]
      user.timezone = auth["info"]["timezone"]
      user.token = auth["credentials"]["token"]
      user.secret = auth["credentials"]["secret"]
    end
  end

end
