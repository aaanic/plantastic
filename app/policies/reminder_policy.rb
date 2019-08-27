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
    user_is_logged?
  end

  def create?
    !user.nil?
  end

  def edit?
    user_is_logged?
  end

  def update?
    user_is_logged?
  end

  def destroy?
    user_is_logged?
  end

  private

  def user_is_logged?
    # record.user == user
    true
  end
end
