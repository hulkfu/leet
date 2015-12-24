leet gem
==========

A ruby gem that convert string to leet or unleet it.

Every leet code only has a source char for unleet.

Thanks to the leet table [on wikipedia](https://zh.wikipedia.org/wiki/Leet).

# usage

```
gem install leet
```

## bin

```sh
$ leet "I Love Ruby!"
$ 3y3 [_<>\|& /2(_)13\|/!
```
## code

```ruby
require 'leet'

puts "I Love Ruby!".leet
#=> j 1_p\/|=- .-L|/3`/!
```

# TODO

* unleet
* han pinyin
