class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.34"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.34/skz-aarch64-apple-darwin.tar.gz"
      sha256 "406df7337ca925a59ced9e201f9aed030631e302aa556ec4db0adfc5804df24d"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.34/skz-x86_64-apple-darwin.tar.gz"
      sha256 "9f59ed279c946f7ebdf3b5e3a0457dc1c4bc803398dca4b7a2af91d4dd29fb4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.34/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9473ce748d9fdb12ace0907cdf37f70964b8b1e35410c58ffa2209921e8b2cfe"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.34/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f42a2fa2f8fa330a35083ec366e264e403f1f10f9b15c658cd40b08764f0ae9"
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
