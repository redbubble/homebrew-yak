class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.2.0/yak_1.2.0_darwin_amd64.tar.gz"
  version "1.2.0"
  sha256 "43c7de90a536c63af4d0401afde2b471a142d55b5aa8083d405cc20eba56e77c"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
