class Session < ActiveRecord::Base
		belongs_to :user
	def self.from_omniauth(auth)
  where(auth.slice(:provider, :user_id)).first_or_initialize.tap do |user|
    user.provider = auth.provider
    user.user_id = auth.uid
    user.name = auth.info.name
    user.oauth_token = auth.credentials.token
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    user.save!
  end
end
end
