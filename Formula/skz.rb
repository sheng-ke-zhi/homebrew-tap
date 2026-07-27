class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli-releases/releases/download/v0.1.3/skz-aarch64-apple-darwin.tar.gz"
      sha256 "c0a45ed7b2bd84233c42b33a0ddc705587ca57a8e706e6947225c9f86a4c9620"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli-releases/releases/download/v0.1.3/skz-x86_64-apple-darwin.tar.gz"
      sha256 "b9958c9ff630a56bf668541435a77030a74570011eff3a74874bcbb3ef1219d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli-releases/releases/download/v0.1.3/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd5f1690f58816ea39be293b93ffdb07708c5ccfca4b9cdedc91918bc4f18abf"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli-releases/releases/download/v0.1.3/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d38d3f5fa9ecc0490e37cdc1683c0fcb69769a13473ba4b76c56c90da4694d4"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
