class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.8/skz-aarch64-apple-darwin.tar.gz"
      sha256 "64435943f3eaacd5b989025e16558df3f2fde1b4a279568e3cbd0e973dff1f6f"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.8/skz-x86_64-apple-darwin.tar.gz"
      sha256 "2f674e974d66d5f41544db847a8dbba3fab96c6265ad231cb6a593b3874c4fa2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.8/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d8bd1de73fb3266508cdde6c2e17e703e387ba4903563c69edcf032e0d5fb224"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.8/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85ce5af795272d824f4a2a55d758e7b563e1d5e3b3a1cf7d273cb9e36ac44d14"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
