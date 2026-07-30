class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.5/skz-aarch64-apple-darwin.tar.gz"
      sha256 "904c370a86e57de97bf4358525ea5ddaa95220837d4d0dd2b53a4f89dd9ce531"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.5/skz-x86_64-apple-darwin.tar.gz"
      sha256 "5af83560fea465844abd4fdefcf03bcbe7d4046ba490cda6cf870e0be54d4b77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.5/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9bdefd83b191f1c402e6b95371d52c2c7b451dabe99f3effa1f9417d6e74fc67"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.5/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b0830889f462e735a8ee0f048a780cf63f963d951793e5fac30cee5b824d073a"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
