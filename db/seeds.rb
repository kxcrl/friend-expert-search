alan = Expert.create(
  name: 'Alan',
  website: 'http://google.com',
  website_short: 'http://goog.le',
  h1s: '',
  h2s: '',
  h3s: ''
)

bart = Expert.create(
  name: 'Bart',
  website: 'http://google.com',
  website_short: 'http://goog.le',
  h1s: '',
  h2s: '',
  h3s: ''
)

claudia = Expert.create(
  name: 'Claudia',
  website: 'http://google.com',
  website_short: 'http://goog.le',
  h1s: 'dog breeding in ukraine',
  h2s: '',
  h3s: ''
)

Friendship.create_both(alan, bart)
Friendship.create_both(claudia, bart)
