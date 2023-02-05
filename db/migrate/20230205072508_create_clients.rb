class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.uuid :uuid, null: false
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.boolean :active, default: true
      t.boolean :trial, default: false
      t.timestamp :trial_started_at
      t.timestamp :trial_finished_at
      t.timestamp :suspended_at

      t.timestamps
    end
  end
end
