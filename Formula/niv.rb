class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.26"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.26/niv-0.2.26-darwin-arm64"
      sha256 "503171ac072ccb9a9f903c65cda6a99984cea3457a8fe6fdb8dcef744c333c20"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.26/niv-0.2.26-darwin-x64"
      sha256 "ce8c23e6da0224193411f9588a3b5bf0e96b92d6c551700c0443e6f2ee70d18f"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
