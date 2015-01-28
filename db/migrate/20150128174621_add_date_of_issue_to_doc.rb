class AddDateOfIssueToDoc < ActiveRecord::Migration
  def change
    add_column :docs, :date_of_issue, :datetime
  end
end
