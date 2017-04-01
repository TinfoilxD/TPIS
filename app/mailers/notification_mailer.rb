class NotificationMailer < ApplicationMailer
  def profile_notification(candidate)
    @candidate = candidate
    @system_admins = User.system_admin
    email_arr = []
    @system_admins.each do |admin|
      email_arr.push(admin.email)
    end
    mail(to: email_arr, subject: 'Candidate Profile created.')

  end

  def application_form_notification(application_form)
    @application_form = application_form
    @candidate = Candidate.find(@application_form.candidate_id)
    @system_admins = User.system_admin
    email_arr = []
    @system_admins.each do |admin|
      email_arr.push(admin.email)
    end
    mail(to: email_arr, subject: 'Candidate has applied.')
  end


end
