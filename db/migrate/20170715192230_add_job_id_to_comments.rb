class AddJobIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :job, index: true
  end
end
