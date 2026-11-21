class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.35"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.35/niv-0.2.35-darwin-arm64"
      sha256 "973b7279aa49cca289d844a99db4e4113c67591c602fea04e92069ed7ab99e80"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.35/niv-0.2.35-darwin-x64"
      sha256 "08352403beae31e2ff8b6eee62134b65122f606f2fcafeef0b48e76b53ebaa3d"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
