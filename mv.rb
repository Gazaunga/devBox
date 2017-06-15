src_dir = "/full_path/to_some/ex_file.txt"

 dst_dir = "/full_path/target_dir"

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
