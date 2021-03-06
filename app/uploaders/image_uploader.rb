class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  if Rails.env.production?
    storage :fog
  else
    storage :file
  end
  # 

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process resize_to_fit: [50, 50]
  end
  version :medium do
    process resize_to_fit: [150, 150]
  end
  version :large do
    process resize_to_fit: [300, 300]
  end

   def extension_whitelist
     %w(jpg jpeg gif png)
   end
   
   def content_type_whitelist
    /image\//
   end


end
