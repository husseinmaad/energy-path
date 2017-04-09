class UsersController < ApplicationController
  def index
    
  end

  def create_multiple_users
    
  end

  def report
    @user = User.find(params[:id])
    if @user.email_link==params[:email_link]
      render :report
    end
    
  end

  def log
    @log = Log.new
    @log.duration = params[:duration]
    @log.page = params[:page]
    @log.user_id = current_user.id
    @log.save
  end

  def new
    @user = User.new
    @user.email_link = SecureRandom.hex(10);
  end

  def generate_user
    @user = User.new(user_params)
    @user.email_link = SecureRandom.hex(10);
    @user.password = @user.email
    @user.save!
    redirect_to create_multiple_path
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login
      redirect_to @user
    else
      render :new
    end
  end

  def setpassword
    @user = User.find(params[:id])
    if @user.email_link==params[:email_link]
      render :setpassword
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def show_multiple
    @users = User.all
  end

  def update
  end 

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :email_link)
  end
  def log_params
    params.require(:log).permit(:duration, :page)
  end

end
