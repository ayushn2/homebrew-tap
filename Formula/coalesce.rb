class Coalesce < Formula
  desc "Bitcoin-native distributed settlement network"
  homepage "https://github.com/ayushn2/coalesce-releases"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.17/coalesce-node-darwin-arm64"
      sha256 "3bf1c308845c4f6834eaceba80654e3d37af9c3259f7f73132cce7e0c9829deb"
    else
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.17/coalesce-node-darwin-amd64"
      sha256 "8822522a11f196206969c8627b044059f625cd61f13bca8657ce5c886db4129d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.17/coalesce-node-linux-arm64"
      sha256 "626168540094a9aad45f6944af2a47970e2fd1e0edd8690ebc4d0b024eb181e4"
    else
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.17/coalesce-node-linux-amd64"
      sha256 "6cf7c859ebffb73a8afb6d7a3c798d21718cd0e186a58f78b2c6cef135a90fb9"
    end
  end

  def install
    bin.install Dir["coalesce-node*"].first => "coalesce-node"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coalesce-node version")
  end
end
