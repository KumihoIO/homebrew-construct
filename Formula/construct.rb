class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.5.20"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.20/construct-aarch64-apple-darwin.tar.gz"
      sha256 "b2b7a3995f1a77c647a80d99b88345d8d57f32ab196b60f1fe53118e44aeb38b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.20/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c918c123f1029c845103ed85e77beeeb789a20a46f6198422410eded3f2817f"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.20/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d69aa9bf8a3b6e01196dc7f54eec0c1cf976686462c8aefda373d3c72e589ea2"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
