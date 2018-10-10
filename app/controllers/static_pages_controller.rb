class StaticPagesController < ApplicationController
  before_action :set_locale

  def home
    @item = HomePage.instance
  end

  private

  def set_locale
    I18n.locale = params[:locale] ||
                  request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first.presence ||
                  I18n.default_locale
  end

  def default_url_options(options={})
    {locale: I18n.locale }
  end
end
