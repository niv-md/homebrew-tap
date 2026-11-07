class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.29"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.29/niv-0.2.29-darwin-arm64"
      sha256 "57c67994c643ddfa15997599d59cc3fe1b8013e5e184848ae2a4c3edf77fdd18"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.29/niv-0.2.29-darwin-x64"
      sha256 "53dcabe2dfb202e16ce28a8ce0adc1d3493137e17809125f0d800366f546b8c1"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
