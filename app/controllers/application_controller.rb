class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def is_loged?
  	!!session[:status]
  end

  def current_employee
  	Employee.find(session[:id])
  end

  helper_method :is_loged?, :current_employee

end
