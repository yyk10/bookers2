class AddCaptionToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :caption, :text
  end
end
