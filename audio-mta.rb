class AudioMta < Formula
  include Language::Python::Virtualenv

  desc "A cross-platform TUI to edit MP3 metadata and album art"
  homepage "https://github.com/RobZombie3434/audio-mta"
  
  # Replace URL with your actual release tarball URL once you publish a v0.1.0 release on GitHub
  url "https://github.com/RobZombie3434/audio-mta/archive/refs/tags/v0.1.0.tar.gz"
  
  # Replace with the sha256 checksum of your v0.1.0 release tarball
  sha256 "REPLACE_WITH_ACTUAL_SHA256" 
  
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    # Simple test to verify the CLI exists in the path
    system "#{bin}/audio-mta"
  end
end
