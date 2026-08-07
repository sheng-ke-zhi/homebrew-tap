class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.14"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.14/skz-aarch64-apple-darwin.tar.gz"
      sha256 "43b05fee7eb9ecc7c4dba067c07ef0171b70b06234c4fcceef436a32dbeafef6"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.14/skz-x86_64-apple-darwin.tar.gz"
      sha256 "6413d14c97f295c3011dd75cba606f79c9bf343686acd59a5e7ea4e8d51c384a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.14/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eee7b9b1209d733a92828b10fe2596520d25a7c20c68e8b712393a66943f13d6"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.14/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fab3d8c43b8b00eac51706c12644669112392e4ad64558cc12ac47396add3f87"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
