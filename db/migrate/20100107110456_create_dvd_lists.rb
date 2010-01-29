class CreateDvdLists < ActiveRecord::Migration
  def self.up
    create_content_table :dvd_lists do |t|
      t.string :id_of_dvd 
      t.string :id_of_product 
      t.string :option_id_of_product 
      t.string :cart_link 
      t.string :title 
      t.string :talk1 
      t.string :talk2 
      t.string :short_story_guide 
      t.string :long_story_guide 
      t.string :satsang_curriculum 
      t.string :video_description_file 
    end
    
    
    ContentType.create!(:name => "DvdList", :group_name => "DvdList")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'DvdList'])
    CategoryType.all(:conditions => ['name = ?', 'Dvd List']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :dvd_list_versions
    drop_table :dvd_lists
  end
end
