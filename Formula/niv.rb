class Niv < Formula
  desc "Keep a folder of notes in sync with a Niv Space, end-to-end encrypted"
  homepage "https://niv.md"
  version "0.2.21"

  on_macos do
    on_arm do
      url "https://releases.niv.md/niv/0.2.21/niv-0.2.21-darwin-arm64"
      sha256 "e41a9094e0816c92294eee710175fcd423c8c56477465d4069f37797da664a88"
    end
    on_intel do
      url "https://releases.niv.md/niv/0.2.21/niv-0.2.21-darwin-x64"
      sha256 "61a92d5cbfabcf779fd61e3aec028f6cf5ff4e259a8d9324b3032899bcffb63d"
    end
  end

  def install
    bin.install Dir["niv-*"].first => "niv"
  end

  test do
    assert_match "niv #{version}", shell_output("#{bin}/niv --version")
  end
end
