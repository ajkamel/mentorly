class GroupMessagesController < ApplicationController

	before_action :require_authentication

	def index
		@groupmessages = GroupMessage.where(:group_id => params[:group_id])	

	end

	def show
		@groupmessage = GroupMessage.find(params[:id])
	end

	def new
		@group = Group.find(params[:group_id])
		@groupmessage = GroupMessage.new
	end

	def create
		@groupmessage = GroupMessage.create(groupmessage_params)
		@groupmessage.user_id = current_user.id
		@groupmessage.group_id = params[:group_id]
		@groupmessage.save
		redirect_to group_group_messages_path
	end

	def edit
		@group = Group.find(params[:group_id])
		@groupmessage = GroupMessage.find(params[:id])
		render 'edit'
	end

	def update
		@groupmessage = GroupMessage.find(params[:id])
		@groupmessage.update(groupmessage_params)
		redirect_to group_group_messages_path
	end

	def destroy

		@groupmessage = GroupMessage.find(params[:id])
		@groupmessage.destroy
		redirect_to group_group_messages_path
	end

	def groupmessage_params
		params.require(:group_message).permit(:title, :message, :img_url)
	end
end
