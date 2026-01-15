class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.10.0/cctr-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "4c1515e8c92f22ed53bde4a958a85cfb96675a8ca91a5760189b8674eb39cd34"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.10.0/cctr-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "c64202829cbb1716385acb6f3077b0a0cd192b340b9532ca55eed6a7baeeefec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.10.0/cctr-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "68c8babf19d42a066485c210832840db7a6fef3e201ac60d0b12b173e0c4a451"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.10.0/cctr-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e05786f9f4b796466434c0c15cafaad0f1b7121ed047c9a03b66e7e7e09c0c1"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
