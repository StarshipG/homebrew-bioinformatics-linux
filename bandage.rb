class LinuxRequirement < Requirement
  fatal true
  satisfy OS.linux?
  def message
    "Bandage can be installed on Mac with 'brew cask install bandage'."
  end
end

class Bandage < Formula
  desc "Bioinf App for Navigating De novo Assembly Graphs Easily"
  homepage "https://rrwick.github.io/Bandage/"
  # doi "10.1101/018333"
  # tag "bioinformatics"

  url "https://github.com/rrwick/Bandage/releases/download/v0.8.0/Bandage_Ubuntu_dynamic_v0_8_0.zip"
  sha256 "cea4466973949910c4d1deb7cd92b5ec0511247c63a2ebdbd927b41cac10bade"

  depends_on LinuxRequirement

  def install
    bin.install "Bandage"
    pkgshare.install "sample_LastGraph"
    doc.install "dependencies"
  end

  test do
    # Bandage is a GUI with no command line capability
  end
end
