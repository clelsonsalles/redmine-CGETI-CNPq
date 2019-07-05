class ReferencialController < ApplicationController
  def index
    @referencias = Referencial.where(principal: nil)

    @chartReferencial = Hash.new
    @referencias.each_with_index do |referencial, index|
       @chartReferencial[referencial.identificador] = calculaQuantidadeAlinhamentos(referencial)
    end 
  end

  def calculaQuantidadeAlinhamentos(referencial)
     quantidade = 0
     if referencial.alinhamentos.any?
          quantidade += referencial.alinhamentos.length
     end

     filhosReferencial = referencial.filhos
     filhosReferencial.each_with_index do |filho, index|
        quantidade += calculaQuantidadeAlinhamentos(filho)
     end

     quantidade
  end


  def edit
    @referencial = Referencial.find(params[:id])
  end

  def update
    valores = params.require(:referencial).permit(:identificador, :tipo, :titulo, :descricao)
    referencial = Referencial.find(params[:id])
    if !(params[:page].nil? || params[:page][:id_pai].nil?)
      @referencialPai = Referencial.find(params[:page][:id_pai])
      referencial.principal = @referencialPai
    end
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
