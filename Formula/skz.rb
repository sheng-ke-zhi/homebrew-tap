class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.44"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.44/skz-aarch64-apple-darwin.tar.gz"
      sha256 "d604db23f564c71e5baed148431ca0826e3504edda5af31d41df195e9f2711c0"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.44/skz-x86_64-apple-darwin.tar.gz"
      sha256 "04d0ddade81d4a410a8d1d4438eb452e3daa8e8b48907b2afe47bfa921a75933"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.44/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "155886109583311b9891a0cedbd86164d9bd0fa747d0b08edff33b0971765de7"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.44/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6cd84c7b66de8b0d6eede890acd3e1c368bc34b146794d27280e50bb84d04571"
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
