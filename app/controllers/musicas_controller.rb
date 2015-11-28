class MusicasController < ApplicationController
  def new
    @musica = Musica.new
  end
  def create
    @musica = Musica.new(musica_params)
    if @musica.save
      flash[:success] = "Música inserida com sucesso!"
      render 'new'
    else
      flash[:danger] = "Algo deu errado! Tente novamente"
      render 'new'
    end
  end
  def index
    @musica = Musica.find_each
  end

  private

  def musica_params
    params.require(:musicas).permit(:name,:albums_id,:artists_id)
  end

end