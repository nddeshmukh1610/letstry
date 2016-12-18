class AddJapprovalToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :japproval_id, :string
  end
end
