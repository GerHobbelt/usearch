# This formula installs the mypackage package.
#
# Author: Your Name
# Upstream: https://github.com/yourname/mypackage

class Usearch < Formula
    desc "A description of your package."
    homepage "https://github.com/unum-cloud/usearch.git"
    url "https://github.com/gurgenyegoryan/usearch/releases/download/v0.1.1/usearch_macOS.zip"
    sha256 "97a2c814d9a60787d685832eb04b47c8a004459c9c862ffa451454f759a7868c"
  
    def install
      # Extract the archive.
      system "unzip usearch_macOS.zip"
  
      # Move the `lib.a` file to `/usr/local/lib`.
      system "mv libusearch_c_1.2.0.a /usr/local/lib"
  
      # Move the `usearch.h` file to `/usr/local/include`.
      system "mv usearch.h /usr/local/include"
    end
  end