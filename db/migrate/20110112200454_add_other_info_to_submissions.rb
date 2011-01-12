class AddOtherInfoToSubmissions < ActiveRecord::Migration
  def self.up
    add_column :submissions, :authors, :string
    add_column :submissions, :body, :text
  end

  def self.down
    remove_column :submissions, :body
    remove_column :submissions, :authors
  end
end
