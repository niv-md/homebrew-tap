class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.20"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.20/niv-0.2.20-darwin-arm64"
      sha256 "2189ce0384dc2e419bdb2d25e6254127cddee7aa5c59b072831028be24433e8f"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.20/niv-0.2.20-darwin-x64"
      sha256 "755efad741782a7b878d8fe940722ecb15e682841512873879227ddbdefde826"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
