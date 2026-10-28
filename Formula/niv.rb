class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.6"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.6/niv-0.2.6-darwin-arm64"
      sha256 "a25805726b9f386c95cef05022973836f75c8b08edee955a12b09dd1e4dddd66"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.6/niv-0.2.6-darwin-x64"
      sha256 "e4ec2f76702e9bb9422f68a4885cdf95b2aa345a98fc11fceb92e648c9a46f87"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
