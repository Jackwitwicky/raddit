class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      #login the user and redirect to profile page
      log_in(user)

      flash[:success] = "You have been signed in"
      redirect_to user
    else
      flash[:danger] = "Invalid email/password combination"
      render 'new'
    end
  end

  def destroy
    log_out

    flash[:success] = "You have logged out."
    redirect_to root_path
  end
end
