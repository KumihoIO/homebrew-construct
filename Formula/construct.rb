class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.5.9"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.9/construct-aarch64-apple-darwin.tar.gz"
      sha256 "b0b780d9e3f6e3d94e770173e1b70c78ecc316acb981d2bc0cc758db6de80730"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.9/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b1b9b7fd91ed5e2f2fd8cd841a266f30a512b0cd0449cb577e3e0909ff05fe61"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.9/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1a26ada1b0266344844184834a860ba0f714a6d1024566cf985ae5fba8c4d64c"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
