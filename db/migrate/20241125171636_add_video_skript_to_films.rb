class AddVideoSkriptToFilms < ActiveRecord::Migration[7.2]
  def change
  add_column :films, :video_script, :text
  #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")  
  end
end
