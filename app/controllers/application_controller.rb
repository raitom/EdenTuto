class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :tutocenter

  def tutocenter
    @tutocenter = User.all.first.tutocenters.first
  end
end
