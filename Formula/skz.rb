class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.8/skz-aarch64-apple-darwin.tar.gz"
      sha256 "accf732430a2ea60efd83718e8ca8d9e6346ea669a69b69cd265f772bf243634"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.8/skz-x86_64-apple-darwin.tar.gz"
      sha256 "aad2ea81086b0689296c527998d359d3983d86c234d9034ff000106f86c5a6ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.8/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "949543a6eaa88704ae552bfc38cbfd81348e92287bc27646d3dd273ced9601b3"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.8/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "16ae0d5b3ebf8a0cb23c51965e4061a0d83d8e42f549281b8604131bbc749cf5"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
