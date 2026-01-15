class Leta < Formula
  desc "LSP Enabled Tools for Agents - fast semantic code navigation"
  homepage "https://github.com/andreasjansson/leta"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.7.0/leta-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "bd3c5c424a461dd7e426bcc6f70dc240c231383bfcf779e19af55176ea739d77"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.7.0/leta-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "0ad6d733464bf829f78df116fa390775e73100fe47d5362e28657a15a60c494a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.7.0/leta-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c7a6bd2f01a8ecd3cdf3245a5f348921bfce3e74b5d7533736fe22f7957114f"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.7.0/leta-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f32e286bcb23cbe2674c0bb237171db57e003b3b10369828719ebc893a032b8"
    end
  end

  def install
    bin.install "leta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leta --version")
  end
end
