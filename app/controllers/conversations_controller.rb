class ConversationsController < ApplicationController
  
   before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]
   helper_method :mailbox, :conversation

  def index

  end

end