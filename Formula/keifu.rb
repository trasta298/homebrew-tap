class Keifu < Formula
  desc "Git commit graph visualization in the terminal"
  homepage "https://github.com/trasta298/keifu"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trasta298/keifu/releases/download/v0.2.4/keifu-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "361b9adf97390b404d92ff25adb84860ac5e1f39154d7eece0b3fc0d709d9181"
    end
    on_intel do
      url "https://github.com/trasta298/keifu/releases/download/v0.2.4/keifu-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "1efae1d47cc44658d2d403cc8a1cab8c7bf01de596e249ee99cf70c0c370e4a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trasta298/keifu/releases/download/v0.2.4/keifu-v0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd4fcc0f76859b45b3a2ead6e96bb451468afb26b5c39d9166ed569fcc1a7c9b"
    end
    on_intel do
      url "https://github.com/trasta298/keifu/releases/download/v0.2.4/keifu-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3a454f5dfe64e1a637e1e9b8575b49fb44505e817e22d76c1079e69746bf953"
    end
  end

  def install
    bin.install "keifu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keifu --version")
  end
end
