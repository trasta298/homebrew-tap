class Keifu < Formula
  desc "Git commit graph visualization in the terminal"
  homepage "https://github.com/trasta298/keifu"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trasta298/keifu/releases/download/v0.2.3/keifu-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "12169e6c9d725e79b5bc13ca288ac5bde21b1fd692493a5da0404a4071c8eb2a"
    end
    on_intel do
      url "https://github.com/trasta298/keifu/releases/download/v0.2.3/keifu-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "6f15df20bc06420ba6c5f16c09de8ff611551648eb486037f14ab46e39c63873"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trasta298/keifu/releases/download/v0.2.3/keifu-v0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ebb9400332141cd23b2c5357d90417da6b16002240eb9023224e4cfe02f9078e"
    end
    on_intel do
      url "https://github.com/trasta298/keifu/releases/download/v0.2.3/keifu-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c6df0239734c140bb791c77c75bab034d37c0dd1438d3c772073f4097345a5d9"
    end
  end

  def install
    bin.install "keifu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keifu --version")
  end
end
