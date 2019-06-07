class PostPolicy < ApplicationPolicy

  def index?
    verification
  end

  def show?
    verification
  end

  def new?
    verification
  end

  def edit?
    verification
  end

  private 

  def verification
    @isAdmin = user.admin?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
