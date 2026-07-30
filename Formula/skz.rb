class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.7"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.7/skz-aarch64-apple-darwin.tar.gz"
      sha256 "4e0d59d945a4d248541f62231f1d8f6542c0d804db88efcd6ea9248e4794c1d4"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.7/skz-x86_64-apple-darwin.tar.gz"
      sha256 "75028e02fe91da31eab862511c1fc041fbd73f745e878b47d8ed26c009ca1ba2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.7/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e7f6f8e7c59ecd83f059244801d20dab045f53ad18dd85ef00ec6a7e39adc1b9"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.7/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "90a3f113dfdbead9dd269a08c41fbe2e3b2b313286761c1d01fd2bbf6fac0159"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
