class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.2/niv-0.2.2-darwin-arm64"
      sha256 "a2495becd7109914b9fe25bbb7e5d51438e22709bcac4bc92eb768ae1e8fc665"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.2/niv-0.2.2-darwin-x64"
      sha256 "a37cb9d8485073c6a0d311309fa4b08b472f1ac92ea115da8ce794832a918879"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
