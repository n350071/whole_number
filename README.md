# WholeNumber

Give a method to Float and Integer `to_whole_num`, that will convert number to 0,1,2,3,4,... .

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'whole_number'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install whole_number

## Usage

```
100.to_whole_num  => 100
3.to_whole_num    => 3
2.to_whole_num    => 2
1.to_whole_num    => 1
0.to_whole_num    => 0
-1.to_whole_num   => 0
-2.to_whole_num   => 0
-3.to_whole_num   => 0
-100.to_whole_num => 0
```

```
2.0.to_whole_num  => 2
1.9.to_whole_num  => 1
1.1.to_whole_num  => 1
1.0.to_whole_num  => 1
0.9.to_whole_num  => 0
0.0.to_whole_num  => 0
-0.9.to_whole_num => 0
-1.0.to_whole_num => 0
-1.1.to_whole_num => 0
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nao0515ki/whole_number. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the WholeNumber project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/nao0515ki/whole_number/blob/master/CODE_OF_CONDUCT.md).
