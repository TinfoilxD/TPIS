class NotificationMailer < ApplicationMailer
  def profile_notification(candidate)
    @candidate = candidate
    mail(to: candidate.email, subject: 'Candidate Profile created.')
  end
end
