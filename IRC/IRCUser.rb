# encoding: utf-8
# This file is part of the K5 bot project.
# See files README.md and COPYING for copyright and licensing information.

# IRCUser describes an IRC user

class IRCUser
  attr_reader :name
  attr_accessor :realname, :host, :nick

  def initialize(name=nil, host=nil, realname=nil, nick=nil)
    @ident = !(name =~ /^~/)
    @name = name.sub(/^~/, '')
    @host, @realname, @nick = host, realname, nick
  end

  def ident?; @ident; end
end