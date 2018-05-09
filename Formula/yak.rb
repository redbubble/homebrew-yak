class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.2.3/yak_1.2.3_darwin_amd64.tar.gz"
  version "1.2.3"
  sha256 "87500c30d49c3108cddcfe4c3b93d0b7685d640474d30501d0753c5b2cebf96b"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
