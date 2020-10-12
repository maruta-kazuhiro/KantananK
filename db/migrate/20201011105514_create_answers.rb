class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string      :answer2_1
      t.string      :answer2_2
      t.string      :answer2_3
      t.references :user,               null:false, foreign_key:true
      t.references :ank,                null:false, foreign_key:true
      t.timestamps
    end
  end
end
