class SongsController < ApplicationController
  def show 
    @song = Song.find(params[:id])
  end 

  def new 
    @song = Song.new 
  end 

  def create 
    @song = Song.new(song_params)
  if @song.save 
    redirect_to song_path(@song)
  else 
    render :new 
  end 
end

  private

  def song_params 
    params.permit(:title, :released, :artist_name, :genre)
  
end
