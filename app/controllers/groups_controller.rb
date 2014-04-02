class GroupsController < ApplicationController

	def index

		@groups = Group.all

	end


	def show

		@group = Group.find(params[:id])

	end

	def new

		@group = Group.new
		@mentors = User.find_mentors
	end

	def create
		
		if current_user.admin == true
			@group = Group.create(group_params)
			@user = User.find(params[:user][:user_id].to_i)
			@group.users << @user
			redirect_to groups_path
		else
			redirect_to groups_path
		end
	end

	def edit

		@mentors = User.find_mentors
		@mentees = User.find_mentees
		@group = Group.find(params[:id])
		if current_user.admin == true || (@group.users.include?(current_user) && current_user.mentor)
			render 'edit'
		else
			redirect_to root_path
		end

	end

	def update
		@group = Group.find(params[:id])
		if current_user.admin == true || (@group.users.include?(current_user) && current_user.mentor)

			if params[:commit] == "Update Title"
				@group.update(group_params)
			elsif params[:commit] == "Add Mentor"
				@user = User.find(params[:mentor][:user_id].to_i)
				@group.users << @user
			elsif params[:commit] == "Add Mentee"
				@user = User.find(params[:mentee][:user_id].to_i)
				@group.users << @user
			end
			redirect_to @group
		else
			redirect_to root_path
		end
	end

	def destroy

		@group = Group.find(params[:id])
		if current_user.admin == true || (@group.users.include?(current_user) && current_user.mentor)
			@group.destroy
			redirect_to groups_path
		else
		redirect_to groups_path
		end
	end

	private

	def group_params
		params.require(:group).permit(:name)
	end

end
