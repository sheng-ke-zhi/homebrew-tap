class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.43"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.43/skz-aarch64-apple-darwin.tar.gz"
      sha256 "d9c0f581afc68237069f39bfe1542ff398ec09c93a0d1beb98ec07bfb1478f47"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.43/skz-x86_64-apple-darwin.tar.gz"
      sha256 "80d0bb42cd30ca404c6b24a54a5a1002ced4af0e427fb5eb81930ac401352f78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.43/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fd41467d6ca67fee7b407282e5512eb98e3db18a680c9bd024572691062f4fc4"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.43/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4369e068c0e0b2fa218832d5daf1e1fea7392d67878f0fa21cfd15b74ad4af07"
    end
  end

  def install
    libexec.install "skz", "plugins"
    bin.install_symlink libexec/"skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
