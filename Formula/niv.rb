class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.4/niv-0.2.4-darwin-arm64"
      sha256 "7ea93f7aaa229140623131e2b5d842a98e6b02c2239a5f680db28c96546c6fe1"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.4/niv-0.2.4-darwin-x64"
      sha256 "cec2ae55810a13ed6d6f59e7c310b2963b6114ea03e6cf66f8475be98f130b50"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
