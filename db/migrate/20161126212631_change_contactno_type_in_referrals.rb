class ChangeContactnoTypeInReferrals < ActiveRecord::Migration
  def self.up
    change_table :referrals do |t|
      t.change :contactno, :string
    end
  end
  def self.down
    change_table :referrals do |t|
      t.change :contactno, :integer
    end
  end
end
