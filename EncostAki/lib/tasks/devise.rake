namespace :devise do

  desc "Send password reset instructions to all users (but does not actually reset passwords)"
  task send_password_reset_instructions: :environment do
    Member.all.each do |member|
      # This only sends the password reset instructions, the
      # password is not changed. (Recipient has to click link
      # in email and follow instructions to actually change
      # the password).
      member.send_reset_password_instructions
    end
  end

  # DANGER! This locks out all users. You probably only want this when all passwords have been compromised.
  desc "DANGER: Resets all passwords AND then sends password reset instructions to all users. This will lockout all users until they reset their password."
  task reset_and_send_password_reset_instructions: :environment do
    Member.all.each do |member|
      # Generate random, long password that the user will never know:
      new_password = Devise.friendly_token(50)
      member.reset_password(new_password, new_password)

      # Send instructions so user can enter a new password:
      member.send_reset_password_instructions
    end
  end

end