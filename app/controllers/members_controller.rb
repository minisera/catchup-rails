class MembersController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    member_params = params.require(:member).permit(:name)
    @member = @group.members.new(member_params)

    if @member.save
      render json: @member, status: :created
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end
end
