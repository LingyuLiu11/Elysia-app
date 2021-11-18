class ApplicationController < ActionController::Base
  include SessionsHelper

  def authenticated!
    if !logged_in?
      redirect_to login_sessions_path
    end
  end
end