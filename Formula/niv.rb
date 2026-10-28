class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.12"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.12/niv-0.2.12-darwin-arm64"
      sha256 "384d93f27c40a09ac60cde184b4f6873150a306739047b144706341c5fd0ef91"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.12/niv-0.2.12-darwin-x64"
      sha256 "8ed181a9d5842cf7c338ecdfcabec91a257c54320d213b32d6fa0ca797879bd2"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
