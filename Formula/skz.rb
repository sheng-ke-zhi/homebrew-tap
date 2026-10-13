class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.40"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.40/skz-aarch64-apple-darwin.tar.gz"
      sha256 "7c2fe5dffa48a61b753af13a8a4cea11f30d15590036f038b38b1abea905ded5"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.40/skz-x86_64-apple-darwin.tar.gz"
      sha256 "d88e97ebf2854a3d722def11fa689c8f651b757326f3df86f2ccfa9d5b6aeb9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.40/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d43f659b3289e82050fc0e309bf7079fe2bcf1eb1546df507ead8793944157bc"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.40/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2c55b83de7e44af55a6b23d5c8a94769040b4d7d051c9ad93c0fc5bfee431073"
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
