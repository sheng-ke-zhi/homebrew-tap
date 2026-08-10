class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.16"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.16/skz-aarch64-apple-darwin.tar.gz"
      sha256 "b807c925c8cee350cc5855f8703a8c49e40ebc2d76ebebdc1ee40e17d529fa7a"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.16/skz-x86_64-apple-darwin.tar.gz"
      sha256 "a6ec0a4adcb10fe8b50063406a390e791c3fd6490bf548bce483bac6b8f3ed00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.16/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f9b0ab83f418b4b90b33606b71658413ff20b0f96495a5b9e9ae003a5a444331"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.16/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95c7919e05fb08085b8a83de7a65b9fff90d39621577c68afca8cdbdc6605663"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
