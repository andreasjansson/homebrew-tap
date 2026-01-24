class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.15.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.15.1/cctr-v0.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "bf9ebae7ad8e74c65b2748c4bb176c87a410ebbc4f3e1a9c356a370c9426ab99"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.15.1/cctr-v0.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "221abb3b649dc7cc2c73d0592c0953bb83fa8ad65f09c353af0cd4aef05a26f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.15.1/cctr-v0.15.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf70ac3b22e98c1933473e301fb096bc6069505a60bbae48708980506b38ab08"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.15.1/cctr-v0.15.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8e83c545b376ea5baba051ebb55f1012cc22def6aa426284a71312d1e07cdc9"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
