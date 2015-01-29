class AddDateAtToDoc < ActiveRecord::Migration
  def change
    add_column :docs, :date_at, :text
  end
end
