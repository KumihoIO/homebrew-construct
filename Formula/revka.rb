class Revka < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/Revka"
  version "2026.6.30"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.30/revka-aarch64-apple-darwin.tar.gz"
      sha256 "32572e2d1df215c002bed3086b19b44907123b519d98635036ae03698db0fdfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.30/revka-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66d4c49c32a130db563d151568e8e0d091e72bf638fdd8d1a10bd94e2617ba65"
    end
    on_intel do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.30/revka-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77a444267ba952b8385d023f6ee3e11a53704e9ddad9663edf386bebaaf2325f"
    end
  end

  def install
    bin.install "revka"
  end

  test do
    assert_match "revka", shell_output("#{bin}/revka --version")
  end
end
