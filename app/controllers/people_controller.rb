class PeopleController < ApplicationController

  def index
  end
  
  def new
    @peep = Person.new
  end

  def create 
    @peep = Person.new(peep_params)
    if @peep.save
      session[:peep_id] = @peep.id
      flash[:notice] = "You have successfully signed up"
      redirect_to people_path
    else
      render :new
    end
  end

  def show
  end

  private 

  def peep_params
    params.require(:peep).permit(:username, :password, :password_confirmation, :email, :city, :state, :country, :title)
  end

end
