module Admin
class ApplicationController < ActionController::Base
  include Clearance::Controller
  layout 'application'
end
end
