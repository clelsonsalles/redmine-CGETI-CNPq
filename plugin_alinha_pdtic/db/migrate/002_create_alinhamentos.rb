class CreateAlinhamentos < ActiveRecord::Migration
  def change
    create_table :alinhamentos do |t|
      t.integer :colaboracao
      t.string :tipo
      t.text :descricao
      t.references :referencial, index: true, foreign_key: true
      t.references :project, foreign_key: true
    end
  end
end
