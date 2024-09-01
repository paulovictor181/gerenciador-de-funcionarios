class AddCascadeDeleteToDepartamento < ActiveRecord::Migration[7.2]
  def change
    remove_foreign_key :cargos, :departamentos if foreign_key_exists?(:cargos, :departamentos)

    add_foreign_key :cargos, :departamentos, on_delete: :cascade
  end
end
