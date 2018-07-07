class CreateAnswers < ActiveRecord::Migration[5.1]
  def up
    create_table :answers do |t|
      t.text :body
      t.references :question
      t.references :user
    end
  end
  
  def down
    drop_table :answers
  end
end
