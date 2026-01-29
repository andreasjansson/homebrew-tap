class Leta < Formula
  desc "LSP Enabled Tools for Agents - fast semantic code navigation"
  homepage "https://github.com/andreasjansson/leta"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.12.0/leta-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "f671425d309467bcaab614ed286178ce79fc9c10102d5651d9dfaf9a3fcc5809"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.12.0/leta-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "47893a14408cf49814b9fe99b7b52e63d78bc056a9bf61ca2721b3185957ca03"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.12.0/leta-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f72a4010663e732f2cb51f617f08a47407b1872884e69b7d5a081cc207afeb4"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.12.0/leta-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f3bc869bfe044b14c01ac2d786adda52b9bcc61c267db6999e96132f04ac230c"
    end
  end

  def install
    bin.install "leta"
    bin.install "leta-daemon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leta --version")
  end
end
