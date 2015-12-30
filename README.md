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

$ leet -u '3y3 [_<>\|& /2(_)13\|/!'
$ i lovg rubwi
```
## code

```ruby
require 'leet'

puts "I Love Ruby!".leet
#=> j 1_p\/|=- .-L|/3`/!

puts "j 1_p\/|=- .-L|/3`/!".unleet
#=> i lo rubyi

```

# TODO

* unleet 100% (Maybe it cannot be 100% for it like hash reverse.)
* han pinyin
