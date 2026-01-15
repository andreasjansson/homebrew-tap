class Leta < Formula
  desc "LSP Enabled Tools for Agents - fast semantic code navigation"
  homepage "https://github.com/andreasjansson/leta"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.4.0/leta-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "1bcb4e5a524ade5fdc8acbe0bbc39dca0087726fc6cd9f437ca1cda68ae0a12b"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.4.0/leta-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "3cf574f47be88d4163b54bbd2c3795c8f97698fbe19e4280d51e163883a9b7c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.4.0/leta-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec3f0624017d42682a5d9a9c9ff062fcafe4599c32cc33b2dd037639edfa59bc"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.4.0/leta-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02c48fc040a73d5c148ddeabd1638ea790243b7906b120ff3caa107d044adb9f"
    end
  end

  def install
    bin.install "leta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leta --version")
  end
end
