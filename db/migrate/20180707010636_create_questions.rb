class CreateQuestions < ActiveRecord::Migration[5.1]
  def up
    create_table :questions do |t|
      t.text :body
      t.references :survey
    end
  end
  
  def down
    drop_table :questions
  end
end
