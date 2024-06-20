class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :emp_code
      t.string :name

      t.timestamps

      # BTDM に必要なカラムを追加する
      t.integer :bitemporal_id
      t.datetime :valid_from
      t.datetime :valid_to
      t.datetime :transaction_from
      t.datetime :transaction_to
    end
  end
end
