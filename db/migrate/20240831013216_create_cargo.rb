class CreateCargo < ActiveRecord::Migration[7.2]
  def change
    create_table :cargos do |t|
      t.string :nome
      t.text :descricao
      t.references :departamento, null: false, foreign_key: true
      t.integer :nivel
      t.decimal :salario_base, precision: 10, scale: 2
      t.text :requisitos
      t.text :beneficios
      t.integer :status
      t.timestamps
    end
  end
end
