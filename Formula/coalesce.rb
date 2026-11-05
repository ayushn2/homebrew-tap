class Coalesce < Formula
  desc "Bitcoin-native distributed settlement network"
  homepage "https://github.com/ayushn2/coalesce-releases"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.19/coalesce-node-darwin-arm64"
      sha256 "d526c9309f7df115b99c751e3e6d37db44796e7c1421de13b127b6b4842844ca"
    else
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.19/coalesce-node-darwin-amd64"
      sha256 "fa136ca0df0bcbddd2db0cb9c492bea4630ae41d81eeb225788e83ed90ce8122"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.19/coalesce-node-linux-arm64"
      sha256 "21c9d84a92489ef949641bf12589db32f8e7a97ef091f136645a057a706e112d"
    else
      url "https://github.com/ayushn2/coalesce-releases/releases/download/v0.1.19/coalesce-node-linux-amd64"
      sha256 "e0a66a4ae668abfbed3f03ec95429b6d264221e45dfb87622f244817a131c93e"
    end
  end

  def install
    bin.install Dir["coalesce-node*"].first => "coalesce-node"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coalesce-node version")
  end
end
