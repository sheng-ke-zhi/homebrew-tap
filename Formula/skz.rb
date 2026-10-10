class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.39"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.39/skz-aarch64-apple-darwin.tar.gz"
      sha256 "72541b8daed5f4865c454290a23417bbe31cafe88c36139aa46e5af41c3650db"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.39/skz-x86_64-apple-darwin.tar.gz"
      sha256 "7f082eebda41d65c9b7f7e8be5d44cfb5f9a1f01c17e556efb7677b907df1c2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.39/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f85ba96f04106cf092e11ebd986335da45f38098eb35cbabdf73022a32ba2fef"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.39/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39defc2cc9a1c46f26d171dd41a8c0afb57c17d5c57bdbee68a20c615550986c"
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
