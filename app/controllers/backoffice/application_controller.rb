module Backoffice
  class ApplicationController < ActionController::Base
    layout 'backoffice/application'

    include Authentication
    # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
    allow_browser versions: :modern
  end
end
