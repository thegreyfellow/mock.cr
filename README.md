# morse

Morse code encoder/decoder.

## Installation

Add this to your shard.yml:

```yml
dependencies:
  morse:
    github: thegreyfellow/morse.cr
    version: "~> 0.1.0"
```

## Usage

```crystal
# Encoding a string
to_encode = "hello world, this is me from the past."

encoded_string = Morse.encode(to_encode)
# => ".... . .−.. .−.. −−− / .−− −−− .−. .−.. −.. −−..−− / − .... .. ... / −.−− −−− ..− ... ... . ..−. / ..−. .−. −−− −− / − .... . / .−−. .− ... − .−.−.−"

# Decoding a string
to_decode = ".... . .−.. .−.. −−− / .−− −−− .−. .−.. −.. −−..−− / − .... .. ... / −.−− −−− ..− ... ... . ..−. / ..−. .−. −−− −− / − .... . / .−−. .− ... − .−.−.−"

decoded_string = Morse.decode(to_decode)
# => "hello world, this is me from the past."
```

## Development

- git clone the repo.
- start hacking around :).


## Contributing

1. Fork it ( https://github.com/thegreyfellow/morse/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [thegreyfellow](https://github.com/thegreyfellow) - creator, maintainer
