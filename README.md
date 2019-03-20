# Semaphore demo CI pipeline for iOS with Swift and Xcode

Example Swift app and CI pipeline showing how to run iOS projects on
[Semaphore](https://semaphoreci.com).

## App overview

Requires:

- Xcode 10.1
- Swift 4.2
- Uses [Fastlane](https://fastlane.tools) as build automation tool

### Build locally

#### Xcode

```
xcodebuild clean test -project HelloWorld.xcodeproj -scheme HelloWorld -destination "platform=iOS Simulator,OS=12.1,name=iPhone XR"
```

#### Fastlane

```
bundle install --path vendor/gems
bundle exec fastlane ios scan
bundle exec fastlane ios build
```

## CI pipeline on Semaphore

The Semaphore pipeline is configured to:

1. Run application test
2. Build the app with gym (which would generate an `ipa` file signed by your
   developer certificate)

A commented Semaphore pipeline configuration is located at
[.semaphore/semaphore.yml](.semaphore/semaphore.yml)

![iOS CI pipeline on Semaphore](public/ci-pipeline.png)

## License

Copyright (c) 2019 Rendered Text

Distributed under the MIT License. See the file LICENSE.
