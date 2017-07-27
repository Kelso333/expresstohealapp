class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  



  private

  helper_method :current_peep

  def current_peep
    @current_peep ||= Person.find_by(id: session[:peep_id]) if session[:peep_id]
  end

  def authorize
    redirect_to login_path, alert: 'Not authorized - you must be logged in!' if current_peep.nil?
  end


end
