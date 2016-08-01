class MembersController < ApplicationController
  before_action :authenticate_member!, except: [:index, :show]


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

  def update
    @member = Member.friendly.find(params[:id])
    respond_to do |format|
      if @member.update(members_params)
        format.html { redirect_to @member, notice: 'Profile was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

private

    def members_params
      params.require(:member).permit(:location, :bio,:date_joined)
    end

end
