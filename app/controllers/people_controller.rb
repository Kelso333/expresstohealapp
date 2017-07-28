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
        redirect_to profile_path
    else
        render :new
    end
  end

  def edit 
    @peep = current_peep
  end

  def show
    @peep = current_peep
  end

  def update 
    current_peep.update_attributes(peep_params)
      redirect_to profile_path
  end

  private 

  def peep_params
    params.require(:person).permit(:username, :password, :password_confirmation, :email, :city, :state, :country, :title, :image)
  end

end
