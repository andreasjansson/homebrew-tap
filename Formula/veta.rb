class Veta < Formula
  desc "Memory and knowledge base for agents"
  homepage "https://github.com/andreasjansson/veta"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.5/veta-v0.3.5-x86_64-apple-darwin.tar.gz"
      sha256 "79640679287d4e2d5b4bd73ee553e545f0a4686a69d046dc53fcd65eb3088479"
    end
    on_arm do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.5/veta-v0.3.5-aarch64-apple-darwin.tar.gz"
      sha256 "0b2973fc02ca8ef7a461d8dffc03853010ea9e72fe6fd051f4f33d44e0806ee9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.5/veta-v0.3.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e72d8ff37c3ac1560fe90c41d441a1704a3aa84e2e1338f71414035009dee037"
    end
    on_arm do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.5/veta-v0.3.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "814a810bf098ecc2052c3bbb65e642d84f26aa82a59e44854d71f72f9aaa7e5d"
    end
  end

  def install
    bin.install "veta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veta --version")
  end
end
