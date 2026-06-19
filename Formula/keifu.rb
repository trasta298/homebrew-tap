class Keifu < Formula
  desc "Git commit graph visualization in the terminal"
  homepage "https://github.com/trasta298/keifu"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trasta298/keifu/releases/download/v0.5.0/keifu-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "474c9cce2d7450ccdc1fcb1c3dfe5119c24c311a9e9e41ecf05c51af58749b36"
    end
    on_intel do
      url "https://github.com/trasta298/keifu/releases/download/v0.5.0/keifu-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "24cb6a6205cdff38560c7e340d1261b9e4a909cf0321c75d1cbc5e46bf4b1cb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trasta298/keifu/releases/download/v0.5.0/keifu-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2349cba69c3b78c742bbfd8af567176290db5a9f36bc9e4cbede864b53df8692"
    end
    on_intel do
      url "https://github.com/trasta298/keifu/releases/download/v0.5.0/keifu-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "14f977aff2e493731bc808e901a72b58064e1e7f3d759ef70d5dc219d8c2a15a"
    end
  end

  def install
    bin.install "keifu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keifu --version")
  end
end
