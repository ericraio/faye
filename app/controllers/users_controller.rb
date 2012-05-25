class UsersController < ApplicationController
  before_filter :authenticate_user!, :except => [:show]

  def show
    if params[:name]
      @user = User.where(:name => params[:name]).first
      if @user.nil?
        return redirect_to root_url
      else
        @profile = @user.profile
      end
    else
      redirect_to root_url
    end
  end

  def facebook
  end
end
