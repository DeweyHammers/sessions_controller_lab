class SessionsController < ApplicationController
  def new
    if session[:name] != nil
      redirect_to :root
    end
  end

  def create
    if params[:name] != '' && params[:name] != nil
      session[:name] = params[:name]
      redirect_to :root
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to :root
  end
end
