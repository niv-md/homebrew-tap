class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.36"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.36/niv-0.2.36-darwin-arm64"
      sha256 "073f8223676e10289e5fded9c0685ba4eb5987b4df85ffbb8e42680d31af9060"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.36/niv-0.2.36-darwin-x64"
      sha256 "d208da2bb57da3577b5c78fe293cf71865f5fef312cf421fddd15be6268760c8"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
