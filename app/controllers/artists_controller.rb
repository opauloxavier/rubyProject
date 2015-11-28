class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end
  def show
    @artist = Artist.find_by name: params[:name]
    @genero = Genero.find(@artist.generos_id)
    @albums = Album.where artists_id: @artist.id
    @musicas = Musica.where artists_id: @artist.id
  end
  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      flash[:success] = "Artista inserido com sucesso!"
      render 'new'
    else
      flash[:danger] = "Algo deu errado! Tente novamente"
      render 'new'
    end
  end
  def index
    @artist=Artist.find_each
  end

  private
  def artist_params
    params.require(:artists).permit(:name, :generos_id)
  end

end
