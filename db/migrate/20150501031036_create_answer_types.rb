class CreateAnswerTypes < ActiveRecord::Migration
  def change
    create_table :answer_types do |t|
      t.string  "name",         limit: 50,   null: false
      t.string  "descrtiption", limit: 1000, null: false
      t.integer "active",       limit: 4,    null: false
      t.timestamps null: false
    end
  end
end
