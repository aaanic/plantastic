class EnvironmentPlantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.environment
        scope.where(environment_id: user.environment.id)
      else
        []
      end
    end
  end

  def show?
    env_plant_belongs_to_users_env?
  end

  def create?
    env_plant_belongs_to_users_env?
  end

  def update?
    env_plant_belongs_to_users_env?
  end

  def destroy?
    env_plant_belongs_to_users_env?
  end

  private

  def env_plant_belongs_to_users_env?
    user.environment.environment_plants.each do |e|
      return true if e == record
    end
  end

  # def user_exists?
  #   !user.nil?
  # end
end
