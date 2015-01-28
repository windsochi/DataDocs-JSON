class RemoveDateOfIssueFromDoc < ActiveRecord::Migration
  def change
    remove_column :docs, :date_of_issue, :date
  end
end
