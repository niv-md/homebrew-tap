class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.38"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.38/niv-0.2.38-darwin-arm64"
      sha256 "c2b4c2c946f28b41d223dbcd55cc1ffa63c85c2f4a6423f23b183185473d1c11"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.38/niv-0.2.38-darwin-x64"
      sha256 "ccf5bd0be9e2e134224356722b17e0a0a89dd30713ba5914f135f49469cd1327"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
