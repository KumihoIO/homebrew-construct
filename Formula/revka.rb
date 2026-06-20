class Revka < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/Revka"
  version "2026.6.20"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.20/revka-aarch64-apple-darwin.tar.gz"
      sha256 "eb949e2b19cbdfb7cb7a35fbdbbeed3f485bed6846f94f069daeec444413ba55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.20/revka-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d76315b55ce1e0fe1eedca900316169af216dc44b3aca17aa37548c1758a542c"
    end
    on_intel do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.20/revka-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fbbdff8a3a945bf4b94c5306e444972fc31ebc51d4338ab7be9a31623a1e342c"
    end
  end

  def install
    bin.install "revka"
  end

  test do
    assert_match "revka", shell_output("#{bin}/revka --version")
  end
end
