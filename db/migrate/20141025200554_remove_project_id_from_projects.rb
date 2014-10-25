class RemoveProjectIdFromProjects < ActiveRecord::Migration
  def change
    remove_index :projects, :project_id
    remove_column :projects, :project_id, :integer
  end
end
