class VigenciaController < ApplicationController

  helper :projects

  def index
     @project = Project.find(params[:project_id])
     @contrato = Contrato.where(project: @project)
  end

  def edit
    @contrato = Contrato.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def new
     @project = Project.find(params[:project_id])
     @contrato = Contrato.new
  end

  def create
  end


  def list
  end


end
