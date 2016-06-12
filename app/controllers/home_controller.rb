class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    else
      render 'new'
    end
  end

end
