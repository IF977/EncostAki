class ControlUsersController < ApplicationController
  before_action :authenticate_member!
  def index
    @areas = Area.all
    @users = Member.all
    authorize @users
  end
end
