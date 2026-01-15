class Leta < Formula
  desc "LSP Enabled Tools for Agents - fast semantic code navigation"
  homepage "https://github.com/andreasjansson/leta"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.0/leta-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "a0ade91245bec99887d9dfad1a1113a6bee5f50887e64e0b748e6af6243760f9"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.0/leta-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "844f320e132ae46f775925c0950e5a0faf1ba4e8794f08862605128de676b176"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.0/leta-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d36544932baac88592e177048093ab9f2849423db9ad5fcb4d4d6423f039a1c"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.0/leta-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "707eb13bdb101a928720b28e52d59447d5e9b4248327871213edd6dbad23c8cd"
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
