class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
      user ||= User.new
      if user.blank?
        can [:read] , Student

      elsif user.administration?
        can [:create , :read,] , Parent
        can [:create , :read , :edit] , Student
      elsif user.cashier? 
        can [:create , :read], Receipt  
        can [:read] , Student
      elsif user.finances?
        can [ :edit , :read , :update ] , Fee
        can [ :read] , Receipt
        can [:create, :read] , Account
      elsif user.admin?
        can :manage , :all 
      elsif user.management?
         can :manage, :all 
      elsif user.dev?
        can :manage,:all
      end 
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
