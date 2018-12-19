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
    referencial = Referencial.find(params[:alinhamento][:id_referencial])
    projeto = Project.find(params[:alinhamento][:id_projeto])

    valores = params.require(:alinhamento).permit(:colaboracao, :tipo, :descricao)
    alinhamento = Alinhamento.create(valores)
    alinhamento.referencial = referencial
    alinhamento.project = projeto
    alinhamento.save()

    redirect_to alinhamentos_url
  end

end
