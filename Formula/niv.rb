class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.13"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.13/niv-0.2.13-darwin-arm64"
      sha256 "6e4e491696de3e560f7e56de10fbaf7e90fc823e4ae009220d72cf241891d28c"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.13/niv-0.2.13-darwin-x64"
      sha256 "1e595dfbf48faa0669c1212bdd3360fb9d1bf1ac2e42d584936bc62e5c0ba03e"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
