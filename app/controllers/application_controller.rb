class ApplicationController < ActionController::Base
  helper_method :current_user

private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def ensure_logged_in
    unless current_user

      redirect_to new_sessions_path, alert: "You are not autherized, Please login"

    end
  end

  def ensure_user_owns_review
    unless current_user == @review.user_id
      flash[:alert] = "Please log in"
      redirect_to new_sessions_path
    end

  end

end
