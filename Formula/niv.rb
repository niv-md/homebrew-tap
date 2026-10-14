class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.1.0/niv-0.1.0-darwin-arm64"
      sha256 "111757c7bb9eb940730ba566bd272daaf65c8956436ffb491f4f231d35e18126"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.1.0/niv-0.1.0-darwin-x64"
      sha256 "d66844c466edf925b0e5a129f185165405fc19a17cdf63304d765aae88bf905a"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
