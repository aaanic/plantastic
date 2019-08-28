class ReminderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.environment
        scope.where(environment_id: user.environment.id)
      else
        return []
      end
    end
  end

  def show?
    user_exists?
  end

  def create?
    user_exists?
  end

  def edit?
    user_exists?
  end

  def update?
    user_exists?
  end

  def destroy?
    user_exists?
  end

  private

  def user_exists?
    # record.user == user
    !user.nil?
  end
end
