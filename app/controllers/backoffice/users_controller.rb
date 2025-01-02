module Backoffice
  class UsersController < ApplicationController
    # GET /users
    def index
      @users = User.all
    end

    # GET /users/:id
    def show
    end

    # GET /users/new
    def new
      @user = User.new
    end

    # POST /users
    def create
      @user = User.new(user_params)

      if @user.save
        redirect_to backoffice_users_path, notice: "User was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    # GET /users/:id/edit
    def edit
    end

    # PATCH/PUT /users/:id
    def update
      if @user.update(user_params)
        redirect_to @user, notice: "User was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /users/:id
    def destroy
      @user.destroy
      redirect_to users_url, notice: "User was successfully deleted."
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email_address, :password, :password_confirmation)
    end
  end
end
