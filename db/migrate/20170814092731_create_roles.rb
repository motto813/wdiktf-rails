class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.integer :actor_id
      t.integer :media_id
    end
  end
end
