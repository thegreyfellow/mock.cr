require "./morse/*"

module Morse
  extend self
  # 2. Spacing and length of the signals
  # 2.1 A dash is equal to three dots.
  # 2.2 The space between the signals forming the same letter
  #     is equal to one dot.
  # 2.3 The space between two letters is equal to three dots.
  # 2.4 The space between two words is equal to seven dots.

  # The IUT International Morse Code alphabets.
  MORSE_LANGUAGE = {
    "a" => ".−", "q" => "−−.−", 7 => "−−...",
    "b" => "−...", "r" => ".−.", 8 => "−−−..",
    "c" => "−.−.", "s" => "...", 9 => "−−−−.",
    "d" => "−..", "t" => "−", 0 => "−−−−−",
    "e" => ".", "u" => "..−", "." => ".−.−.−",
    "f" => "..−.", "v" => "...−", "," => "−−..−−",
    "g" => "−−.", "w" => ".−−", "?" => "..−−..",
    "h" => "....", "x" => "−..−", " " => "/",
    "i" => "..", "y" => "−.−−",
    "j" => ".−−−", "z" => "−−..",
    "k" => "−.-", 1 => ".−−−−",
    "l" => ".−..", 2 => "..−−−",
    "m" => "−−", 3 => "...−−",
    "n" => "−.", 4 => "....−",
    "o" => "−−−", 5 => ".....",
    "p" => ".−−.", 6 => "−....",
  }

  # encode: takes a string and encodes it into morse code.
  def encode(text)
    # return unless text
    text.downcase.split("").map do |char|
      MORSE_LANGUAGE[char]
    end.join(" ")
  end

  # decode: takes a encoded string and decodes it back into english alphabets.
  def decode(text)
    # return unless text
    text.split(" ").map do |char|
      MORSE_LANGUAGE.key(char)
    end.join("")
  end
end

# example running encode method:
to_encode = "hello world, this youssef from the past."
puts Morse.encode(to_encode)
