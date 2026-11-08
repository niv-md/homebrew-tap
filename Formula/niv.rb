class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.30"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.30/niv-0.2.30-darwin-arm64"
      sha256 "196a910c7b15249999caaffddeeb1acf0bd1b2dfb2f74fcc31a08cee3642fdb3"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.30/niv-0.2.30-darwin-x64"
      sha256 "3f89c93a33b03f07a3582874d3f25bafe288e0ed3b474bdb33d5dd9915a4e159"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
