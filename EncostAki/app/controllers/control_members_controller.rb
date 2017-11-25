class ControlMembersController < ApplicationController
  def index
    @areas = Area.all
    @members = Member.all
    current_member.role
  end
end
