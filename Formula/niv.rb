class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.41"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.41/niv-0.2.41-darwin-arm64"
      sha256 "d82a5d9f41d092f3bf2e9895151c8e9a8ac38cdd0c8bab2412659ce8d67f78a2"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.41/niv-0.2.41-darwin-x64"
      sha256 "4cfd6f0009620b34901be4bef38d64df6644d174591cca4061f1939e13de2a48"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
