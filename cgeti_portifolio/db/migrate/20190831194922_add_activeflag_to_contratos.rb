class AddActiveflagToContratos < ActiveRecord::Migration
  def change
    add_column :contratos, :ativo, :boolean
  end
end
