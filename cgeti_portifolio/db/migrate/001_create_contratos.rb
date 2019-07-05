class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.string :numero
      t.date :dataAssinatura
      t.date :dataPublicacao

      t.string :SEIcontratacao
      t.string :SEIedital
      t.string :SEIcontrato
      
      t.string :contratada
      t.string :cnpjContratada

      t.decimal :valorTotal
      t.text :objeto
      t.text :observacoes
      t.string :prazoContratacao
      t.references :project, foreign_key: true
    end
  end
end
