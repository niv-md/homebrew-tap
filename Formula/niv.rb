class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.31"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.31/niv-0.2.31-darwin-arm64"
      sha256 "a90a9d3c19e1e172f8e69f31394923c1b7dbf7b6748460a4af9b73f4ab1a6b16"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.31/niv-0.2.31-darwin-x64"
      sha256 "783437d939ae1564fdbb6d01691f0967e226bb99d0289769e5ee00013ff72d22"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
