class User < ApplicationRecord
  has_one :authentication

  def User.update_from_oauth(oauth_hash)
    oauth_email = oauth_hash['extra']['raw_info']['email']
    user = User.find_by(email: oauth_email)

    if user.nil?
      oauth_juicy_bits = oauth_hash['extra']['raw_info']
      user = User.create(
        firstname: oauth_juicy_bits['name'].split(' ')[0],
        lastname: oauth_juicy_bits['name'].split(' ')[1],
        email: oauth_juicy_bits['email']
      )
      user.build_authentication(
        provider: oauth_hash['provider'],
        uid: oauth_juicy_bits['id'],
        token: oauth_hash['credentials']['token']
      )
      user.save
    else
      # User is already in DB
      # Update information and set @current_user
    end
  end
end
