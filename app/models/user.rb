class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :registerable, :trackable, :validatable,
  devise :omniauthable, :omniauth_providers => [:box_oauth2]

  def self.from_omniauth(auth)
    #where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    where(id: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.name = auth.info.name
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end
end
