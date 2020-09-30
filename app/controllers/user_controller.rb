class UserController < ApplicationController
  def index
    @user=User.all
  end

  def show
    @user =User.find(params[:id])
  end

  def new
    @user =User.new({:first_name=>"Default"})
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    # @user = User.
    if @user.update_attributes(user_params)
    flash[:notification] = "Successfully Updated..."
      redirect_to (user_path(@user))
    else
      render('edit')  
    end
  end

  def create
    @user=User.new(user_params)
    if @user.save
    flash[:notification] = "Successfully Created..."
      redirect_to ("/")
    else
      render('new')  
    end
  end
  
  def delete
    @user= User.find(params[:id]).destroy
    flash[:notification] = "Successfully Deleted..."
    redirect_to('/')
  end
  private
  def user_params
    params.required(:user).permit(:first_name,:last_name,:email,:password)
  end
end
