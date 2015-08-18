class ApplicationController < ActionController::Base
  # Adds a few additional behaviors into the application controller 
  include Blacklight::Controller

  # adds some site-wide behavior into the application controller
  include CommonwealthVlrEngine::Controller
  layout 'commonwealth-vlr-engine'

  

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
