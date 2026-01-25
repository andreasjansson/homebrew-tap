class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.17.0/cctr-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "b67947988331b6d3233a504935d8b61f59271baab8b9f26ad00d68c5343db9e4"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.17.0/cctr-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "a06a9946cb2e89d2edbdde092a5a9fc65db1b18be249bed458db3e53cc3f6911"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.17.0/cctr-v0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db172a06aec117556a8cf6cec9cb0704d5cec64a659580200a1c329656e5ba94"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.17.0/cctr-v0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cdccf984fcb66783a6d6bcba0dc7697d4645afbdf398aadfb77120cca769c6d1"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
