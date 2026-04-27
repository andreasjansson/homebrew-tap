class Veta < Formula
  desc "Memory and knowledge base for agents"
  homepage "https://github.com/andreasjansson/veta"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/veta/releases/download/v0.6.2/veta-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "2130f9ed21ad73b06fc6abb1b4dbb897db4b6e3edd604bfa1d9e30ae4d812e8c"
    end
    on_arm do
      url "https://github.com/andreasjansson/veta/releases/download/v0.6.2/veta-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "157c1d92e09470af5a682079bbd7f992a06a57a0cae431feb4ac87fc333b7a9a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/veta/releases/download/v0.6.2/veta-v0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49896e75417e56af7c7cbed09c91d0e5e44abf3ed8ce62c8443266bb35fd08ba"
    end
    on_arm do
      url "https://github.com/andreasjansson/veta/releases/download/v0.6.2/veta-v0.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5538cf46f0fe39a0fe31d485aac9cc26a0111b499f68b5133e00c185c29dddcb"
    end
  end

  def install
    bin.install "veta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veta --version")
  end
end
