class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|
      t.string :email
      t.boolean :completed_survey, default: false
      t.references :survey, index: true
    end
  end
  
  def down
    drop_table :users
  end
end
