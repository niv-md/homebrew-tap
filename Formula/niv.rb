class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.40"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.40/niv-0.2.40-darwin-arm64"
      sha256 "711f46d7f53b68571a51892c48ac5777c32f5f952d59c5a954c6b93c61810b45"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.40/niv-0.2.40-darwin-x64"
      sha256 "47a561f8c2595f7452597a92a36bc3f6f11767d7457973f54e5167c2f8fc1417"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
