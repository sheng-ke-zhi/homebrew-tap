class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.28"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.28/skz-aarch64-apple-darwin.tar.gz"
      sha256 "43118a762130a6b57003449f51061131337a34af9576547c2366088d9ae385e7"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.28/skz-x86_64-apple-darwin.tar.gz"
      sha256 "65e6b454bc407f5eb566b0d55106082b231da771c35a583976424939ff2b4636"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.28/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b79cdcf51e9ca2c555e5dda481c6c47f4f388d093eff7a74d45bc4f83cab9e43"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.28/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c980ebe540684569fa0a1925a5c924052d9f91b445a0591af39c30b888a23777"
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
