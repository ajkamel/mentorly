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
			redirect_to groups_path
		else
			redirect_to groups_path
		end
	end

	def edit

		@mentors = User.find_mentors
		@mentees = User.find_mentees
		@group = Group.find(params[:id])
		if current_user.admin == true || (current_user.group == params[:id]  && current_user.mentor == true)
			render 'edit'
		else
			redirect_to root_path
		end

	end

	def update

		@group = Group.find(params[:id])
		if current_user.admin == true || (current_user.group == params[:id]  && current_user.mentor == true)
			@group.update(group_params)
			redirect_to @group
		else
			redirect_to root_path
		end

	end

	def destroy

		@group = Group.find(params[:id])
		if current_user.admin == true || (current_user.group == params[:id]  && current_user.mentor == true)
			@group.destroy
			redirect_to groups_path
		else
		redirect_to groups_path
		end
	end

	private

	def group_params
		params.require(:group).permit(:name, :user_id)
	end

end