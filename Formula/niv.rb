class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.11"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.11/niv-0.2.11-darwin-arm64"
      sha256 "f6499a624bb3e598ddfce77cd26f6c5a9c3fb8f9c14e42516c0912487de7ce05"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.11/niv-0.2.11-darwin-x64"
      sha256 "0294d5c6217c2e37938fc852d1db37579dcb0890c5267639317f7361d1165efa"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
