class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    if current_voluntary
      current_voluntary
    else
      current_institution
    end
  end
end
