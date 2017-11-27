class ChatsController < ApplicationController
  def show
    @messages = Message.all
  end
end