# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.6.0/darwin_amd64_terrastate"
      sha256 "b2627a4637c2bcd6ff57d8add10cc83b43bdfed91fc1e45921893c85f403d670"
      version "1.6.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.6.0/linux_amd64_terrastate"
      sha256 "f738bf9b2b3d6a5cf08b5b404913f52a1a2d8f47aa49e4d30b4e8d85a2bec684"
      version "1.6.0"
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