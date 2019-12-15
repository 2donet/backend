class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  prepend_before_action do
    locale = choose_locale
    locale = :en unless locale && locale.to_sym.in?(I18n.available_locales)

    I18n.locale = locale

    if params[:locale] && !cookies[:lang]
      cookies[:lang] = locale
    end
  end

  def choose_locale
    i18n_from_param = params[:locale]&.to_sym
    i18n_from_cookie = cookies[:lang]&.to_sym

    return i18n_from_param if i18n_from_param.in?(I18n.available_locales)
    return i18n_from_cookie if i18n_from_cookie.in?(I18n.available_locales)
  end

  def index; end
end
