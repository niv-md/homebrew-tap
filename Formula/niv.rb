class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.39"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.39/niv-0.2.39-darwin-arm64"
      sha256 "92549676b3860ffde90d71360282c33663afdf4114062012ade9bb2846e19827"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.39/niv-0.2.39-darwin-x64"
      sha256 "50b1d0aec88943eb2182411617fed7b5fdbc69c0dadd5aac41e7b586a21ceca8"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
