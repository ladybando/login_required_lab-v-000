class SecretsController < ApplicationController
  before_action :require_login
  
  def new
  end
  
  def show
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end
end