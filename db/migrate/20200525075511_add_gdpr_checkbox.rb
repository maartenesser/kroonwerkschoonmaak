class AddGdprCheckbox < ActiveRecord::Migration[6.0]
  def change
    add_column :interested_users, :GDPRCompliance, :boolean
  end
end