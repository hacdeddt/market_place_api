class ApplicationController < ActionController::Base
  #using null_session to prevent CSFR attacks
  protect_from_forgery with: :null_session
end
