class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.create(name: params[:name], email: params[:email], username: params[:username], password: params[:password_digest])
    if @user.valid?
      render json: @user, status: :created
    else
      render json: {error: 'failed to create user'}, status: :not_acceptable
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(name: params[:name], email: params[:email], username: params[:username])
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

end
