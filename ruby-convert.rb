#!/usr/bin/env ruby

PROJECT_ROOT = File.expand_path("../",__FILE__)

require 'fileutils'

tmp_dir = "#{PROJECT_ROOT}/tmp"
md_file = "#{PROJECT_ROOT}/*.md"
pdf_file = "*.pdf" # I don't think I need this
output = "pdf" # I don't think I need this

unless File.exists?(tmp_dir)
  FileUtils.makedirs(tmp_dir)
end

FileUtils.cp("#{input}","#{tmp_dir}", :verbose => true) #input no longer exists

FileUtils.cd("#{tmp_dir}") do
system("pandoc -o #{output} #{md_file}")
end
##
#CODE CODE CODE
# sh "pandoc -o #{pdf_file} #{md_file}"
##
FileUtils.mv("#{pdf_file}" "#{PROJECT_ROOT}")
FileUtils.rm_r(tmp_dir)
