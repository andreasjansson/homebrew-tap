class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.12.0/cctr-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "0d17a98b0988da6eeec572aff093050276d522fc81a22be731e543a0bb1e59fd"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.12.0/cctr-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "86946b6216ebadd880bfdead360d4f3d8895af8e86db7a3440837a829fa40f8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.12.0/cctr-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "218b8301688d081ce443e2916e67120170855d13f07508f7903f489964c216b8"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.12.0/cctr-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "837ab9e7aab308e0770ce9dbb899a2c40ca9bf915b678783d34560343c100f51"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
