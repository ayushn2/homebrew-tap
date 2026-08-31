class Coalesce < Formula
  desc "Bitcoin-native distributed settlement network"
  homepage "https://github.com/ayushn2/coalesce-releases"
  version "0.1.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.16/coalesce-node-darwin-arm64"
      sha256 "940bfad0796da701f59b16d6340da4bbaa0273bec84b73b213b33a8eaf614317"
    else
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.16/coalesce-node-darwin-amd64"
      sha256 "2980abe6415d6d1d969ab0a8793833c38fbcef50d8e43441657bb5d24a58ba1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.16/coalesce-node-linux-arm64"
      sha256 "aa158e64fbbb13faa244e4b75e57f0857dc3f93e199699da77823fd9f1f10b5d"
    else
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.16/coalesce-node-linux-amd64"
      sha256 "4bdb04300305121d008ac2edc5761b77b210429b82c58cd0d44091fe07820786"
    end
  end

  def install
    bin.install Dir["coalesce-node*"].first => "coalesce-node"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coalesce-node version")
  end
end
