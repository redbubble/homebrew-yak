class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.2.2/yak_1.2.2_darwin_amd64.tar.gz"
  version "1.2.2"
  sha256 "6437c03a975e63dbdb4fc52a9d2a7f3fb8eb8f8e5a5c95fec32a65cf8760abcc"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
