require 'open-uri'
require 'zip'

# URL of the zip file containing libusearch_c.a and usearch.h
zip_file_url = 'https://github.com/gurgenyegoryan/usearch/releases/download/v0.1.1/usearch_macOS_1.2.0.zip'

# Path to where you want to extract the files
extract_path = '/tmp/usearch/'

# Ensure the extraction directory exists
Dir.mkdir(extract_path) unless Dir.exist?(extract_path)

# Download the zip file and save it to a temporary location
zip_temp_path = '/tmp/usearch_temp.zip'
open(zip_temp_path, 'wb') do |file|
  file << URI.open(zip_file_url).read
end

# Extract the contents of the zip file
Zip::File.open(zip_temp_path) do |zip_file|
  zip_file.each do |entry|
    entry_path = File.join(extract_path, entry.name)
    entry.extract(entry_path)
  end
end

# Move the extracted files to the desired locations
File.rename(File.join(extract_path, 'libusearch_c.a'), '/usr/local/lib/libusearch_c.a')
File.rename(File.join(extract_path, 'usearch.h'), '/usr/local/include/usearch.h')

# Clean up the temporary files and directory
File.delete(zip_temp_path)
Dir.delete(extract_path)

puts 'usearch files have been successfully installed!'