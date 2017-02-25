module ApplicationHelper
  def alert_check key
    if key == "alert" then
      return "warning"
    elsif key == "notice" then
      return "info"
    else return ""
    end
  end
end
