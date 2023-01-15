class AddUserRefToSearches < ActiveRecord::Migration[7.0]
  def change
    add_reference :searches, :user, null: false, foreign_key: true
  end
end
