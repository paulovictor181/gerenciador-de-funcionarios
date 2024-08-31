class RemoveRuaFromFuncionarios < ActiveRecord::Migration[7.2]
  def change
    remove_column :funcionarios, :rua, :string
  end
end
