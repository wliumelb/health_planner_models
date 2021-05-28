final infoSectionTestData = [
  {
    'input': {
      'title': 'About Me',
      'photoUrl': 'https://my_photo_url',
      'body': 'This info section is about me.',
    },
    'value':
        'title: About Me, photoUrl: https://my_photo_url, body: This info section is about me.',
  },
  {
    'input': {
      'title': 'About Me',
      'body': 'This info section is about me.',
    },
    'value':
        'title: About Me, photoUrl: , body: This info section is about me.',
  },
  {
    'input': {
      'body': 'This info section has no title.',
    },
    'value':
        'title: , photoUrl: , body: This info section has no title.',
  },
];
