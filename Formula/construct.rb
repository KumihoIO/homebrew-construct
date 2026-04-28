class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.4.29"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.4.29/construct-aarch64-apple-darwin.tar.gz"
      sha256 "c4548691e949a085719add8f5f86384fc75ae37db3818ebd14fe1f5b178512e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.4.29/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0679e6a78ea50f0432f212d5b4bafc6fa67837d1cff17a991cbb8ad271663a7"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.4.29/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2350586a58f31e9ee04b72330f14fcd71564e4eea0f8aca16ac05aae822d6e8"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
