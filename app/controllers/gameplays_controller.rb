class GameplaysController < ApplicationController

  def new
    @gameplay = Gameplay.new
  end

  def create
    @gameplay = Gameplay.new(gameplay_params)
    @gameplay.member_id = current_member.id

    respond_to do |format|
      if @gameplay.save
        format.html { redirect_to @gameplay, notice: 'Gameplay successfully created' }
      else
        format.html { render :new }
      end
    end
  end


  def show
    @gameplay = Gameplay.friendly.find(params[:id])
  end

private

  def gameplay_params
    params.require(:gameplay).permit(:title, :link,:description, :game_id)
  end

end
