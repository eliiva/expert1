class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  def extr_locale_in_accept_lang
    locale = params[:locale]#.scan(/^[a-z]{2}/).fist
    logger.info "In extr_locale_in_accept_lang: locale = #{locale}"
  end


end
