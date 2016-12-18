class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :comurl
      t.string :designation
      t.integer :minsalary
      t.integer :maxsalary
      t.integer :minexp
      t.integer :maxexp
      t.integer :category_id
      t.integer :location_id
      t.integer :mode_id
      t.integer :jtype_id
      t.integer :nperiod
      t.integer :gender_id
      t.string :contactperson
      t.string :contactemail
      t.integer :contactno
      t.string :description

      t.timestamps null: false
    end
  end
end
