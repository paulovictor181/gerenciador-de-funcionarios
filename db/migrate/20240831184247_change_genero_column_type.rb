class ChangeGeneroColumnType < ActiveRecord::Migration[7.2]
  def change
    remove_column :funcionarios, :genero, :string

    add_column :funcionarios, :genero, :integer
  end
end
