class CreateBookmarks < ActiveRecord::Migration[7.2]
  def change
    create_table :bookmarks do |t|
      t.timestamps
      t.references :user, foreign_key: true
      t.references :board, foreign_key: true
    end
  end
end
