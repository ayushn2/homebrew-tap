class Coalesce < Formula
  desc "Bitcoin-native distributed settlement network"
  homepage "https://github.com/ayushn2/coalesce-releases"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.17/coalesce-node-darwin-arm64"
      sha256 "fac8635b09f6b957331e77af38754793286b0afc2141dbc859cead00cc8330cb"
    else
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.17/coalesce-node-darwin-amd64"
      sha256 "b92cad06dddb7d21fac8cfb7698719fd497ce39a145d84619a9e8769329c0ca8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.17/coalesce-node-linux-arm64"
      sha256 "b7629bb1565672307e17e6098741d23dd13c015d3e468ea3ce50161be17f575c"
    else
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.17/coalesce-node-linux-amd64"
      sha256 "866bcf8f91a3687fbe5f21c379946acbd506090ae5d2ef15e795edcabfa7246d"
    end
  end

  def install
    bin.install Dir["coalesce-node*"].first => "coalesce-node"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coalesce-node version")
  end
end
