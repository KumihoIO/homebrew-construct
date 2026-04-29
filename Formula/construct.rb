class Construct < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/KumihoIO/construct-os"
  version "2026.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.1/construct-aarch64-apple-darwin.tar.gz"
      sha256 "96a71cf8e880e98148c820324d81ab79986a76626593d8a236f129c409454ee2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.1/construct-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71c49868157829ab501fc53abfe1045d08226d622cad249482bd9c8b2901a017"
    end
    on_intel do
      url "https://github.com/KumihoIO/construct-os/releases/download/v2026.5.1/construct-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c73304433804ef6829a6db78691787ad4c82447d38691f792eb205885e0688c"
    end
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "construct", shell_output("#{bin}/construct --version")
  end
end
