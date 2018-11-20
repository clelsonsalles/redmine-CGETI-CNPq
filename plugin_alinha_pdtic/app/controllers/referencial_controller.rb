class ReferencialController < ApplicationController
  def index
    @referencias = Referencial.where(principal: nil)
  end

  def edit
    @referencial = Referencial.find(params[:id])
  end

  def update
    valores = params.require(:referencial).permit(:identificador, :tipo, :titulo, :descricao)
    referencial = Referencial.find(params[:id])
    @referencialPai = Referencial.find(params[:page][:id_pai])
    referencial.principal = @referencialPai
    referencial.update(valores)
    redirect_to referenciais_url    
  end

  def destroy
    id = params[:id]
    Referencial.destroy id
    redirect_to referenciais_url
  end

  def new
    @referencial = Referencial.new
  end

  def novo_filho
    @referencialPai =  Referencial.find(params[:id])
    @referencial = Referencial.new
  end

  def create
    valores = params.require(:referencial).permit(:identificador, :tipo, :titulo, :descricao)
    referencial = Referencial.create(valores)
    redirect_to referenciais_url
  end

  def novo_filho_create
    valores = params.require(:referencial).permit(:identificador, :tipo, :titulo, :descricao)
    referencial = Referencial.create(valores)
    @referencialPai = Referencial.find(params[:referencial][:id_pai])
    referencial.principal = @referencialPai
    referencial.save
    redirect_to referenciais_url
  end




end
