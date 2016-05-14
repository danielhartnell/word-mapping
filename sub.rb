#!/usr/bin/env ruby
#
# Inspired by: http://imgs.xkcd.com/comics/substitutions_3.png
# By Daniel Hartnell

replacements = { 
	'gaffe' => 'magic spell', 
	'ancient' => 'haunted',
	'star-studded' => 'blood soaked',
	'remains to be seen' => 'will never be known',
	'silver bullet' => 'way to kill werewolves',
	'subway system' => 'tunnels i found',
	'surprising' => 'surprising (but not to me)',
	'war of words' => 'interplanetary war',
	'tension' => 'sexual tension',
	'cautiously optimistic' => 'delusional',
	'doctor who' => 'the big bang theory',
	'win votes' => 'find pokemon',
	'behind the headlines' => 'beyond the grave',
	'email' => 'poem',
	'facebook post' => 'poem',
	'tweet' => 'poem',
	'facebook ceo' => 'this guy',
	'latest' => 'final',
	'disrupt' => 'destroy',
	'meeting' => 'menage a trois',
	'scientists' => 'channing tatum and his friends',
	'you won\'t believe' => 'i\'m really sad about'
}

file = File.read('./article.txt')
re = Regexp.new(replacements.keys.map { |x| Regexp.escape(x) }.join('|'))
s = file.downcase.gsub(re, replacements)

puts s
