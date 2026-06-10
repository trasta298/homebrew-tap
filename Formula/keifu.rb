class Keifu < Formula
  desc "Git commit graph visualization in the terminal"
  homepage "https://github.com/trasta298/keifu"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trasta298/keifu/releases/download/v0.4.0/keifu-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f190917596b7bed22e26c630eeaa0e37bc2e1c3993b432c2fa74ebd475a76aa4"
    end
    on_intel do
      url "https://github.com/trasta298/keifu/releases/download/v0.4.0/keifu-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "1a3f13c464106746bcb2bfb9b0029411fdf05fe6ea35f5f4815dcc978e12ae13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trasta298/keifu/releases/download/v0.4.0/keifu-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98ee61d6a6483ae29571a741afe12fd8b2ebda252d1432e9495127e84715fd65"
    end
    on_intel do
      url "https://github.com/trasta298/keifu/releases/download/v0.4.0/keifu-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c933af4ee395c25d1f199c3868db5cf688f2de42c54cca15ccd000a47365464"
    end
  end

  def install
    bin.install "keifu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keifu --version")
  end
end
