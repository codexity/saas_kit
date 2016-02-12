class CreateSaasKitAccounts < ActiveRecord::Migration
  def change
    create_table :saas_kit_accounts do |t|
      t.string :email, index: true
      t.string :first_name
      t.string :last_name
      t.integer :status, default: 0
      t.string :language
      t.integer :owner_id, index: true
      t.string :owner_type, index: true
      t.timestamps null: false
    end
  end
end
