class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :contactperson
      t.string :contactemail
      t.string :contactno
      t.string :company
      t.string :subject
      t.string :description

      t.timestamps null: false
    end
  end
end
