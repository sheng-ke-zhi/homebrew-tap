class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.32"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.32/skz-aarch64-apple-darwin.tar.gz"
      sha256 "6be5016f19d19318727b5250654930c61cd404e387b37fcdd3d298499cf16e3a"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.32/skz-x86_64-apple-darwin.tar.gz"
      sha256 "4f554b341b598f5b5a87af8a491c26b732dde07fb105f2b6ad5a7663b6a41b69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.32/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3aa9a6f92eeafa449a8b00883d529d749c3a519d9b958d56fae7da13e23ef7e7"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.32/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "315e2c683b661954fa43ff12e4d8273f6ce3c28c71ae2f5449a5bd43ee368086"
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
