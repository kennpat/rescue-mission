class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
    	t.integer :question_id, null: false
    	t.string :answer_text, null: false
    	t.boolean :best?
    	t.timestamps
    end
  end
end
