class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :month_finished
      t.string :status

      t.timestamps null: false
    end
  end
end
