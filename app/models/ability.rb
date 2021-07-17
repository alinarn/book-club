class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      can :edit, Book
      can :new, Book
    end
  end
end
