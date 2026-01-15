class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.11.1/cctr-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "009bae77a6485d3ec4f3ce25a5701a9c881374cbfb47101cb7797c424238a764"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.11.1/cctr-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "3b8b096a016393e44819e9ca39ee50526d50044ade7c7901223599190c79f8e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.11.1/cctr-v0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a4ac5815aefe29d3ef3f6bf21f6cd0a4eba53271d63a13ff86ce70511ca7a88"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.11.1/cctr-v0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e40732ec636326ddfc2f2e7709f5511f9dc32fc3e850396b05cf197c29a27041"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
