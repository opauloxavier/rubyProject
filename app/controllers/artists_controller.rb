class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end
  def show
    @artist = Artist.find_by name: params[:name]
    @genero = Genero.find(@artist.generos_id)
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

  private
  def artist_params
    params.require(:artists).permit(:name, :generos_id)
  end

end
