class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.5.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.3/construct-aarch64-apple-darwin.tar.gz"
      sha256 "7d39c24c6231efda28ac8e91656819ac023ee037a6302ad7e3b6ad9bac90b772"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.3/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bf6fbc99b2cbd844357de8915004177cac375dd07c279d5c9a37a99c5d7ddb67"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.3/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "380ed40d912da8444eb9058b06cf9174e9350d224f99163c653033a15a59ddce"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
