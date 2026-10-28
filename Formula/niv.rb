class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.8"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.8/niv-0.2.8-darwin-arm64"
      sha256 "441dea0c2999848d70eb5ca96591b5c3e72c5e4fb5758a167bc777b1cac5a114"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.8/niv-0.2.8-darwin-x64"
      sha256 "5eab7ecb2a98e066edf37fa0ee5798a01bb8c57bed06e8ea9f454e8557668a52"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
