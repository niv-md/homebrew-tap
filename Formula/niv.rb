class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.5"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.5/niv-0.2.5-darwin-arm64"
      sha256 "8dbdab1596cb69e434418c6df7d747e7959f403729b4f09764b9357cf578d3fd"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.5/niv-0.2.5-darwin-x64"
      sha256 "a6f592a169793ebca119f2eff33ac4254e811e09a6b9da1ad05f4fd145adbd50"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
