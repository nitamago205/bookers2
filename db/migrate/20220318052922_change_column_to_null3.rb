class ChangeColumnToNull3 < ActiveRecord::Migration[6.1]
  def change
    change_column :books, :title,:string, null: true
    change_column :books, :body,:text, null: true
  end
end
