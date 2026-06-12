class Revka < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/Revka"
  version "2026.6.12"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.12/revka-aarch64-apple-darwin.tar.gz"
      sha256 "87e83bbe4847df51501e50ae2521a3c737969bf8d438057184e35dc5d5face19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.12/revka-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e51190c40441503634e3f1fc3305dbb984749d5cc3e0155ce3a8abc992474046"
    end
    on_intel do
      url "https://github.com/KumihoIO/Revka/releases/download/v2026.6.12/revka-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f1cfa4d065017c789b0ef82cb1cb75fe916f671379a7d1dd9a61af1a10a597e1"
    end
  end

  def install
    bin.install "revka"
  end

  test do
    assert_match "revka", shell_output("#{bin}/revka --version")
  end
end
