class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.1.2/yak_1.1.2_darwin_amd64.tar.gz"
  version "1.1.2"
  sha256 "0cb01454505ef8b86e76e1c8268f53cf04215333bb0971cefbe58df856a70739"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
