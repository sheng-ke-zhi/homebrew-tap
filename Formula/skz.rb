class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.36"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.36/skz-aarch64-apple-darwin.tar.gz"
      sha256 "e56adb68656f9b76ca98c1790470a13687057e45878626aeface57763c523569"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.36/skz-x86_64-apple-darwin.tar.gz"
      sha256 "bf39ce9c9863058798605517c89a43c29a6af1c6f1e8def76cb3c330a814b9bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.36/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "300d2ad956f750dec05791ceeeb86eb9f20aaeb4e36cc16675ab9fe17ee67103"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.36/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dedfc8835234f2ede6f8b7f970c69605a39f66e78e0077efbadf63ed43ad88ce"
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
