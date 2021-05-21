require 'yaml'
require 'csv'


arr_of_hashes = CSV.table("sample_csv_data.csv")
#puts arr_of_hashes

#table = File.p('sample_csv_data.csv')
 #
  #CSV.foreach( "sample_csv_data.csv", :col_sep => ',', :row_sep => :auto, :quote_char => ":" ) do |row|
    ##hash1 = row.to_h
    #puts row.to_yaml
    #puts "--------------"
  #end

  Project_data = Hash.new
 
 sh_arr = CSV.read("sample_csv_data.csv", :headers => true).map(&:to_h) 
 puts sh_arr.class
 puts sh_arr

 #
  #=>"booker12", "Identifier"=>"9012", "One-timepassword"=>"12se74", "Recoverycode"=>"rb9012", "Firstname"=>"Rachel", "Lastname"=>"Booker", "Department"=>"Sales", "Location"=>"Manchester"}
 #{"sername"=>"grey07", "Identifier"=>"2070", "One-timepassword"=>"04ap67", "Recoverycode"=>"lg2070", "Firstname"=>"Laura", "Lastname"=>"Grey", "Department"=>"Depot", "Location"=>"London"}
 #

Project_data["Project_name"]=sh_arr

open("sample_yaml_data.csv", 'w') { |f| f.write(Project_data.to_yaml) }
