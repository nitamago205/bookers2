class ChangeColumnToNotNull < ActiveRecord::Migration[6.1]
  def change
    change_column :books, :title,:string, null: false
    change_column :books, :body,:text, null: false
  end

 
end
