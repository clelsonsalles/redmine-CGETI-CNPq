class AlinhamentoController < ApplicationController
  def index
    @referencias = Alinhamento.where(project: @project)
  end

  def edit
    @alinhamento = Alinhamento.find(params[:id])
  end

  def update
    valores = params.require(:alinhamento).permit(:colaboracao, :tipo, :descricao)
    alinhamento = Alinhamento.find(params[:id])
    alinhamento.update(valores)
    redirect_to alinhamentos_url    
  end

  def destroy
    id = params[:id]
    Alinhamento.destroy id
    redirect_to alinhamentos_url
  end

  def new
    @alinhamento = Alinhamento.new
  end

  def create
    valores = params.require(:alinhamento).permit(:colaboracao, :tipo, :descricao)
    alinhamento = Alinhamento.create(valores)
    redirect_to alinhamentos_url
  end

end
