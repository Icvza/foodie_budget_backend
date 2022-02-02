class UsersController < ApplicationController
  include UsersHelper 
  before_action :require_login, except: [:new, :create, :index]
  before_action :set_user, only: [:update, :edit, :destroy, :show]
  # Deleat index in require login to not allowe useres to see other users info 
  def index 
    @users = User.all

    render json: @users
  end

  def show
    #coulld use find here User.find(params[:id])
    @user = User.find(params[:id]) 
    
    render json: @user
  end

  def create
    @user = User.new(user_params)
    binding.pry
    if @user.save
      login!
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  #DELETE /users/1
  def destroy
    @user.destroy
  end

end











