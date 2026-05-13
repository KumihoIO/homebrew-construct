class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.5.10"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.10/construct-aarch64-apple-darwin.tar.gz"
      sha256 "5147c7a16284212f9c8408e501da419ddc48b7e52c8343fc4532b7306d3257b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.10/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ebaeb3a5e7d9828e399f5731af139118a514c9a7768202496a3bf51bb4fc58f"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.10/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "006ae8f0e4cae34bb41f2d0de598c3e1ae3c148d33fd251ac0fbdd690c288848"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
