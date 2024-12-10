# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/2.0.1/darwin_amd64_terrastate"
      sha256 "344d2a8405e5d0537cc8ad8c4398672447d249063102f095c67552b295b418f9"
      version "2.0.1"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/2.0.1/linux_amd64_terrastate"
      sha256 "e00869b5b18bc66cd0500b7fcffa98549a8daf6fdacba703be42cb62aa216ef8"
      version "2.0.1"
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