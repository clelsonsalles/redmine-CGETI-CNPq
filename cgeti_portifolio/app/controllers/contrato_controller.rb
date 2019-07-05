class ContratoController < ApplicationController

  helper :projects
  helper :queries
  helper :issues
  helper :application

  def index
     @project = Project.find(params[:project_id])
     @contrato = Contrato.find_by(project_id: @project.id)

     @queryOS = IssueQuery.find(Setting.plugin_cgeti_portifolio['id_query_lista_os'])
     @issuesOrdensServicos = find_issues_with_query(@queryOS)

     trackerOS = Tracker.find(Setting.plugin_cgeti_portifolio['id_tracker_os'])
     @issuesOS = Issue.where(:project => @project).where(:tracker => trackerOS)

     if @contrato.nil?
        redirect_to new_contrato_path(project_id: params[:project_id])
     end
  end

  def edit
    @contrato = Contrato.find(params[:id])
    @project = @contrato.project
  end

  def update
    valores = params.require(:contrato).permit(:numero, :objeto, :contratada, :cnpjContratada, :SEIcontratacao, :SEIedital, :SEIcontrato, :observacoes, :prazoContratacao, :valorTotal, :dataAssinatura, :dataPublicacao)
    contrato = Contrato.find(params[:id])

    contrato.update(valores)
    projeto = Project.find(params[:contrato][:id_projeto])
    contrato.project = projeto


    redirect_to contrato_index_path(project_id: projeto.id)

  end


  def destroy
  end

  def new
     @project = Project.find(params[:project_id])
     @contrato = Contrato.new
  end

  def create

    valores = params.require(:contrato).permit(:numero, :objeto, :contratada, :cnpjContratada, :SEIcontratacao, :SEIedital, :SEIcontrato, :observacoes, :prazoContratacao, :valorTotal, :dataAssinatura, :dataPublicacao)
    contrato = Contrato.create(valores)

    projeto = Project.find(params[:contrato][:id_projeto])
    contrato.project = projeto
    contrato.save

    redirect_to contrato_index_path(project_id: projeto.id)

  end


  def list
    @queryOS = IssueQuery.find( Setting.plugin_cgeti_portifolio['id_query_lista_os'] )
    @issuesOrdensServicos = find_issues_with_query(@queryOS)
    @contratos = Contrato.all.includes(:project)

    projetoWikiGestao =  Setting.plugin_cgeti_portifolio['contrato_wiki_inicial'].split(':')
    @wikiContratoString = "{{include(" + projetoWikiGestao[0] + ":" + projetoWikiGestao[1] + ")}}"

  end


  def find_issues_with_query(query)
    Issue.where(
         query.statement)
  end

end
