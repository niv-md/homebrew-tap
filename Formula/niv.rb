class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.17"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.17/niv-0.2.17-darwin-arm64"
      sha256 "66282e8e0ffefd92d5019546edd7c4c37c4c080b215027f0a1a0a2f91384fee1"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.17/niv-0.2.17-darwin-x64"
      sha256 "2d0951e53e861d194749c7206e0d72baec7ae742f3d08d3e7bfe76bb6e1df64a"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
