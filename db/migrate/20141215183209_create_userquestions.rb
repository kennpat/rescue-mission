class CreateUserquestions < ActiveRecord::Migration
  def change
    create_table :userquestions do |t|
    	t.integer :user_ID, null: false
    	t.integer :question_ID, null: false
    end
  end
end
