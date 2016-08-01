class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def show
    @member = Member.friendly.find(params[:id])
    @gameplays = @member.gameplays.order("created_at DESC").paginate(:page => params[:page])
  end

  def edit
    @member = current_member
  end

end