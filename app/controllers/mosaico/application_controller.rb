module Mosaico
  class ApplicationController < ActionController::Base
    helper ::Mosaico::ApplicationHelper
    before_action :set_locale

    ##
    # set current user used by mosaico based on project devise model name
    def current_user
      send("current_#{Mosaico.devise_user_model}")
    end

    private

    def set_locale
      if params[:locale]
        Mosaico.locale = params[:locale]
        session[:locale] = params[:locale]
      elsif session[:locale]
        Mosaico.locale = session[:locale]
      end
    end
  end
end
