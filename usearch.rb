# This formula installs the mypackage package.
#
# Author: Your Name
# Upstream: https://github.com/yourname/mypackage

class Usearch < Formula
  desc "A description of your package."
  homepage "https://github.com/unum-cloud/usearch.git"
  url "https://github.com/gurgenyegoryan/usearch/releases/download/v0.1.1/usearch_macOS_1.2.0.zip"
  sha256 "5e89f631d39a7db7f46d87d634904c8c93ae1d08a7fd787d3076a945ff32e4a4"

  def install
    # Extract the archive.
    system "usearch_macOS_1.2.0.zip"

    # Move the `lib.a` file to `/usr/local/lib`.
    system "mv libusearch_c.a /usr/local/lib/libusearch_c.a"

    # Move the `usearch.h` file to `/usr/local/include`.
    system "mv usearch.h /usr/local/include/"
  end
end