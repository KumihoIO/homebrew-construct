class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.5.14"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.14/construct-aarch64-apple-darwin.tar.gz"
      sha256 "06850b4691121e2fe877fd3dc2722b093fecaa18301f5b393c87e233be195572"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.14/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c834dc3cfe63e3e1a84738b2a8381480e1a370a6a0c98129a3a6b0c7709ad82d"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.14/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "27117f20464e1660f731bfb72340c6f60212da054aacce18ced96a49fa54a095"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
