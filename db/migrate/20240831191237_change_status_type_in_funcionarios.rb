class ChangeStatusTypeInFuncionarios < ActiveRecord::Migration[7.2]
  def change
    change_column :funcionarios, :status, :integer, using: 'status::integer'
  end
end
