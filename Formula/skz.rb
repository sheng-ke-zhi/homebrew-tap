class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.29"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.29/skz-aarch64-apple-darwin.tar.gz"
      sha256 "34d23296b1fb007b380f14c1d1b7a5061165a521bab409d3a3d8cc9558ddbce8"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.29/skz-x86_64-apple-darwin.tar.gz"
      sha256 "e13ab63fecc01513f2b9c63c2d680b9f87ac44a3c27cf193b843ae5da7128ece"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.29/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ccb40351d0004d1a2ecf2f7d2607eff2c58ffa66ddf20a6dc223d18bc0560edf"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.29/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0e6003db61e46d1dfd3c4e25e05d070f28028d270ef7a2adb6fae07e19fafd1b"
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
