class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :phone_no
      t.text :address
      t.references :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
