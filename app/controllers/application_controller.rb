class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  private

  def set_locale
    I18n.locale = find_locale
  end

  def find_locale
    params[:locale] ||
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first.presence ||
    I18n.default_locale
  end

  def default_url_options(options={})
    { locale: I18n.locale }
  end
end
