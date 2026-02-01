class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.25.0/cctr-v0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "c5a62445fdcb67083a6b235e4d96b169132f64175165733bc4ed10db34f56a37"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.25.0/cctr-v0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "47e8cdc485737ca51f08710eca474afb40c145b43f9a44cc8fd80942c9d22b30"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.25.0/cctr-v0.25.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f99059184f19674ab2755ca99390aa8883821befa183c34f78148be4287c9a8e"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.25.0/cctr-v0.25.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6305af4e72ce2422f53262a0e78831ee5be45cb7bfc8d53fc6edf203f788ade5"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
