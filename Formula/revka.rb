class Revka < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/Revka"
  version "2026.6.13"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.13/revka-aarch64-apple-darwin.tar.gz"
      sha256 "8b15befd2052e850ba61e1a2f7037dc8e429fdf52fd5c23e9d6d5d2205836a46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.13/revka-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e7203f734ae1ba575050a27a52e987cc37e5bb75195588f6df60e449d961d0c"
    end
    on_intel do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.13/revka-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "648c957b512c899d43148797f5f137e593ffc9fd06f6681b36e53257a0dbe8bc"
    end
  end

  def install
    bin.install "revka"
  end

  test do
    assert_match "revka", shell_output("#{bin}/revka --version")
  end
end
