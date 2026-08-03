class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.10"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.10/skz-aarch64-apple-darwin.tar.gz"
      sha256 "cba37dcbbbd4d3921f64dba35d7cbc8447beff77edf2c6e07037cf5dbeba5de4"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.10/skz-x86_64-apple-darwin.tar.gz"
      sha256 "c4db678b347e406c55c5a017cedfe438dbbe293800ccd6be78f5e66bb058aa3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.10/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "229fe87a7a1165b08519ba6061b88cb3b9ed17cbe03538d8d222ff1d55e6e1ee"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.10/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4edf6a338edfb973545ffc323cd4201418c9f7cc0c4dc00007b7ac2a50104649"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
