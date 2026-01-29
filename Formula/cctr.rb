class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.22.0/cctr-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "94cc0c76917d5fa7d55ba7f0ca3a042122cde751d8f81f7dbb3a173e645bb576"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.22.0/cctr-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "d85477de9014ffe8712640d1b7f819d0a480038c5e2c98d18dc790461277b2af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.22.0/cctr-v0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "731f0bbec20629ebbdd73ec4a8a095b577ebe5974949e6ee3e42b8d40fee0893"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.22.0/cctr-v0.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a92ecbac1842ac1238162ce055af745a9e3405b71eb0aa6a33b032e1982ff4cd"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
