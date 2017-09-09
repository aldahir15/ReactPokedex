class RenameAnswerChoicesTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :answerchoices, :answer_choices
  end
end
