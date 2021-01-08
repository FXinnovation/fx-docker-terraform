3.15.0
======

  * maintenance: Pin terraform to 0.14.4

3.14.0
======

  * maintenance: Pin terraform to 0.13.4

3.13.0
======

  * maintenance: Pin terraform to 0.13.2

3.12.0
======

  * maintenance: Pin terraform to 0.13.1
  * maintenance: Pins pre-commit-hooks to 3.2.0

3.11.0
======

  * maintenance: Pin terraform to 0.12.29

3.10.0
======

  * maintenance: Pin terraform to 0.12.28

3.9.0
=====

  * maintenance: pin terraform to 0.12.27
  * maintenance: pin docker image to 19.03.12
  * maintenance: pin other dependencies

3.8.0
=====

  * maintenance: Pin terraform to 0.12.26

3.7.0
=====

  * maintenance: pin terraform to 0.12.25
  * doc: add LICENSE file
  * doc: remove AUTHOR file

3.6.0 / 2020-03-25
==================

  * Pin terraform to 0.12.24

3.5.0 / 2020-03-09
==================

  * Pin terraform to 0.12.23

3.4.0 / 2020-01-23
==================

  * Pin terraform to 0.12.20

3.3.0 / 2020-01-09
==================

  * Pin terraform to 0.12.19

3.2.0 / 2019-11-27
==================

  * maintenance: Pin terraform to 0.12.6

3.1.0 / 2019-11-15
==================

  * feature: Pin terraform to 0.12.15

3.0.0 / 2019-10-29
==================

  * refactor: Maintaining package versions
  * breaking: Set docker as base image

2.11.0 / 2019-10-18
===================

  * Pin terraform to 0.12.12

2.10.0 / 2019-10-18
===================

  * Set openssh to 7.9_p1-r6
  * Pin terraform to 0.12.11

2.9.0 / 2019-10-04
==================

  * Add some more comments and author file
  * Add changelog file with full history
  * Pin Terraform to 0.12.9

2.8.0 / 2019-09-09
==================

  * Pin terraform to 0.12.8

2.7.0 / 2019-08-29
==================

  * Bump terraform to 0.12.7

2.6.0 / 2019-08-06
==================

  * Pin terraform to 0.12.6
  * Add pre-commit config and pin terraform to 0.12.4

