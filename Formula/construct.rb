class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.5.13"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.13/construct-aarch64-apple-darwin.tar.gz"
      sha256 "463f785f4ff774afee9f0f561c7f4801a124539053ea64c2e8059438d6e4608f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.13/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4be5de0fd8b4bed0a1758b184cea207f1da6717357731d64fd13af9d93831ac2"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.13/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "62a6b5cd484e711494a94c3f2e949dfae10fc2cd6d2bf981e50ccd91d803aee5"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
