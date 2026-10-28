class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.7"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.7/niv-0.2.7-darwin-arm64"
      sha256 "d5980d48a34ab6b6042da2c3226fae0a46c429c9c9ab94a7dc79d1c18d318c33"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.7/niv-0.2.7-darwin-x64"
      sha256 "234dfd2345353879100d4b990c932883a2d1cd383db73bbefc2d17c03d76cdc6"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
