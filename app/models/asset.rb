class Asset < ActiveRecord::Base

  convert_options = "-quality 60 -strip -gravity center -extent"
  has_attached_file :attachment,
                    :styles => {:mini => ["48x48^", :jpg], :small => ["100x100^", :jpg], :product => ["240x240^", :jpg], :large => ["600x600^", :jpg], :original => ["1024x768^", :jpg]},
                    :convert_options => {:mini => "#{convert_options} 48x48",
                                         :small => "#{convert_options} 100x100",
                                         :product => "#{convert_options} 240x240",
                                         :large => "#{convert_options} 600x600",
                                         :original => "#{original_convert_options} 1024x768"},
                    :default_style => :product,
                    :url => "/assets/photos/:style/:filename",
                    :path => "assets/photos/:style/:filename"


end
