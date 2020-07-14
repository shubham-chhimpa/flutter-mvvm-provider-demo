# Flutter MVVM + Provider Demo

[![GitHub license](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
![Github Followers](https://img.shields.io/github/followers/shubham-chhimpa?label=Follow&style=social)
![GitHub stars](https://img.shields.io/github/stars/shubham-chhimpa/flutter-mvvm-provider-demo?style=social)
![GitHub forks](https://img.shields.io/github/forks/shubham-chhimpa/flutter-mvvm-provider-demo?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/shubham-chhimpa/flutter-mvvm-provider-demo?style=social)
![Twitter Follow](https://img.shields.io/twitter/follow/shubham_chhimpa?label=Follow&style=social)

A Flutter MVVM provider demo application.

# Demo

<img src="https://github.com/shubham-chhimpa/flutter-mvvm-provider-demo/blob/master/project/demo.gif" height="500">

# About

It simply loads Posts data from API and render the posts on the screen.

- MVVM pattern is used.
- Provider approach is used for state management.

Dummy API is used in this app. [hosted here](https://jsonplaceholder.typicode.com/).

# Architecture

![Flutter MVVM + Provider Architecture](https://miro.medium.com/max/1250/1*t-iY-K6Hk796RrrRfCg66Q.png)

Read the detailed architecture explanation in this  [article](https://medium.com/@chhimpa.shubh04/flutter-mvvm-providers-9a0fd66b7607)

# File Structure

```
lib
  ├── components                # Components
  │   ├── post            # post related Views and View Model
  |
  ├── models                    # Model classes
  |
  ├── notifiers                 # Notifier Classes             
  |
  ├── screens                   # screens
  |
  ├── services                  # services
  |
  └── main.dart              
```

# Contribute
If you want to contribute to this library, you're always welcome! See [Contributing Guidelines.](https://github.com/shubham-chhimpa/flutter-mvvm-provider-demo/blob/master/CONTRIBUTING.md)

# Contact
If you need any help, you can connect with me.

Visit : [shubham-chhimpa.github.io](http://shubham-chhimpa.github.io)

# License
```MIT License

Copyright (c) 2020 Shubham Chhimpa

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
