# jenkins-agent-ssh-arm64
jenkins/ssh-agent:alpine on arm64, with ability to build docker image from cloned repo.

In Jenkins' agent configuration in the browser, configure the Launch method:
- Launch method: Launch agents via SSH
- Add your jenkins agent SSH private key
- Advanced > JavaPath: /opt/java/openjdk/bin/java

```sh
> ./start-agent.sh "<your-jenkins-agent-ssh-pubkey>"
```
