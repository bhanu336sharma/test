class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :phone_no
      t.text :address
      t.string :subject
      t.string :image

      t.timestamps null: false
    end
  end
end
