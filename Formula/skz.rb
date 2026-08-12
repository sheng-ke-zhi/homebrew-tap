class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.19"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.19/skz-aarch64-apple-darwin.tar.gz"
      sha256 "3cce7a9348bb78d8b9213990f2a2d018542503d2698fd1a5d55cb2cc31420dda"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.19/skz-x86_64-apple-darwin.tar.gz"
      sha256 "82f7656c80c337c134bfb57b7f11e1bc8f99e8de9f7b69f4f5d261a15e22063b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.19/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ba83690ca71a81f9dec4dfec20238ecdd7f6f6e943b9717bbc12629cbcf043c8"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.19/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9314b6d1c05a6ef0e9eca9ebc9023f89b793f1eb9bf2bbc38cf8a85b9d995959"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
