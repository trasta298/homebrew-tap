class Keifu < Formula
  desc "Git commit graph visualization in the terminal"
  homepage "https://github.com/trasta298/keifu"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trasta298/keifu/releases/download/v0.2.2/keifu-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "c6637138aca5bd86fa884609c0c324a75e8b901ecd248071bdafb038440c87ea"
    end
    on_intel do
      url "https://github.com/trasta298/keifu/releases/download/v0.2.2/keifu-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "c4a670691f98c3e394e888712e992727b945ce50850ef1d68b8adeba6b43d6e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trasta298/keifu/releases/download/v0.2.2/keifu-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "403b4de59200a58a2c02f414ab1029d02fe77e34cb86b1b29ab6ddb861d4b9c2"
    end
    on_intel do
      url "https://github.com/trasta298/keifu/releases/download/v0.2.2/keifu-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "13f0a36798e76fbfda018ee4748ba70a5744a4c47ac8e56f90b5192acd05b0e9"
    end
  end

  def install
    bin.install "keifu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keifu --version")
  end
end
