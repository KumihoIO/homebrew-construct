class Revka < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/Revka"
  version "2026.8.31"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.8.31/revka-aarch64-apple-darwin.tar.gz"
      sha256 "2f75d6ae3f07700f9757c2aee788b91b080f8b2ead75cacf1a21094a10a2b096"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.8.31/revka-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6cfe36a7c8f3c1916093899a0082a6c0e9a2b6c346605679822a640e86c72678"
    end
    on_intel do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.8.31/revka-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e83daa05def0e4319c58b9bc21381f7fbc47790d7d453e3613f15538894fe73"
    end
  end

  def install
    bin.install "revka"
  end

  test do
    assert_match "revka", shell_output("#{bin}/revka --version")
  end
end
