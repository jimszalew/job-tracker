class AddCommentColumnOnJobsTable < ActiveRecord::Migration[5.1]
  def change
    add_reference :jobs, :comment, index: true
  end
end
