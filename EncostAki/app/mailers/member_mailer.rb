class MemberMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.member_mailer.password_changed.subject
  #
  def password_changed(id)
    @member = Member.find(id)
    mail to: @member.email, subject: "Your password has changed"
  end
end
