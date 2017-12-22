class ApplicationController < ActionController::Base
  before_filter :set_i18n_locale
  protect_from_forgery with: :exception
  include SessionsHelper

  private

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in"
      redirect_to login_url
    end
  end

  def set_i18n_locale
    if params[:locale]
      if I18n.available_locales.include?(params[:locale].to_sym)
        I18n.locale = params[:locale]
      else
        flash.now[:notice] = params[:locale] + ' is not supported'
      end
    end
  end

  def default_url_options
    {:locale => I18n.locale}
  end
end