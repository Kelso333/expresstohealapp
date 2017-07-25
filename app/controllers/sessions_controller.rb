class SessionsController < ApplicationController

  def new 
  end

  def create 
    peep = Person.find_by(email: params[:email])
    if peep && peep.authenticate(params[:password])
      session[:peep_id] = peep.id
      redirect_to root_path, notice: 'Logged in!'
    else 
      flash.now.alert = 'Invalid login credentials - try again!'
      render :new
    end
  end

  def destroy
      session[:peep_id] = nil
      redirect_to root_path, notice: "Logged out!"
  end

end