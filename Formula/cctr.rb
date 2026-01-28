class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.20.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.20.1/cctr-v0.20.1-x86_64-apple-darwin.tar.gz"
      sha256 "80d9f5ed31e18646b7f5c16652a43c635ec6de644e5fe191576776ec5a9ff648"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.20.1/cctr-v0.20.1-aarch64-apple-darwin.tar.gz"
      sha256 "4184e6763833f9e01581f7dd919b017040b5b9884e4478af618b1817c8dd5b56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.20.1/cctr-v0.20.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d97af8e81b14a2bc45e53706ffcc98490bbd049cb44df9d50bf4e5f3887f95c"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.20.1/cctr-v0.20.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8b67b287b8b2637fbd947c60982cce7d7d07fe6f4659a713fda30c2fdef87914"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
