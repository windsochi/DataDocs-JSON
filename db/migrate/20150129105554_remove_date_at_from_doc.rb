class RemoveDateAtFromDoc < ActiveRecord::Migration
  def change
    remove_column :docs, :date_at, :text
  end
end
