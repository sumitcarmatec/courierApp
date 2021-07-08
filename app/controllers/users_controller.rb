class UsersController < ApplicationController
  before_action :set_user, only: %i[ show ]

  def index
    @users = User.all
  end

  def show
    @method_name = request.referrer.split('/').last
  end

  def new
    @user = User.new
  end

  def receiver
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if request.referrer.split('/').last == 'new'
      @user.user_type = 0
    elsif request.referrer.split('/').last == 'receiver'
      @user.user_type = 1
    end

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:full_name, :email, :address, :mobile_no, :pin_code)
    end
end
