class CreateAnswerOptions < ActiveRecord::Migration
  def change
    create_table :answer_options do |t|
      t.column "answer_value", :string, :limit => 50, :null => false
      t.integer "order_no", :default => 0, :null => false
      t.timestamps null: false
      t.integer "amount", limit: 4,   default: 0, null: false
	  t.integer "question_id", limit: 4
	  t.integer "survey_id", limit: 4
	  t.integer "is_scale", limit: 4,   default: 0, null: false
	  t.integer "scale_weight", limit: 4,   default: 0, null: false
    end
  end

  def down
  	drop_table :answer_options
  end
end
