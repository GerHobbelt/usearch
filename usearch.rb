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
    # Create a libexec directory and extract the archive there
    libexec.install Dir["*"]

    # Create symlinks to the necessary files in the Cellar's include and lib directories
    include.install_symlink Dir["#{libexec}/usearch.h"]
    lib.install_symlink Dir["#{libexec}/libusearch_c.a"]
  end
end