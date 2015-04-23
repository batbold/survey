class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.image = auth["info"]["image"]
    end
  end

  def self.from_omniauth(auth)
	puts auth.inspect
  	puts "simba haana bbnaa"
	where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
	user.provider = auth.provider 
	user.uid      = auth.uid
	user.name     = auth.info.name
    user.image 	  = auth.info.image
	user.save
  end
	end
end