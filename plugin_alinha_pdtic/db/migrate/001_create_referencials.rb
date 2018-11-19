class CreateReferencials < ActiveRecord::Migration
  def change
    create_table :referencials do |t|
      t.string :identificador
      t.string :titulo
      t.text :descricao
      t.string :tipo
      t.references :principal, index: true
    end
  end
end
