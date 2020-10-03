# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.8.0/darwin_amd64_terrastate"
      sha256 "70a8b650582e2f5aeddbd92800888561c8bae7e19a4fabaf27e630d4632aa660"
      version "1.8.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.8.0/linux_amd64_terrastate"
      sha256 "a8644c353bd141ca0f9c1c711e6198fe5488790d7098784209eaf6bad03eb957"
      version "1.8.0"
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