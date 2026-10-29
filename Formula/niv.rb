class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.18"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.18/niv-0.2.18-darwin-arm64"
      sha256 "ea77239318970cdcbbc8b8b33ddd012ad98533585240386b01434e0d441629ca"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.18/niv-0.2.18-darwin-x64"
      sha256 "b11ecbde48e115f90982d9f4929d12f4888dadfd21e0ce8eaa3d36c61b649f3a"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
