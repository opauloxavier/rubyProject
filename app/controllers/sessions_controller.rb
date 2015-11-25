class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to user
      else
        flash[:danger] = 'Combinaçao incorreta de email e password'
        render 'new'
      end
  end
  def destroy
    log_out if logged_in?
    flash[:success] = 'Você Saiu com Sucesso'
    redirect_to root_url
  end

end
