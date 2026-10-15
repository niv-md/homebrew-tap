class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.0/niv-0.2.0-darwin-arm64"
      sha256 "4806fad301c123856d356130127cd1969bc8d4f103b45d6587e824868dd9c161"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.0/niv-0.2.0-darwin-x64"
      sha256 "ed2427de940d6179b8d25a6c96a40be9918fa4a9614d6f5ce41b384318b1c5a9"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
