class Revka < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/Revka"
  version "2026.6.27"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.27/revka-aarch64-apple-darwin.tar.gz"
      sha256 "91ae8bd0fedfc9619234f3a82da1362c89b6b4724c51aeeeb7a57232aec407fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.27/revka-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bfef82a1c5c8e5e9e8ea7889ed593a575717757bf0c1e0db520312e04cf8a6a3"
    end
    on_intel do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.27/revka-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ac14b54182ff1487145717ee48bd92bc6e1e3a3bb9452308de1c460a6298dac"
    end
  end

  def install
    bin.install "revka"
  end

  test do
    assert_match "revka", shell_output("#{bin}/revka --version")
  end
end
