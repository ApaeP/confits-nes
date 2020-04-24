class RoomsController < ApplicationController
  def update
    @room = current_user.room
    @room.update(room_params)
    @category = @room.category
    if @room.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  private

  def room_params
    params.require(:room).permit(:room)
  end
end
