require 'formula'

class BrewDesc < Formula
  homepage 'https://github.com/telemachus/homebrew-desc/'
  url 'git://github.com/telemachus/homebrew-desc.git'
  version '0.9.65'

  skip_clean 'bin'

  def install
    bin.install 'brew-desc.rb'
    (bin+'brew-desc.rb').chmod 0755
  end
end
