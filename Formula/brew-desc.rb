require 'formula'

class BrewDesc < Formula
  homepage 'https://github.com/telemachus/homebrew-desc/'
  url 'https://github.com/telemachus/homebrew-desc.git'
  version '0.9.156'

  def install
    opoo <<-EOS.undent
      `brew desc` has moved to a new install and upgrade mechanism. You no
      longer need to install the formula. Instead once you've tapped this
      repository, you've got the command. And whenever you run `brew update`,
      this command will be updated automatically.
    EOS
  end
end
