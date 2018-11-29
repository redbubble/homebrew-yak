class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.5.2/yak_1.5.2_darwin_amd64.tar.gz"
  version "1.5.2"
  sha256 "7004fef11572abd4dc3b47f4f32d1302196347aaa17d61142bd42b3311512d47"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
