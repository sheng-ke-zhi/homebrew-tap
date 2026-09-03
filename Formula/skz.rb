class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.33"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.33/skz-aarch64-apple-darwin.tar.gz"
      sha256 "6a494cdf1484a19f67613767a07f7cf6ebc11526268f6896455cd2f72d3a6d76"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.33/skz-x86_64-apple-darwin.tar.gz"
      sha256 "d997d6e9854f812c039a046c25af41419dc4619f38794e8342881a7a216a59b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.33/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d28b5738f0caa9433567f79a42b1b9143bfc3af3d854b6efa1b3e1dfb02e76d2"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.33/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b8fef8ffa58e83e03af3c72827f47f1a7e760a709c3f61e5add3cb8adc3ebe7"
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
