# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/2.0.0/darwin_amd64_terrastate"
      sha256 "fdb23aed869647e0dc3d348f960f5ae5864431b79e72b2b2ed08bcc0e40693d5"
      version "2.0.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/2.0.0/linux_amd64_terrastate"
      sha256 "cb302bae9869fac908eb219b7d383680d57643dea833e4dd96d1cc58a8225923"
      version "2.0.0"
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