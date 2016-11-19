class ApplicationController < ActionController::Base
  # load_and_authorize_resource :except => [:index, :show]
  # before_action :authenticate_user!, :except => [:show, :index]
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  # check_authorization
end
