class AudioMta < Formula
  include Language::Python::Virtualenv

  desc "A cross-platform TUI to edit MP3 metadata and album art"
  homepage "https://github.com/RobZombie3434/audio-mta"
  
  # Replace URL with your actual release tarball URL once you publish a v0.1.0 release on GitHub
  url "https://github.com/RobZombie3434/audio-mta/archive/refs/tags/v0.1.0.tar.gz"
  
  # Replace with the sha256 checksum of your v0.1.0 release tarball
  sha256 "72627342d51b776156e0e5d76b6c85974b74b79f7d46da599546fd219d1eae1c" 
  
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
