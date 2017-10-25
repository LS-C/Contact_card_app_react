class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :title, :string
    add_column :users, :first, :string
    add_column :users, :last, :string
    add_column :users, :cell, :string
    add_column :users, :email, :string
    add_column :users, :street, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :postcode, :integer
    add_column :users, :picture, :string
    add_column :users, :gender, :string
  end
end
