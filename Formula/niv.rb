class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.10"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.10/niv-0.2.10-darwin-arm64"
      sha256 "f98d4cf102279190e487e05e33e53c8f9132d294375dfa3d21aa635f4fdde7c8"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.10/niv-0.2.10-darwin-x64"
      sha256 "2269e1eeb40d395c1bdeac0a6b3fe223f9861cf16d55cecc40ef94534ed484e5"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
