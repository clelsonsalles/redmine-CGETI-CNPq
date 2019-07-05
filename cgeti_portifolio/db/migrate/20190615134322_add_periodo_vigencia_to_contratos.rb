class AddPeriodoVigenciaToContratos < ActiveRecord::Migration
  def change
    add_column :contratos, :periodoVigencia, :string
  end
end
