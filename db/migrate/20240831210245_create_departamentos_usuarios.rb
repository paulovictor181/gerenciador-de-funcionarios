class CreateDepartamentosUsuarios < ActiveRecord::Migration[7.2]
  def change
    create_table :departamentos_usuarios do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :departamento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
