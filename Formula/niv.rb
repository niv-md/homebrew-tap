class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.42"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.42/niv-0.2.42-darwin-arm64"
      sha256 "17259fd4cc07c42f6390c149dcdf10c41375cef25be4e882d8d0ead07f876732"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.42/niv-0.2.42-darwin-x64"
      sha256 "aab8a5f982c87f1357d0a6589b64ed5b80ace35b6d0479f46aff235ccb68d9e9"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
