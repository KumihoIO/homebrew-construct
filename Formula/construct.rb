class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.4.30"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.4.30/construct-aarch64-apple-darwin.tar.gz"
      sha256 "56d263342d887542d9d40dca4b3ad2a271d0e3eabfd333b405d760aa85905a9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.4.30/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2448ef19ee4feb2c6dc7f2f198a1c3f9302b77e6e42aaab826cf1fa28d106da1"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.4.30/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96569443a3e5d3ed0e03e4d8579a46be58c90c82fd9637add3e610f2410dfabb"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
