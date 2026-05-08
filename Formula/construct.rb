class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.5.7"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.7/construct-aarch64-apple-darwin.tar.gz"
      sha256 "7c8083fc333f725c43777196e759ddf3a6bc3f78c27bab6eda2d45c8b4f1e3a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.7/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c2db4b407c850f050934845d7905f4430b17061e4bae4e3394d4d4179fa15cb"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.7/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91444b9d455540af7344cdc2937e7d316e54786d8efce97307529a00373fb02b"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
