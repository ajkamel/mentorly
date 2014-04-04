class UsersController < ApplicationController

	before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]
	
	def index

		@users = User.all

	end

	def show

		@user = User.find(params[:id])

	end

	def new

		@user = User.new
		
	end


	def create

		@user = User.new(user_params)

		if @user.save
			redirect_to @user
		else
			render 'new'
		end
	end

	def edit

		@user = User.find(params[:id])
		if current_user == @user || current_user.admin == true
			render 'edit'
		else
			redirect_to root_path
		end
	end


	def update

		@user = User.find(params[:id])
		if current_user == @user || current_user.admin == true
			@user.update(user_params)
			redirect_to @user
		else
			redirect_to root_path
		end

	end


	def destroy

		@user = User.find(params[:id])
		if admin?
			@user.destroy
			redirect_to users_path
		else
			redirect_to root_path
		end

	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation, :address, :picture_url, :bio, :birthdate, :interests, :admin, :mentor)
	end

end