class AddBooknameToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :bookname, :string
  end
end
