class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :question_id, null: false
      t.integer :answer_id, null: false
      t.timestamps
    end
    add_index :responses, :question_id
    add_index :responses, :answer_id
  end
end
