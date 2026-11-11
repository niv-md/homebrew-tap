class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.34"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.34/niv-0.2.34-darwin-arm64"
      sha256 "d52b3254fd484e836e790ab77d72f24fc850097c7007a93965f0610480b1e74c"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.34/niv-0.2.34-darwin-x64"
      sha256 "cb23c689883bed73ba7121b5984373ca359ab5e9650006a19d021ee23bfb444c"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
