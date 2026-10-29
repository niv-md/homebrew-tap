class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.16"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.16/niv-0.2.16-darwin-arm64"
      sha256 "1b5e9e815a033e4212f1c1424ba2f8abbe3e19ba25aa7e3c533412b9001a2b16"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.16/niv-0.2.16-darwin-x64"
      sha256 "5b08c4d8d127e57bfd46279495cbf1f75a8e44abe740b82a50ec598e2cf6a872"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
