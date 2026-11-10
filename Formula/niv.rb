class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.33"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.33/niv-0.2.33-darwin-arm64"
      sha256 "fc3765b598465e1806fdfa493c3aee2149dcb809370f4a0c8a5297b0613a8639"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.33/niv-0.2.33-darwin-x64"
      sha256 "916469657343f02b86dcb00e5ce06dbef626da275672a6db77fcd89985d288a4"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
