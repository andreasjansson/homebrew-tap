class Veta < Formula
  desc "Memory and knowledge base for agents"
  homepage "https://github.com/andreasjansson/veta"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.4/veta-v0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "eb337cb0efa449986153ede586d575e9f83affc1f62fc3ef4b2f623dfb7a76eb"
    end
    on_arm do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.4/veta-v0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "6b84cb057a1cd03becdb6ffc21f20b3f021cafc0bdfdbb12c488029526a1e848"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.4/veta-v0.3.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd853564fdaed5c179f7a0f061a942c9ba6e4f9d41ccc828ffe4e2acb9201f82"
    end
    on_arm do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.4/veta-v0.3.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "99d0a2154e4863807996828e73ea4befbb15ada7735e4879c4ea9920ef672273"
    end
  end

  def install
    bin.install "veta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veta --version")
  end
end
