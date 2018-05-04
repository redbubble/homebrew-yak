class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.2.1/yak_1.2.1_darwin_amd64.tar.gz"
  version "1.2.1"
  sha256 "0b88a952937a414e65d49c614b63ecbe8f55c975a8d4838a86d8aeb25ada0218"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
