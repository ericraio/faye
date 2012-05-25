class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_uri
  before_filter :create_profile


  def after_sign_in_path_for(resource)
    if params[:redirect_url].present?
      params[:redirect_url]
    else
      '/'
    end
  end

  def create_profile
    Profile.create(:user_id => current_user.id, :gender => '??') if signed_in? && current_user.profile.nil?
  end

  def render_error(exception)
    ExceptionNotifier::Notifier.exception_notification(request.env, exception).deliver
    respond_with({:status => 500}) do |format|
      format.html { render :template => "exceptions/error", :layout => "public/exception"  }
    end
  end

  def render_not_found
    respond_with({:status => 404}) do |format|
      format.html { render :template => "exceptions/not_found", :layout => "public/exception"  }
    end
  end

  def check_uri
    if Rails.env.production?
      redirect_to request.protocol + "www." + request.host_with_port + request.fullpath if !/^www/.match(request.host)
    end
  end

end

