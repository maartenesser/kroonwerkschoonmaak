class CreateInterestedUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :interested_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :company_kind

      t.timestamps
    end
  end
end
