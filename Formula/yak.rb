class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.4.0/yak_1.4.0_darwin_amd64.tar.gz"
  version "1.4.0"
  sha256 "4daa63ff5f61b57c3448fd2b5026e1fcac51671c8e9d1872437df1c55652cb1f"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
