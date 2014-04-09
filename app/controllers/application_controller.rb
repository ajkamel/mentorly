class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :allowed?, :admin?, :require_authentication

  #finds if the session contains a user_id for authentication
  def current_user
  	if session[:user_id]
  		return User.find(session[:user_id])
  	end
  end

  def admin?
    current_user.admin if current_user
  end

  def require_authentication
    redirect_to login_path unless current_user
  end

  #Private method to authenticate group mentors or admin
  def allowed?
    @group = Group.all
    return current_user.admin == true || (@group.users.include?(current_user) && current_user.mentor)
  end

end
