class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :author
      t.integer :rating
      t.text :review
      t.date :readdate

      t.timestamps
    end
  end
end
