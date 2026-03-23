class Keifu < Formula
  desc "Git commit graph visualization in the terminal"
  homepage "https://github.com/trasta298/keifu"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trasta298/keifu/releases/download/v0.3.0/keifu-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "ae6e0026cee86f0db6d2f4ea284696a27cf01a85f5bbb77be786ccf13feceffc"
    end
    on_intel do
      url "https://github.com/trasta298/keifu/releases/download/v0.3.0/keifu-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "cd5a90ffe804c3d8ce4aed7c7f774de61f09126ba84e57cc9137e5435a62a3e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trasta298/keifu/releases/download/v0.3.0/keifu-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bfa24e03d95557c977f5d7780ad11e6998ecee60a7bb1cbd984bb3e2e14ee928"
    end
    on_intel do
      url "https://github.com/trasta298/keifu/releases/download/v0.3.0/keifu-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "478edd63dab9820956c88985f56168921c4dbc64b766bb7673764010bb0928bd"
    end
  end

  def install
    bin.install "keifu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keifu --version")
  end
end
