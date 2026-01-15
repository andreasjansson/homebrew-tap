class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.11.2/cctr-v0.11.2-x86_64-apple-darwin.tar.gz"
      sha256 "b3a3dd5aa7f65631522e8bb6233d85eadcf2aa938f27c2ad3004a25310c3c62b"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.11.2/cctr-v0.11.2-aarch64-apple-darwin.tar.gz"
      sha256 "ae89819670119654995ec938c794677b6b238ffb05c10ff83ab68415937030eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.11.2/cctr-v0.11.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "907f1c0e0ef5a5fdc19cdb7602b5bbf7249b8676910fff5622ee2e9500391c8f"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.11.2/cctr-v0.11.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46086ad02215c4313ab3d4c5d1a38fe5d944e1a3db70a27175775ac805441f2e"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
