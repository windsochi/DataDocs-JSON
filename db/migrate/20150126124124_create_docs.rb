class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.text :number
      t.text :link
      t.date :date_of_issue
      t.text :title
      t.text :description

      t.timestamps null: false
    end
  end
end
