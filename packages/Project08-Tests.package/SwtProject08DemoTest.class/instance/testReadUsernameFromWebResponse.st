running
testReadUsernameFromWebResponse

self assert: (self demo readUsernameFromWebResponse: ((WebResponse protocol: 'HTTP/1.1' code: 200) content:  'oauth_token=3197549265-bkLTsewz2Z0qww7xj9e5sMK75JQW1qyW9y0VxpF&oauth_token_secret=AnKN1MKH2W1FnFK4UuvTCk36cGFtr136UiBonTKrBesZz')) = 'SWTSpamaccount'.