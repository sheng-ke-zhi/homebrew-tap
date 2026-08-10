class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.15"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.15/skz-aarch64-apple-darwin.tar.gz"
      sha256 "e530cdab2565b410d77a12ad318c3290f3d6407bd7ab84013fe4f8dd264478ac"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.15/skz-x86_64-apple-darwin.tar.gz"
      sha256 "d7ac19e0b72ba375b9a343beda37d4a9a3c534b63a689f0735dbc9343c3f6fdf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.15/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "288fa398f59db39df9425b6364098c4ad6270ec31f629d1f304ff6d5993bec7c"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.15/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "48ea965a9419495279d07a4cc4174e6e83e41c10f3c1ac8e7437d8fa954c2899"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
