class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.9"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.9/niv-0.2.9-darwin-arm64"
      sha256 "0003460a64c9bf755c8282cfbb9cb778e039f4e670fcf37c341487a5f587de62"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.9/niv-0.2.9-darwin-x64"
      sha256 "bfd70574ad17fb795c458e08c927ef1a34862608fa93abe43d881d6507ae6e06"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
