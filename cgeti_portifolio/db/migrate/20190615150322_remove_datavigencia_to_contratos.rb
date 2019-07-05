class RemoveDatavigenciaToContratos < ActiveRecord::Migration
  def change
    remove_column :contratos, :periodoVigencia
    remove_column :contratos, :inicioVigencia
    remove_column :contratos, :fimVigencia
  end
end
