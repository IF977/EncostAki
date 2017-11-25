class Ability
  include CanCan::Ability

  def initialize(member)
    member ||= current_member
    if member.admin?
      can :manage, :all
    else
      can :read, :all
    end

  end
end
