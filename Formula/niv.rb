class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.27"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.27/niv-0.2.27-darwin-arm64"
      sha256 "a260bfa6300692cac4759a8b5560de9c164656902bd9523b66f82a96172dc77d"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.27/niv-0.2.27-darwin-x64"
      sha256 "53314b48158f6d0957ba36bee4a4f99f7132b3a389a5a4fc21aeadf762c60850"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
