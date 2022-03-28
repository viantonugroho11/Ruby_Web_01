class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      # auto increment
      # t.integer :id, null: false, auto_increment: true
      t.string :name
      t.string :price

      t.timestamps
    end
  end
end
