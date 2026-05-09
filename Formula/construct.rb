class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.5.8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.8/construct-aarch64-apple-darwin.tar.gz"
      sha256 "99d7f73be5d32004790f39c6eb5c5df936d11ba5614fe476eb5bbca1389b7760"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.8/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5912b6d2500e05c7204bc2dd30500f2e883203e37afd3847355dc8c0baa987a6"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.8/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b43100954b8c0c07f4349e4ca9498e952c27b2aba32bdbd5362977858bd38d11"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
