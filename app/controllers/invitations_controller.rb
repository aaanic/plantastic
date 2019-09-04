class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new
    authorize @invitation
  end

  def create
    @invitation = Invitation.new
    authorize @invitation
    user = User.invite!(invitation_params)
    user.environment_id = current_user.environment_id
    user.save
  end

  private

  def invitation_params
    @invitation = params.require(:invitation).permit(:first_name, :last_name, :email)
  end
end
