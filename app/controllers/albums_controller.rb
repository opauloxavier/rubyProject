class AlbumsController < ApplicationController
  def new
    @album = Album.new
  end
  def create
    @album = Album.new(album_params)
    if @album.save
      flash[:success] = "Genero inserido com sucesso!"
      render 'new'
    else
      flash[:danger] = "Algo deu errado! Tente novamente"
      render 'new'
    end
  end
  def index
    @albums=Album.find_each
  end

  private

  def album_params
    params.require(:albums).permit(:name, :ano,:artists_id)
  end
end