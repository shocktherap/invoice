class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string   "owner_type"
      t.integer  "owner_id"
      t.string   "type"
      t.string   "file_file_name"
      t.string   "file_content_type"
      t.integer  "file_file_size"
      t.datetime "file_updated_at"
    end
  end
end
