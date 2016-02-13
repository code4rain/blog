---
layout: post
title: "SSH 로그인시 접속지연 해결방법"
date: 2014-03-09 20:14
comments: true
---

사내망의 서버나 PC와 같이 IP에 대해 DNS에 도메인 네임이 등록되지 않는 서버에 접속시 로그인 과정에서 3,4초 딜레이가 발생한다.

`/etc/ssh/sshd_config`파일에 `UseDNS no`을 추가하면 딜레이를 없앨 수 있다.

파일 수정 수 아래 명령으로 ssh 데몬 재시작해야 합니다.
`$sudo /etc/init.d/ssh restart` 혹은 `service ssh restart`
