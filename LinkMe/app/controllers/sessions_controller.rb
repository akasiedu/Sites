class SessionsController < ApplicationController
  def new
    
  end

  def create
     company = Company.find_by(email: params[:session][:email].downcase)
    if company && company.authenticate(params[:session][:password])
      log_in company
      params[:session][:remember_me] == '1' ? remember(company) : forget(company)
      redirect_to jobs_path
    else
      flash.now[:danger] = "Invalid email/password combination"
      render 'new'
    end
  end


  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
