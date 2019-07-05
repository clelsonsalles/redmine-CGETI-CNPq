class AddDatavigenciaToContratos < ActiveRecord::Migration
  def change
    add_column :contratos, :inicioVigencia, :date
    add_column :contratos, :fimVigencia, :date
  end
end
