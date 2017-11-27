class MembersController < ApplicationController
  def show
    @member = Member.find(params[:id])
    @membername = ''
    str = (current_member.email).scan(/./)
    for i in str
        if i == '@'
            break
        else @membername = @membername + i
        end
    end
  end
  
  def new
     if @member.email == "admin@admin.com"
       x = @member
       x.role = :admin
       x.save
     end
  end

  def update
    @member = Member.find(params[:id])
    @member.update_attribute(:avatar, params[:member][:avatar])
  end
end

  
