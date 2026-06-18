class Revka < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/Revka"
  version "2026.6.17"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.17/revka-aarch64-apple-darwin.tar.gz"
      sha256 "326516100bbf44f8829668c05c12bb530e0987fa38e32943105f4f315058797b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.17/revka-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e434b39bbc00a999825677c08d67ab9a3d208647170041b0ba0b34c93b0884bb"
    end
    on_intel do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.17/revka-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ca7bdb4888b4e7eb4518fd10080b10ceb134d5023dc6fc6b965da0c3b027f54"
    end
  end

  def install
    bin.install "revka"
  end

  test do
    assert_match "revka", shell_output("#{bin}/revka --version")
  end
end
