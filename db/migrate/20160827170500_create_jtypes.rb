class CreateJtypes < ActiveRecord::Migration
  def change
    create_table :jtypes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
