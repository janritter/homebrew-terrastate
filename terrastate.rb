# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.3.1/darwin_amd64_terrastate"
      sha256 "8c57846b49e59cc25ffbd01dbb2cbd036051f45f4733e4670d5ad97d51708db4"
      version "1.3.1"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.3.1/linux_amd64_terrastate"
      sha256 "48311618fb80c566eeacd024f09e80804ebe96f5cb933d6f93605c2a4cfcfbc6"
      version "1.3.1"
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