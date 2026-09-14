class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.37"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.37/skz-aarch64-apple-darwin.tar.gz"
      sha256 "a543153feb5e31fd080eef62ef8a41cf121282bc2661963668b6778917003ad7"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.37/skz-x86_64-apple-darwin.tar.gz"
      sha256 "b40a3bc54c1c2c91606afe0622c52a8e2c0b03638913eecad388321391e2e661"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.37/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9ec062e536ae688cfd88dbd96a6c77ba21a00922d40c4aa8c22720e48d54410c"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.37/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d20e8a1300ee73e26a234612d49f65175c41b327fabddc2a37606562de08114"
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
