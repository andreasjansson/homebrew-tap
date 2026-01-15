class Leta < Formula
  desc "LSP Enabled Tools for Agents - fast semantic code navigation"
  homepage "https://github.com/andreasjansson/leta"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.6.0/leta-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "b0d0f130582913b4ef759cd41ac49d662bd2fbb152a9a0253578d2fb303143a1"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.6.0/leta-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "c8531882da1c4716c4ff1a0da19fc3ce368bc12f74dda393bc3ebeadfbe6ec6a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.6.0/leta-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1bf34631530ddf4e6c6ff2fc401123135c485da93f33698b47daaa5e0ed7d355"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.6.0/leta-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8071e91556781d200fdaf8fb9fd844da3284ed19ed6e7a7851159543b2339bc4"
    end
  end

  def install
    bin.install "leta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leta --version")
  end
end
