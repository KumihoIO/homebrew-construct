class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.5.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.2/construct-aarch64-apple-darwin.tar.gz"
      sha256 "b96ce0a3b78bbd7b4f5544aa9a245fca2daf9d9fd94c9183d68996ca1d5d8091"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.2/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a69eba3069ecd06d3c9cfdaf961935d1de8126443ec097f140218133f657003d"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.2/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "481738682f4c104c1701490dfbe2715194a41d3e9faeb6c486228002e8d78ed5"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
