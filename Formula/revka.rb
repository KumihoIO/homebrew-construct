class Revka < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/Revka"
  version "2026.6.11"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.11/revka-aarch64-apple-darwin.tar.gz"
      sha256 "b945c300a0520785ddef50829aa8f4e2e1a119f854a4c559f6669191587e7354"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.11/revka-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11fe31c905c69db8d51caab75267bfe2bfce3c29f88bb0a18e1bb8b08f68a17a"
    end
    on_intel do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.11/revka-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "484a7f72d6ed09c38586151604ee30600ea7ae28c919cc43e39bb183398490e7"
    end
  end

  def install
    bin.install "revka"
  end

  test do
    assert_match "revka", shell_output("#{bin}/revka --version")
  end
end
