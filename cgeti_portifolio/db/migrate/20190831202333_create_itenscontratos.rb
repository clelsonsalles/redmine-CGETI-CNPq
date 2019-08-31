class CreateItemcontratos < ActiveRecord::Migration
  def change
    create_table :itemcontratos do |t|
      t.string :item
      t.string :unidade
      t.text :observacoes

      t.decimal :quantidade
      t.decimal :valorUnitario
      t.decimal :valorTotalItem
      t.references :contrato, foreign_key: true
    end
  end
end