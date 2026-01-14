class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.9.0/cctr-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "9b79b532c70a07c2ef14c1849da077a089b5e009f0a631e7410ab9a784c8b181"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.9.0/cctr-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "7a17f5e6f3ddae6076a4eb058cbb85ee452a34414f665f4548028bfbc3c34e82"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.9.0/cctr-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25bad4ecfb07515e3b20899083a2d0a82d16a24d2a1ae1931f02198616781d56"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.9.0/cctr-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c2dc2da5085bac5286bb275f3cdcda2dfbd65e4fbe45b69b3c0ee9c229c97c8e"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
