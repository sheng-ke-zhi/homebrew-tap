class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.16"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.16/skz-aarch64-apple-darwin.tar.gz"
      sha256 "0590f950f9eebc2d545d38ba29f66ce24dfb6f68e563a5f92f859c37fc334373"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.16/skz-x86_64-apple-darwin.tar.gz"
      sha256 "9faaa4f86ea4f7db724708363f8e2c133d8863bdeadaf648e752ef3611f50432"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.16/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0127266f743502787e0a3386ccb9aa023d713716a6e049e1ecff5a04498ca93a"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.16/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "164092708d9875034ea11b47a67754a6f08d3915d171abe86297fa1b620919e1"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
