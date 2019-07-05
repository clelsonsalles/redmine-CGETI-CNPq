class CreateVigencias < ActiveRecord::Migration
  def change
    create_table :vigencias do |t|
      t.date :inicio
      t.date :fim
      t.string :prazo
      t.string :motivo
      t.text :observacoes

      t.references :contrato, foreign_key: true
    end
  end
end
