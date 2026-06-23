class Revka < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/Revka"
  version "2026.6.22"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.22/revka-aarch64-apple-darwin.tar.gz"
      sha256 "813e99f2542626fe24836a51405c3562579e52c00f424dbb165a0af1941f88db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.22/revka-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e40de6ff26cc76b6ed7001c00e2968ce3481ef758ee065ec3087cbca3a6ac63"
    end
    on_intel do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.22/revka-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a92e9ced20e88866ebb1298b7ed8f5d09e233e7aa9023277c9b6b28f312a391"
    end
  end

  def install
    bin.install "revka"
  end

  test do
    assert_match "revka", shell_output("#{bin}/revka --version")
  end
end
