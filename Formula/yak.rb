class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.2.1/yak_1.2.1_darwin_amd64.tar.gz"
  version "1.2.1"
  sha256 "11c73768729b8e5e62f6cc586efba6116f567eb8b6fcd3c2afd5d14d90cd6a61"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
