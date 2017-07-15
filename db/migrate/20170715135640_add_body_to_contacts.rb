class AddBodyToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :body, :string
  end
end
