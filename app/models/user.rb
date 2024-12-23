# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  def self.from_google(u)
    create_with(uid: u[:uid], provider: "google",
                password: Devise.friendly_token[0, 20]).find_or_create_by!(email: u[:email])
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  # models/user.rb
  #  :omniauthable, omniauth_providers: [:google_oauth2]
end
