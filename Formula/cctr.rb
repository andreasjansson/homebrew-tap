class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.1/cctr-v0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "c9412c1ddd58d9016bb26d42f126d21bb95b50c0dbba078f7a2d848744cc2dd6"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.1/cctr-v0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "3968ac1339c6db556c6acd83edade649544266b16be7462629bec6c1cc83d96a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.1/cctr-v0.16.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d0aa90c5ee02fa0305b5a6777a204e34e26c4f8fd6eeed90087ad3cb9368d2f"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.1/cctr-v0.16.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "10ade0242beb3fa6b5f59164f4a0b654b315bb08105f704dc4463aab64d4d2fc"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
