class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.43"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.43/niv-0.2.43-darwin-arm64"
      sha256 "0648daf44386595210bc3f7f290ebb493215c561e497a479d2e625776ac5288e"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.43/niv-0.2.43-darwin-x64"
      sha256 "2e04a24329ba12b05223f52f8ea91a6caea3f0d719a76e50a7f37d464d7ec25e"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
