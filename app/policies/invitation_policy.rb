class InvitationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.environment
        scope.where(environment_id: user.environment.id)
      else
        []
      end
    end
  end

  def create?
    true
  end
end
