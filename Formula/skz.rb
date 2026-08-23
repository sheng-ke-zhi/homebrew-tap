class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.27"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.27/skz-aarch64-apple-darwin.tar.gz"
      sha256 "0d2295954ce70d6a53d7b54611d7d7794fa5385ccc72f14998bdd7c575ec2ce5"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.27/skz-x86_64-apple-darwin.tar.gz"
      sha256 "d2a30ac736d0f5bc741b0a296508da4b20b4c0ceab554448abcac755bf502152"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.27/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1634844c72b48f2f422a059d775f1d2864a69622a3e35f24e3d9475330b00556"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.27/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ef097f50b6d9c94d41175629b59208ad7389341156e8825ce593a52b52468ae0"
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
