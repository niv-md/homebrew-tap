class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.32"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.32/niv-0.2.32-darwin-arm64"
      sha256 "80cf1e738aa1dae630ff724cebd5a71c14e2a3161834a8158a394471fb193d76"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.32/niv-0.2.32-darwin-x64"
      sha256 "369f4eaf61af26f613edb50705e6c0f026725c219e1c05ea3449c9c5a3555eaf"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
