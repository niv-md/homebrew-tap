class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.28"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.28/niv-0.2.28-darwin-arm64"
      sha256 "0de963227418fdb0ee8ace66186c22b635cf0f65b5870487ca703e1122d45faf"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.28/niv-0.2.28-darwin-x64"
      sha256 "d4f475150fac9c287ee91e7fc82508a03f7cafb5de78f7dd1365580dfe2f37ea"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
