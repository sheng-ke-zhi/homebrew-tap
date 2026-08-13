class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.20"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.20/skz-aarch64-apple-darwin.tar.gz"
      sha256 "1fbf833420c843713d921b18646d6388ab8bdcacca30a23f8cb49cb436cccea9"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.20/skz-x86_64-apple-darwin.tar.gz"
      sha256 "8b1bef0b5199c038d28493e19cc97e24955d32320f482e6e5318cf380e73ae7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.20/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c6a749970d168fe1b551dc924ac30e8a96bdc6d0cef5b62884ff9d19f74345f9"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.20/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7706921e87952107d5259f8b567bbf66f72a990b1c182c795e7f0ce8e9c5e81a"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
