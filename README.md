# GitHub Action for NoticeMe

The GitHub Action for [NoticeMe](https://iiiii.li/), send notification to iPhone from GitHub actions.

## Usage

There are one required Secrets to be set:

* `NOTICE_ME_TOKEN` - this is the your NoticeMe token, you can check from you NoticeMe App.

An example would look like this:

```
action "notify" {
  uses = "metrue/noticeme-github-action@master"
  secrets = ["NOTICE_ME_TOKEN"]
  args = ["BuildNoticeMeGitHubActionDone"]
}
```
