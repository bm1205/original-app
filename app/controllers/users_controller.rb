class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def index
  end

  def create
    @user = User.new(user_params)
    #binding.pry
    if @user.save
      redirect_to mains_new_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end
  
  def edit
    #binding.pry
    @user = User.find_by(id: session[:user_id])
  end
  
  def update
    @user = User.find_by(id: session[:user_id])
    #binding.pry
    if @user.update_attributes(user_params)
      redirect_to mains_new_path, success: '更新が完了しました'
    else
      flash.now[:danger] = "更新に失敗しました"
      render :edit
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation,
     :residence, :hobby, :introduction, :age, :gender)
  end
end
