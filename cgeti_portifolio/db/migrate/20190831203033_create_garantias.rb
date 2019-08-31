class CreateGarantias < ActiveRecord::Migration
  def change
    create_table :garantias do |t|
      t.date :inicio
      t.date :fim
      t.string :prazo
      t.string :tipo
      t.text :observacoes

      t.references :contrato, foreign_key: true
    end
  end
end
