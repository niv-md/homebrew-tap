class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.3/niv-0.2.3-darwin-arm64"
      sha256 "f9cb95ad333d76e0cbb7e9d0fdd10c4995af339ae424207e25b4a02e59a0011f"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.3/niv-0.2.3-darwin-x64"
      sha256 "def27400aa34d843f298517ac397ce01a394934b97b3af6e0d918b958b02de5b"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
