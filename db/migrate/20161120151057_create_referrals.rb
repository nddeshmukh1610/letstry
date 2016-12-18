class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.string :fname
      t.string :lname
      t.string :company
      t.string :comurl
      t.string :designation
      t.integer :currsalary
      t.integer :expsalary
      t.integer :exp
      t.integer :location_id
      t.integer :mode_id
      t.integer :jtype_id
      t.integer :nperiod
      t.integer :gender_id
      t.string :contactemail
      t.integer :contactno
      t.string :resume
      t.string :attachment
      t.integer :jobid

      t.timestamps null: false
    end
  end
end
