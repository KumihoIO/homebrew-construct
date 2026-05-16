class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.5.11"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.11/construct-aarch64-apple-darwin.tar.gz"
      sha256 "cf395d799b23ae10afd588ad607ff594e0973e42997c00803bf6f58c66ba04a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.11/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94790bc68adb56215b549ed6a43143c4b163397386f38e4df3f910b5774318a3"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.11/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b2e9a52232c62da723fa320c834611e2fde1ddbf7be4f44dd2c299b4e110d4d"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
