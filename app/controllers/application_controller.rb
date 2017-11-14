class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  helper_method :float, :social_links, :contact_details
  
  def social_links
    SocialLink.all
  end
  
  def contact_details
    ContactDetail.first
  end
  
  def set_locale
    I18n.locale = params[:locale] || cookies[:locale] || I18n.default_locale
    cookies[:locale] = I18n.locale
    redirect_to request.referer || root_url if params[:locale]
  end
  
  def float(direction)
    locale == :en ? direction : (direction == "left" ? "right" : "left")
  end
end
