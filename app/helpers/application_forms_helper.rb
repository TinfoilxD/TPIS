module ApplicationFormsHelper
  def setup_user(application_forms)
    application_forms.course ||= Course.new
    application_forms
  end
end
