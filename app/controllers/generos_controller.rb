class GenerosController < ApplicationController
  def new
    @genero = Genero.new
  end
  def show
    @genero = Genero.find(params[:id])
  end
  def create
    @genero = Genero.new(genero_params)
    if @genero.save
      flash[:success] = "Genero Criado com Sucesso"
      render 'show'
    else
      flash[:danger] = "Algo deu errado, tente novamente!"
      render 'new'
    end
  end
  def index
    @genero=Genero.find_each
  end
  private
    def genero_params
      params.require(:generos).permit(:name)
    end
end
