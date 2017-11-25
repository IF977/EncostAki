class MemberPolicy < ApplicationPolicy
  def index?
    member.admin?
  end
  
  class Scope < Scope
    def resolve
      scope
    end
  end
end
