class ChangeDataTypeForContactno < ActiveRecord::Migration
  def self.up
    change_table :jobs do |t|
      t.change :contactno, :string
    end
  end
  def self.down
    change_table :jobs do |t|
      t.change :contactno, :integer
    end
  end
end
