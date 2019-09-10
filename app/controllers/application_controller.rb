class ApplicationController < ActionController::Base
  #ここで記述したメソッドは全てのControllerで使用可能
  
  include SessionsHelper
  
  private
  
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
