class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |member|
      member.email = auth.info.email
      member.name = auth.info.name
      member.password = Devise.friendly_token[0,20]
      member.image = auth.info.image
    end
  end
  
  def largeimage
    "http://graph.facebook.com/#{self.uid}/picture?type=large"
  end
  def normalimage
    "http://graph.facebook.com/#{self.uid}/picture?type=normal"
  end
  def smallimage
    "http://graph.facebook.com/#{self.uid}/picture?type=small" 
  end
end
