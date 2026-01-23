class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.14.0/cctr-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "1ebe6f3af0c0b6a3c8bf63dc216d549dc4707d1a23b224665be0f1be0b24b564"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.14.0/cctr-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "b247f81492e675cc448170b03370b9d7ddf2fef6b21c1d70b66ea7e6ac5c3b85"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.14.0/cctr-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10bead8edf3904da99e1a1540125df4731188978ae3748d0f32df2edd6f311dc"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.14.0/cctr-v0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "55ae64874338ecd52f14be17b086672405f39fd05c067607711e70c143e6c1c5"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
