class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.24"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.24/niv-0.2.24-darwin-arm64"
      sha256 "cd88f0f639a10aff3da99e3a05180f487113592c2fd2f14f8c3b25fb2b3025e7"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.24/niv-0.2.24-darwin-x64"
      sha256 "2ba527d0a938c2a00c1c76ab3dd8cbde54fb4be02e1c3ecd1572a15065eda526"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
