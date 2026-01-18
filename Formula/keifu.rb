class Keifu < Formula
  desc "Git commit graph visualization in the terminal"
  homepage "https://github.com/trasta298/keifu"
  url "https://github.com/trasta298/keifu/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "dfd921db384004c3e2f85f1dd5c0778f2b051652cfc952c9e7617f1271ef9fb4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keifu --version")
  end
end
