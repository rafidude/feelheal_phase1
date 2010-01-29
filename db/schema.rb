# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100129073046) do

  create_table "attachment_versions", :force => true do |t|
    t.integer  "attachment_id"
    t.integer  "version"
    t.string   "file_path"
    t.string   "file_location"
    t.string   "file_extension"
    t.string   "file_type"
    t.integer  "file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "published",       :default => false
    t.boolean  "deleted",         :default => false
    t.boolean  "archived",        :default => false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "attachments", :force => true do |t|
    t.integer  "version"
    t.integer  "lock_version",   :default => 0
    t.string   "file_path"
    t.string   "file_location"
    t.string   "file_extension"
    t.string   "file_type"
    t.integer  "file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "published",      :default => false
    t.boolean  "deleted",        :default => false
    t.boolean  "archived",       :default => false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "book_versions", :force => true do |t|
    t.integer  "book_id"
    t.integer  "version"
    t.string   "title"
    t.string   "language_of_translation"
    t.string   "title_in_language_of_translation"
    t.string   "publishers_name"
    t.string   "publishers_country"
    t.string   "publishers_web_address"
    t.string   "online_source"
    t.string   "name"
    t.boolean  "published",                        :default => false
    t.boolean  "deleted",                          :default => false
    t.boolean  "archived",                         :default => false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", :force => true do |t|
    t.integer  "version"
    t.integer  "lock_version",                     :default => 0
    t.string   "title"
    t.string   "language_of_translation"
    t.string   "title_in_language_of_translation"
    t.string   "publishers_name"
    t.string   "publishers_country"
    t.string   "publishers_web_address"
    t.string   "online_source"
    t.string   "name"
    t.boolean  "published",                        :default => false
    t.boolean  "deleted",                          :default => false
    t.boolean  "archived",                         :default => false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.integer  "category_type_id"
    t.integer  "parent_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "connectors", :force => true do |t|
    t.integer  "page_id"
    t.integer  "page_version"
    t.integer  "connectable_id"
    t.string   "connectable_type"
    t.integer  "connectable_version"
    t.string   "container"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "content_type_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "content_types", :force => true do |t|
    t.string   "name"
    t.integer  "content_type_group_id"
    t.integer  "priority",              :default => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dvd_list_versions", :force => true do |t|
    t.integer  "dvd_list_id"
    t.integer  "version"
    t.string   "id_of_dvd"
    t.string   "id_of_product"
    t.string   "option_id_of_product"
    t.string   "cart_link"
    t.string   "title"
    t.string   "talk1"
    t.string   "talk2"
    t.string   "short_story_guide"
    t.string   "long_story_guide"
    t.string   "satsang_curriculum"
    t.string   "video_description_file"
    t.string   "name"
    t.boolean  "published",              :default => false
    t.boolean  "deleted",                :default => false
    t.boolean  "archived",               :default => false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dvd_lists", :force => true do |t|
    t.integer  "version"
    t.integer  "lock_version",           :default => 0
    t.string   "id_of_dvd"
    t.string   "id_of_product"
    t.string   "option_id_of_product"
    t.string   "cart_link"
    t.string   "title"
    t.string   "talk1"
    t.string   "talk2"
    t.string   "short_story_guide"
    t.string   "long_story_guide"
    t.string   "satsang_curriculum"
    t.string   "video_description_file"
    t.string   "name"
    t.boolean  "published",              :default => false
    t.boolean  "deleted",                :default => false
    t.boolean  "archived",               :default => false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dynamic_view_versions", :force => true do |t|
    t.integer  "dynamic_view_id"
    t.integer  "version"
    t.string   "type"
    t.string   "name"
    t.string   "format"
    t.string   "handler"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "published",       :default => false
    t.boolean  "deleted",         :default => false
    t.boolean  "archived",        :default => false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "dynamic_views", :force => true do |t|
    t.integer  "version"
    t.integer  "lock_version",  :default => 0
    t.string   "type"
    t.string   "name"
    t.string   "format"
    t.string   "handler"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "published",     :default => false
    t.boolean  "deleted",       :default => false
    t.boolean  "archived",      :default => false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "email_messages", :force => true do |t|
    t.string   "sender"
    t.text     "recipients"
    t.text     "subject"
    t.text     "cc"
    t.text     "bcc"
    t.text     "body"
    t.string   "content_type"
    t.datetime "delivered_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "file_block_versions", :force => true do |t|
    t.integer  "file_block_id"
    t.integer  "version"
    t.string   "type"
    t.string   "name"
    t.integer  "attachment_id"
    t.integer  "attachment_version"
    t.boolean  "published",          :default => false
    t.boolean  "deleted",            :default => false
    t.boolean  "archived",           :default => false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "file_blocks", :force => true do |t|
    t.integer  "version"
    t.integer  "lock_version",       :default => 0
    t.string   "type"
    t.string   "name"
    t.integer  "attachment_id"
    t.integer  "attachment_version"
    t.boolean  "published",          :default => false
    t.boolean  "deleted",            :default => false
    t.boolean  "archived",           :default => false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_permissions", :force => true do |t|
    t.integer "group_id"
    t.integer "permission_id"
  end

  create_table "group_sections", :force => true do |t|
    t.integer "group_id"
    t.integer "section_id"
  end

  create_table "group_type_permissions", :force => true do |t|
    t.integer "group_type_id"
    t.integer "permission_id"
  end

  create_table "group_types", :force => true do |t|
    t.string   "name"
    t.boolean  "guest",      :default => false
    t.boolean  "cms_access", :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "group_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "html_block_versions", :force => true do |t|
    t.integer  "html_block_id"
    t.integer  "version"
    t.string   "name"
    t.text     "content",         :limit => 16777215
    t.boolean  "published",                           :default => false
    t.boolean  "deleted",                             :default => false
    t.boolean  "archived",                            :default => false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "html_blocks", :force => true do |t|
    t.integer  "version"
    t.integer  "lock_version",                      :default => 0
    t.string   "name"
    t.text     "content",       :limit => 16777215
    t.boolean  "published",                         :default => false
    t.boolean  "deleted",                           :default => false
    t.boolean  "archived",                          :default => false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "journal_versions", :force => true do |t|
    t.integer  "journal_id"
    t.integer  "version"
    t.string   "j_year"
    t.string   "season"
    t.string   "linked_pdf"
    t.text     "main_article"
    t.string   "main_article_link"
    t.text     "other_article"
    t.string   "name"
    t.boolean  "published",         :default => false
    t.boolean  "deleted",           :default => false
    t.boolean  "archived",          :default => false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "journals", :force => true do |t|
    t.integer  "version"
    t.integer  "lock_version",      :default => 0
    t.string   "j_year"
    t.string   "season"
    t.string   "linked_pdf"
    t.text     "main_article"
    t.string   "main_article_link"
    t.text     "other_article"
    t.string   "name"
    t.boolean  "published",         :default => false
    t.boolean  "deleted",           :default => false
    t.boolean  "archived",          :default => false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "link_versions", :force => true do |t|
    t.integer  "link_id"
    t.integer  "version"
    t.string   "name"
    t.string   "url"
    t.boolean  "new_window",      :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "published",       :default => false
    t.boolean  "deleted",         :default => false
    t.boolean  "archived",        :default => false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "links", :force => true do |t|
    t.integer  "version"
    t.integer  "lock_version",  :default => 0
    t.string   "name"
    t.string   "url"
    t.boolean  "new_window",    :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "published",     :default => false
    t.boolean  "deleted",       :default => false
    t.boolean  "archived",      :default => false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "page_route_options", :force => true do |t|
    t.integer  "page_route_id"
    t.string   "type"
    t.string   "name"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_routes", :force => true do |t|
    t.string   "name"
    t.string   "pattern"
    t.integer  "page_id"
    t.text     "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_versions", :force => true do |t|
    t.integer  "page_id"
    t.integer  "version"
    t.string   "name"
    t.string   "title"
    t.string   "path"
    t.string   "template_file_name"
    t.text     "description"
    t.text     "keywords"
    t.string   "language"
    t.boolean  "cacheable",          :default => false
    t.boolean  "hidden",             :default => false
    t.boolean  "published",          :default => false
    t.boolean  "deleted",            :default => false
    t.boolean  "archived",           :default => false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.integer  "version"
    t.integer  "lock_version",       :default => 0
    t.string   "name"
    t.string   "title"
    t.string   "path"
    t.string   "template_file_name"
    t.text     "description"
    t.text     "keywords"
    t.string   "language"
    t.boolean  "cacheable",          :default => false
    t.boolean  "hidden",             :default => false
    t.boolean  "published",          :default => false
    t.boolean  "deleted",            :default => false
    t.boolean  "archived",           :default => false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passage_versions", :force => true do |t|
    t.integer  "passage_id"
    t.integer  "version"
    t.string   "p_source"
    t.string   "p_title"
    t.text     "p_passage"
    t.text     "p_source_note"
    t.string   "ecard"
    t.string   "audio"
    t.string   "name"
    t.boolean  "published",       :default => false
    t.boolean  "deleted",         :default => false
    t.boolean  "archived",        :default => false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passages", :force => true do |t|
    t.integer  "version"
    t.integer  "lock_version",  :default => 0
    t.string   "p_source"
    t.string   "p_title"
    t.text     "p_passage"
    t.text     "p_source_note"
    t.string   "ecard"
    t.string   "audio"
    t.string   "name"
    t.boolean  "published",     :default => false
    t.boolean  "deleted",       :default => false
    t.boolean  "archived",      :default => false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", :force => true do |t|
    t.string   "name"
    t.string   "full_name"
    t.string   "description"
    t.string   "for_module"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portlet_attributes", :force => true do |t|
    t.integer "portlet_id"
    t.string  "name"
    t.text    "value"
  end

  create_table "portlets", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.boolean  "archived",      :default => false
    t.boolean  "deleted",       :default => false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "redirects", :force => true do |t|
    t.string   "from_path"
    t.string   "to_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_nodes", :force => true do |t|
    t.integer  "section_id"
    t.string   "node_type"
    t.integer  "node_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.string   "path"
    t.boolean  "root",       :default => false
    t.boolean  "hidden",     :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.string   "domain"
    t.boolean  "the_default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "taggable_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.integer  "assigned_by_id"
    t.integer  "assigned_to_id"
    t.integer  "page_id"
    t.text     "comment"
    t.date     "due_date"
    t.datetime "completed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thought_versions", :force => true do |t|
    t.integer  "thought_id"
    t.integer  "version"
    t.string   "language"
    t.string   "month"
    t.string   "day"
    t.text     "quote"
    t.string   "quote_by"
    t.text     "thought_matter"
    t.string   "name"
    t.boolean  "published",       :default => false
    t.boolean  "deleted",         :default => false
    t.boolean  "archived",        :default => false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thoughts", :force => true do |t|
    t.integer  "version"
    t.integer  "lock_version",   :default => 0
    t.string   "language"
    t.string   "month"
    t.string   "day"
    t.text     "quote"
    t.string   "quote_by"
    t.text     "thought_matter"
    t.string   "name"
    t.boolean  "published",      :default => false
    t.boolean  "deleted",        :default => false
    t.boolean  "archived",       :default => false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_group_memberships", :force => true do |t|
    t.integer "user_id"
    t.integer "group_id"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "first_name",                :limit => 40
    t.string   "last_name",                 :limit => 40
    t.string   "email",                     :limit => 40
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "expires_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
