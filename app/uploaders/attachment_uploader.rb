# encoding: utf-8

class AttachmentUploader < CarrierWave::Uploader::Base

 
  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog
  
  #storage :s3   -> Need to use in case of AWS or heroku live
  
  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
  def cache_dir
  "#{Rails.root}/tmp/uploads"
  end
  
  def extension_white_list
      %w(pdf doc docx)
   end
 

end
