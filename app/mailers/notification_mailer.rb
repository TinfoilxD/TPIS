class NotificationMailer < ApplicationMailer
  def profile_notification(candidate)
    @candidate = candidate
    @system_admins = User.system_admin
    email_arr = []
    @system_admins.each do |admin|
      email_arr.push(admin.email)
    end
    mail(bcc: email_arr, subject: 'Candidate Profile created.')

  end

  def application_form_notification(application_form)
    @application_form = application_form
    @candidate = Candidate.find(@application_form.candidate_id)
    @system_admins = User.system_admin
    email_arr = []
    @system_admins.each do |admin|
      email_arr.push(admin.email)
    end
    mail(bcc: email_arr, subject: 'Candidate has applied.')
  end

  def appointment_notification(appointment)
    @appointment = appointment
    @faculty = Faculty.find(@appointment.faculty_id)
    @application_form = ApplicationForm.find(@appointment.application_form_id)
    @candidate = Candidate.find(@application_form.candidate_id)
    @system_admins = User.system_admin
    email_arr = []
    @system_admins.each do |admin|
      email_arr.push(admin.email)
    end
    @tcf_admins = User.tcf_admin
    @tcf_admins.each do |admin|
      email_arr.push(admin.email)
    end
    mail(bcc: email_arr, subject: 'An appointment has been created.')
  end
  def interview_comments_notification(appointment)
    @appointment = appointment
    @faculty = Faculty.find(@appointment.faculty_id)
    @application_form = ApplicationForm.find(@appointment.application_form_id)
    @candidate = Candidate.find(@application_form.candidate_id)
    @system_admins = User.system_admin
    email_arr = []
    @system_admins.each do |admin|
      email_arr.push(admin.email)
    end
    mail(bcc: email_arr, subject: 'An interview has been completed')

  end

end
