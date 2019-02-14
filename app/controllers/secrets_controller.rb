class SecretsController < ApplicationController
  before_action :require_login
  
  def new
  end
  
  def show
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end
  
    private

   def require_login
    if current_user
      render 'secrets/show'
    else
      redirect_to '/login'
    end
  end
end