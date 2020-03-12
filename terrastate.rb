# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.3.1/darwin_amd64_terrastate"
      sha256 "9db1e1fed2e326c250ffeae40b9e07a79bbd86fb1d92e3d49ff925d624c36abb"
      version "1.3.1"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.3.1/linux_amd64_terrastate"
      sha256 "a90f41d621aa2baf57bf968c43944295048f55ce84649b25101e0eeb0e9fe909"
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