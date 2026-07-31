class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.9"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.9/skz-aarch64-apple-darwin.tar.gz"
      sha256 "c9b2456f4443398f62b8e422c5eae22bad0e8474f52cd23d0ecc4e8760538789"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.9/skz-x86_64-apple-darwin.tar.gz"
      sha256 "8d8aec8c712b314cbefe35be950d2a104374633801e87661185f28c2ab5c803d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.9/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9e7f7f614d51a2e623f190e239649f009c188bc2d4ca285281f346fa4f02e2eb"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.9/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d1329e777dd4661e3ebc10e7b5e2c53fd4383754c49241ff7ad75011cf81083b"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
