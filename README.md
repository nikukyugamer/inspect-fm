# Inspect FM
- show the list s below i `FileMaker Server`
    - Database Name
    - Layout Name in Database
    - Field Name in Layout

# Screenshot
![inspect_fm](inspect_fm.png "inspect_fm")

# Prepare
- set your FileMaker config in [`config/filemaker.yml`](/config/filemaker.yml)
- install gems

```bash
$ bundle install --path vendor/bundle
```

# Start

```bash
$ bundle exec unicorn -c unicorn.conf -p 4567 -D
```

# Access
- access to `http://localhost:4567`

# Gem
- [mech/filemaker-ruby](https://github.com/mech/filemaker-ruby)

# Powered by
- [Sinatra](http://www.sinatrarb.com/)
- [Honoka](http://honokak.osaka/)
- [Capistrano](http://capistranorb.com/)

# Note
- the target names aren't shown when your account doesn't have the authentication
- how to stop unicorn
    - use 'back quote' for cat command

```bash
$ kill -QUIT `cat /tmp/unicorn.inspect-fm.pid'
```

# LICENSE
[MIT LICENSE](/LICENSE)