class RemoveImgFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :img, :string
  end
end
