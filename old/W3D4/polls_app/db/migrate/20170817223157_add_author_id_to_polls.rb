class AddAuthorIdToPolls < ActiveRecord::Migration[5.1]
  def change

    add_column :polls, :author_id, :integer, uniqueness: true

  end
end
