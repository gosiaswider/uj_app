class ApplicationController < ActionController::Base
  before_action :authenticate_user! 
  load_and_authorize_resource
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
