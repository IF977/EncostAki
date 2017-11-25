# Preview all emails at http://localhost:3000/rails/mailers/member_mailer
class MemberMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/member_mailer/password_changed
  def password_changed
    MemberMailerMailer.password_changed
  end

end
