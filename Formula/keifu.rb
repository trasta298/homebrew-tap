class Keifu < Formula
  desc "Git commit graph visualization in the terminal"
  homepage "https://github.com/trasta298/keifu"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trasta298/keifu/releases/download/v0.6.0/keifu-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "22c175cd7beae02c7743387f641da1b9c930f8dc9c2566eb0c6d9ee640549cb9"
    end
    on_intel do
      url "https://github.com/trasta298/keifu/releases/download/v0.6.0/keifu-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "e355c22b4a946ebac7e8ca610465e6ee59548d81cc872b1f0ec61d1e16a5336f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trasta298/keifu/releases/download/v0.6.0/keifu-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e361563db635b91d2222cc109d6c6412438f9f8ca42f250e7d00974048752861"
    end
    on_intel do
      url "https://github.com/trasta298/keifu/releases/download/v0.6.0/keifu-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e604044094036d32e4e299f1e83403a9d9b272f89391c22bc9702860491bd4a8"
    end
  end

  def install
    bin.install "keifu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keifu --version")
  end
end
