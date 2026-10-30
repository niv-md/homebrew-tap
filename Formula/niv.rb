class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.23"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.23/niv-0.2.23-darwin-arm64"
      sha256 "30d2d4ace35cc573f5056b16b320d0d53a83e13eb879d05703fb8e6de0fdf7e8"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.23/niv-0.2.23-darwin-x64"
      sha256 "edcff521efa9c1b199d18a279d61030a2f7cf0718ec2a6943077db6e2f4ceac8"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