2.5.0 / 2019-05-23
==================

  * Merged in feat/update (pull request #22)
  * "tech: bumps Terraform to 0.11.14"

2.4.1 / 2019-05-04
==================

  * Merged in hotfix/bumpsOpenSSH (pull request #21)
  * tech: bumps openssh to 7.9_p1-r5

2.4.0 / 2019-03-14
==================

  * Merged in feature/new-minor-version (pull request #20)
  * tech: bumps to alpine 3.9
  * tech: bumps to 0.11.13

2.3.0 / 2019-03-14
==================

  * Merged in feature/cisCompliancy (pull request #19)
  * Add some hardening
  * Adapted Jenkinsfile
  * Pin newer version of openssh

2.2.0 / 2019-01-17
==================

  * Merged in bumps-terraform (pull request #18)
  * test: uses new Jenkinsfile function
  * fix: version number for alpine
  * tech: bumps to alpine 3.8 & latest available softs
  * tech: bumps to 0.11.11

2.1.0 / 2017-10-11
==================

  * Merged in bumpTerraform (pull request #17)
  * Fixed yet another typo in build script
  * Fixed typo in build scropt
  * Bump terraform and remove plugins

2.0.0 / 2017-09-05
==================

  * Merged in removeMagic (pull request #16)
  * Removing entrypoint
  * Merged in feature/add-terraform-0.10 (pull request #15)
  * add convenience layer for 0.9.x user that may not run init in their flow
  * Corrected repostucture for new entrypoint
  * use $TF_PLUGINS_DIR instead of hardcoded path to plugins dir
  * add entrypoint to make the use of -plugin-dir on init transparent
  * Placing env var in Dockerfile instead of build script
  * pivot switch to terraform 0.10.2 directly instead of an hybrid approach
  * Add terraform-0.10 binary and aws/gce provider
  * Merged in bumpVer (pull request #14)
  * Bumping terraform back to 0.9.11
  * Remove publishing docker images because reasons
  * Add trimming to master beard
  * Debugging stuff
  * Merged in refactor_terraform (pull request #13)
  * I'm stupid
  * Add push of master branch
  * Adding openssh to the image
  * Bump terraform to 0.10.1
  * Changing test
  * Added new test for git in the docker image
  * Bumping some version and added git

1.9.0 / 2017-06-08
==================

  * Merged in bumpver (pull request #12)
  * Bump terraform to 0.9.8

1.8.0 / 2017-06-08
==================

  * Merged in bumpver (pull request #11)
  * Bump terraform 0.9.7

1.7.0 / 2017-06-08
==================

  * Merged in bumpVerwq (pull request #10)
  * Bump terraform to 0.9.6

1.6.0 / 2017-05-18
==================

  * Merged in bumpver (pull request #9)
  * Bump terraform 0.9.5

1.5.0 / 2017-04-29
==================

  * Merged in bumpver (pull request #8)
  * Bump terraform to 0.9.4

1.4.0 / 2017-04-29
==================

  * Merged in bumpver (pull request #7)
  * Bump terraform to 0.9.3

1.3.0 / 2017-04-05
==================

  * Merged in bumpver (pull request #6)
  * Bump ca certificates to 20161130-r1
  * Bump terraform to 0.9.2

1.2.2 / 2017-03-22
==================

  * Merged in bumpversion (pull request #5)
  * Bumped terraform version to 0.9.1
  * Merged in addLabel (pull request #4)
  * Added label for ca-certificates and pinned version
  * Merged in bumpver (pull request #3)
  * Bumped version of terraform to 0.9.0
  * Merged in betterhipchatplugin (pull request #2)
  * Improved hip chat notification

1.2.1 / 2017-03-03
==================

  * Merged in bumpver (pull request #1)
  * Bump packer to 0.8.8
  * Fixed typo in message of notify step
  * Added message to hipchat notification
  * Removed debug for failed build
  * Trying some stuff
  * Debugging some stuff
  * Removed stage for notify
  * Tring some stuff
  * Still doing debug
  * Added some debug
  * Added pre to notification
  * Testing Error
  * Added message to error
  * Testing jipchat notifications
  * Added hipchat notification

1.2.0 / 2017-02-17
==================

  * Removed a test command
  * Changed test command of container
  * Corrected dockerfile
  * Added special hooks for dockerhub
  * Modified readme
  * Removed publishing of the image
  * adapted Jenkinsfile to use build args
  * Added Build args and some labels

1.1.4 / 2017-02-17
==================

  * Make things more variable

1.1.3 / 2017-02-17
==================

  * Fixed typo in tag and added color to output

1.1.2 / 2017-02-17
==================

  * Trying to get password working

1.1.1 / 2017-02-17
==================

  * Testing Jenkinsfile
  * Simplified tag checking
  * Add checking tag against regex

1.1.0 / 2017-02-16
==================

  * Set terraform to 0.8.7
  * Trying to get git url dynamically
  * Setting static stuff :'(
  * Testing if this works
  * Forgot to escape one char
  * Added escapeing of chars
  * Testing Jenkinsfile

1.0.1 / 2017-02-16
==================

  * Changed labels with new versionning system

1.0.0 / 2017-02-16
==================

  * Changed build setting
  * Changed readme because of tagging changes
  * Added labels to image
  * Added email address of maintainer

0.8.6 / 2017-02-08
==================

  * Bump terraform to 0.8.6

0.8.5 / 2017-01-30
==================

  * Set terraform version to 0.8.5

0.8.4 / 2017-01-20
==================

  * Added more information in the README
  * Changed terraform version handling
  * Remove apk cache
  * Added some comments to readme

0.2.0 / 2017-01-12
==================

  * Update terraform to 0.8.4

0.1.1 / 2017-01-10
==================

  * Corrected test stage in Jenkinsfile

0.1.0 / 2017-01-10
==================

  * Added Jenkinsfile
  * Added initial files
  * Added readme
