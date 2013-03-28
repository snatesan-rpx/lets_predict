module UsersHelper

  def get_btn_class(predicted_teams, match_id, team_name)
    return "btn btn-primary btn-block" if predicted_teams[match_id].blank?
    return "btn btn-success btn-block disabled" if predicted_teams[match_id].last == team_name
    "btn btn-block"
  end

  def get_icon_class(predicted_teams, match_id, team_name)
    return "icon-ok pull-right hide" if predicted_teams[match_id].blank?
    return "icon-ok pull-right" if predicted_teams[match_id].last == team_name
    "icon-ok pull-right hide"
  end
end
