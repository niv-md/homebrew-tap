class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.22"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.22/niv-0.2.22-darwin-arm64"
      sha256 "54dc95ea1b72fb09b22136b7a10423b2d47bd5e033a2cbcdee70d8fea68b9f2d"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.22/niv-0.2.22-darwin-x64"
      sha256 "87ea3b42a579e461cba9d9c6736f5732476d2ce0d2b7737cbbe518ab33979ee8"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
