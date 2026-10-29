class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.15"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.15/niv-0.2.15-darwin-arm64"
      sha256 "b109155371991815a29a44d50a8ac4c80752f6e49ce7430546d540ab5a9f6362"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.15/niv-0.2.15-darwin-x64"
      sha256 "335a5d0dcffa87750c93d58f7d9b83d161628f47960a542097a3abc30aaf1e42"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
