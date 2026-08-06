class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.12"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.12/skz-aarch64-apple-darwin.tar.gz"
      sha256 "f0cf32cf0e059cafc2c04f6ed9e8d5ce2ad9092a35fa9d9a64d4cb341f51eaf8"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.12/skz-x86_64-apple-darwin.tar.gz"
      sha256 "a8a2ef481fc338b2cb33e701e92db661e7713917892ad4efd50e6b60e197d6c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.12/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ada0c81a6885881b875af2399407171959746e666a92eaced88023a6f5d2b831"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.12/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a5b119d157ab991d3a43baec40ed093421af431dc8d46090a3e9b89ac105cb4"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
