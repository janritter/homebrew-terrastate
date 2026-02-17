# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/2.1.3/darwin_amd64_terrastate"
      sha256 "6ab92710a64b4b05a5e18f440f041d537040bab78e18e759d52de72e027ad999"
      version "2.1.3"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/2.1.3/linux_amd64_terrastate"
      sha256 "9ddf2bd7c8a63be3015b45996a40c5db5d51fd8cbecd8f200d9ddfe26842ac78"
      version "2.1.3"
    end

    def install
      if OS.mac?
        bin.install "darwin_amd64_terrastate"
        mv bin/"darwin_amd64_terrastate", bin/"terrastate"
      elsif OS.linux?
        bin.install "linux_amd64_terrastate"
        mv bin/"linux_amd64_terrastate", bin/"terrastate"
      end
    end
  
    test do
      system "false"
    end
  end