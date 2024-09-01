class AddCascadeDeleteToCargos < ActiveRecord::Migration[7.2]
  def change
   remove_foreign_key :funcionarios, :cargos if foreign_key_exists?(:funcionarios, :cargos)

   add_foreign_key :funcionarios, :cargos, on_delete: :cascade
  end
end
