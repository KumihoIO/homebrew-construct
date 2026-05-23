class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.5.15"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.15/construct-aarch64-apple-darwin.tar.gz"
      sha256 "3f78a93ed87f650be63a67f97fa1febc7e17acd6a06250edd55b5b7476090d66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.15/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b99f6daabd1bd5bc6dc6f4ce8582912f4c546d5a5c46b4854e3b29d2ef4ffe6"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.15/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "154916e5b2b9fa0d50df9bc156464aaa54e304827fe51447c9d718bc116cf5fd"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
