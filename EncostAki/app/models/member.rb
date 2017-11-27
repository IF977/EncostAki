class Member < ApplicationRecord
  enum role: [:normal_member, :admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  def self.from_omniauth(auth)
    
    where(provider: auth.provider, uid: auth.uid).first_or_create do |member|
      member.email = auth.info.email || "#{member.uid}@facebook.com"
      member.name = auth.info.name
      member.password = Devise.friendly_token[0,20]
      member.save
    end
  end
  
  def self.find_for_facebook_oauth(auth, signed_in_resource = nil)
      member = Member.where(provider: auth.provider, uid: auth.uid).first
      if member.present?
          member
      else
          member = Member.create(
  
                                                 provider:auth.provider,
                                                 uid:auth.uid,
                                                 email:auth.info.email,
                                                 password:Devise.friendly_token[0,20])
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
  
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "50x50#" }, :default_url => "/images/:style/default.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
  after_update :send_password_change_email, if: :needs_password_change_email?

  private

  # Change the logic here depending on how you use Devise.
  # For example, if you allow users to be created with just an email,
  # then this will always return true, so you'll need another thing to
  # check instead of `persisted?`
  #
  # The idea is that you want to differentiate between users who are signing
  # up for the first time (because `encrypted_password_changed?` will be true
  # for them), and those who are changing their password after having created
  # it for the first time.
  def needs_password_change_email?
    encrypted_password_changed? && persisted?
  end
   
  def send_password_change_email
    MemberMailer.password_changed(id).deliver
  end

end



#LINK DO STACK : https://stackoverflow.com/questions/18480301/if-user-persisted-with-facebook-omniauth-devise