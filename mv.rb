src_dir = "/gazbit/devBox"

 dst_dir = "/gazbit"

 #Use the method below to do the moving
 move_src_to_target_dir(src_dir, dst_dir)



 def archive_src_to_dst_dir(src_dir, dst_dir)

     if File.exist ? (src_dir)

     puts "about to move this file:  #{src_dir}"

     FileUtils.mv(src_dir, dst_dir)
 else

     puts "can not find source file to move"

 end
 end
##########################

#!/usr/bin/env ruby

require 'fileutils'

# __FILE__

dots=[".bash_aliases",".bash_functions",".bash_profile",".bashrc",".profile",".lesskey",".nanorc",".screenrc","gitctl","pok3r"]

dirs=["/.config","/.local","/bin",]

FileUtils.mv('#{dots}', '#{tmp_dir}')
FileUtils.mv_f('#{dirs}', '#{tmp_dir}')

#########

Dir.glob("*.md") {|filename|
  file = File.new(filename)
  mtime = file.mtime
  new_filename = "#{mtime.year}-#{mtime.month}-#{mtime.day}.pdf"
  puts "Renaming #{filename} to #{new_filename} ..."
  File.rename(filename, new_filename)
}
