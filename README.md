# joblue

I'm using this repository as a playground to experiment with GitHub Workflows and the GitHub Container Registry.
In the future, I may also decide to build this uBlue image into my daily-driver Linux distro, but it's really not there yet.

If you're curious to try out this (largely auto generated) project,
you can do so by [downloading the ISO](https://nightly.link/johannesbremer/joblue/workflows/build-joblue/main/joblue-latest.zip)
or by rebasing from an existing Fedora Atomic installation as shown below:

- Rebase onto the unsigned image:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/johannesbremer/joblue:latest
  ```
- Reboot into the new image:
  ```
  systemctl reboot
  ```
- Then rebase onto the signed image:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/johannesbremer/joblue:latest
  ```
- Reboot into the new image one last time:
  ```
  systemctl reboot
  ```