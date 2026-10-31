class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.25"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.25/niv-0.2.25-darwin-arm64"
      sha256 "37edc5bdcc5fb9f3eb3876ba5dd61f2f71f10b970411126cc1821edf0ae9af12"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.25/niv-0.2.25-darwin-x64"
      sha256 "ad791461e527f019352ba88d603ccece4eccadfe5818980201ab64a9106bc504"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
