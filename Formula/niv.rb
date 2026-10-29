class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.14"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.14/niv-0.2.14-darwin-arm64"
      sha256 "44b893bd90befad0c67c55ba732d666b73e03017d9cc82037d04724c4bd03714"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.14/niv-0.2.14-darwin-x64"
      sha256 "157b921af8c24f71836070dab49d3fb2dc1ce95cfe561a9547d5321f315b622f"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
