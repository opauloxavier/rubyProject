class StaticPagesController < ApplicationController
  def home
    @artists = Artist.find_each(batch_size:4)
    @musics = Musica.find_each
    @generos = Genero.find_each
  end

  def sobre
  end
end
