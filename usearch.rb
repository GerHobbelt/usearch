class UsearchLibrary < Formula
    desc "Faster & Smaller Single-File Search Engine for Vectors & Texts"
    homepage "https://unum-cloud.com"
    url "https://example.com/path/to/source/usearch_macOS.tar.gz"  # Replace with the actual URL to your source files
    sha256 "..."  # Replace with the actual SHA256 checksum
  
    def install
      # Extract the source archive
      system "unzip", "usearch_macOS.zip"  # Replace with the actual archive file name
  
      # Move files to appropriate locations
      lib.install "libusearch_c.a"  # Move lib.a to /usr/local/lib/
      include.install "usearch.h"  # Move usearch.h to /usr/local/include/
    end
  end
  