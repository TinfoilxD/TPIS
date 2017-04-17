class PathingController < ApplicationController
  before_action :authenticate_user!
  def sign_in_reroute

    if current_user.system_admin? then
      redirect_to system_admin_landing_path

    elsif current_user.candidate? then
      redirect_to candidate_landing_path

    elsif current_user.tcf_admin? then
      redirect_to tcf_admin_landing_path

    elsif current_user.tcf? then
      redirect_to tcf_admin_landing_path
    end

  end
end