class ErrorsController < ApplicationController
  # skip_after_action :verify_authorized

  layout 'application'

  rescue_from Exception,                        with: :routing_error
  rescue_from ActiveRecord::RecordNotFound,     with: :routing_error
  rescue_from ActionController::RoutingError,   with: :routing_error

  def routing_error
    redirect_to root_path
  end
end
