class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.37"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.37/niv-0.2.37-darwin-arm64"
      sha256 "cd812cad337f4a72fc81aea5c089af8376ef98a93b4a6c321f614270d03c3558"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.37/niv-0.2.37-darwin-x64"
      sha256 "a29856403e114c5c9469e9d90fbe7125aaf7524ac6c8bf153090a1f996d19cba"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
