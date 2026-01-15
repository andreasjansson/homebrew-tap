class Leta < Formula
  desc "LSP Enabled Tools for Agents - fast semantic code navigation"
  homepage "https://github.com/andreasjansson/leta"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.1/leta-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "d18f88abde106b30df49ce8dc4651c86328881cfff77bb4bb32dc88c029239ab"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.1/leta-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "0aea58ec4611164f80454251db93b8aff381c73a684979d0822c15d42a010c24"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.1/leta-v0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2859d86e588fafd6b1321f219aa3448e2739f815054bb59c903f2cc975ca1be3"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.1/leta-v0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b5bfa4ff83c37449f31ab96e30f693759c03b70936117db18d9c8ece3e12709"
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
