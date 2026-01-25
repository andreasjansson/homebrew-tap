class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.16.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.3/cctr-v0.16.3-x86_64-apple-darwin.tar.gz"
      sha256 "4532b4e5117aa5ceb7029b1854fbdd6a07ac803c6641f7b4e992b470ea7ba928"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.3/cctr-v0.16.3-aarch64-apple-darwin.tar.gz"
      sha256 "17f9236b7ceba1a2f073fd6618fa696fd3a272f66254e441b32244d5d07dd420"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.3/cctr-v0.16.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30f2956c3feb202d7cd966a04a043f0b72c7ea4877eadf3bae3a949f803b1465"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.3/cctr-v0.16.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "779d18038c435da0145a294ac5b8e2e27556152495f709e4ce91479133eec49a"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
