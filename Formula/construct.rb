class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.5.12"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.12/construct-aarch64-apple-darwin.tar.gz"
      sha256 "2c2f34917638bbb0c7f1cf9c9309f5473022debd0e4a98bcc1c975587bda1068"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.12/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b536edeb8f3eff4961112789f6623a2d674598bfd0b3fae25d4d6c8b7ac8f4d"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.12/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9183b9cc766c02f162fb728ef32a2391f2d6931d46d6ae579c8166d6b082056"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
