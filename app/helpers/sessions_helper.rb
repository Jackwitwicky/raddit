module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if @current_user.nil?
      @current_user = User.find_by(id: session[:user_id])
      return @current_user
    else
      @current_user
    end
  end

  def logged_in?
    if current_user
      true
    else
      false
    end
  end


  def log_in_required
    unless logged_in?
      redirect_to login_path
    end
    end

  def log_out
    session.delete(:user_id)
  end
end
