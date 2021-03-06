class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  include SessionsHelper # to see in views and controllers

  def extr_locale_in_accept_lang
    locale = params[:locale]#.scan(/^[a-z]{2}/).fist
  end

  private

  def set_locale_from_params
    if params[:locale]
      extr_locale_in_accept_lang
      if I18n.available_locales.include?(params[:locale].to_sym)
        I18n.locale = params[:locale]
      else
        flash.now[:alarm] = " #{params[:locale]} Перевод страницы отсутствует"
      end
      params[:locale]
    end
  end

  def set_locale
    I18n.locale = set_locale_from_params || I18n.default_locale
    Rails.application.routes.default_url_options[:locale]= I18n.locale
  end

end
