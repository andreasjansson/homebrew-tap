class Leta < Formula
  desc "LSP Enabled Tools for Agents - fast semantic code navigation"
  homepage "https://github.com/andreasjansson/leta"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.5.0/leta-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "b51296c77cfa27ca213697fdeffe9658d1f249e97d2d4aa16dc42ba2aeeab444"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.5.0/leta-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "46a254bdbcb70fa8f7bc490f125925b4e2d36456fef9f346bb5f417de324565b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.5.0/leta-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a63a73c74c1153a6c8a8666ae4f34ff5810beb7cbe6f432bc2e4d5d2349b517"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.5.0/leta-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "883ad2690a804a57e3809e1dc67a52280eac3b7df0d1f3d8e353e14e7bfb3546"
    end
  end

  def install
    bin.install "leta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leta --version")
  end
end
