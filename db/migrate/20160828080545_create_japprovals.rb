class CreateJapprovals < ActiveRecord::Migration
  def change
    create_table :japprovals do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
