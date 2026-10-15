class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.1/niv-0.2.1-darwin-arm64"
      sha256 "273e017839104cb05054fbfbe478149e882886a4b1458976b6e0811e86369036"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.1/niv-0.2.1-darwin-x64"
      sha256 "c899ac9f843164afb204db599c806c14dfbd1f726b4143a2e2639e24f8d19aae"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
