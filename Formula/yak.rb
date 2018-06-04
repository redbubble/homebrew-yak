class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.3.3/yak_1.3.3_darwin_amd64.tar.gz"
  version "1.3.3"
  sha256 "2d183650bbdea5e4c34c89efdffe8f3d85fcb0da8ad610deb43352f7ce3e35d9"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
