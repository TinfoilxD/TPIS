class LandingController < ApplicationController
  def default_landing
  end
  def candidate_landing
  end
  def system_admin_landing
  end
  def tcf_admin_landing
  end
  def tcf_landing
  end
  def error
    params.permit(:error_message)
    if params.has_key?(:error_message)
      @error_message = evaluate_error_message(params[:error_message])
    else
      @error_message = 'Sorry. This page has encountered an error.'
    end
  end

  #lists the possible error messages in order to not put too much information in the url.
  def evaluate_error_message(error_code)
    case error_code
      when '0' then
        return 'We did not find a candidate profile matching your account. Please create a candidate profile first.'
      else
        return 'Sorry. This page has encountered an error.'
    end
    else
  end
end