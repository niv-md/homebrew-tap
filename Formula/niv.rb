class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.19"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.19/niv-0.2.19-darwin-arm64"
      sha256 "2d2cac4a7c60e7a7ea62dc538d3afc1214eae26fcf71fcf6d63c2cd7c342dd8d"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.19/niv-0.2.19-darwin-x64"
      sha256 "f45c5a395d09389f0c7b15be2953673dc4470a804dc4c7bc96a9dad081ea571a"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
