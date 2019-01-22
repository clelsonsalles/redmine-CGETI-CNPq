class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :texto
      t.references :alinhamento, index: true, foreign_key: true
    end
  end
end
