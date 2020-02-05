<p align="center">
    <img width="417" alt="Screen Shot 2019-08-28 at 22 25 25" src="https://user-images.githubusercontent.com/32227073/73881901-f6dc6580-483f-11ea-810d-2518bf8ecf50.png">
</p>

![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
[![Build Status](https://travis-ci.org/ViniciusDeep/CBuilder.svg?branch=master)](https://travis-ci.org/ViniciusDeep/CBuilder)


## Welcome to the ComposeKit!

#### ComposeKit is a tool to compose your views.

This is way to create a text

```swift
 Text("Text").position(
 top: 16, ComponentX.top
 leading: 8, ComponentY.trailing
 trailing: 8, ComponentX.leading
 bottom: 16, Component.bottom)
```
This is way to create a image

```swift
DrawImage(image: ).position(
top: 16, ComponentX.top
leading: 8, ComponentY.trailing
trailing: 8, ComponentX.leading
bottom: 16, Component.bottom)
```
This is way to create a list

```swift
        List(withElements: Contatos) { contato, component
            AddComponents [
                DrawImage(contato.foto)
                .position(top: 16, ComponentX.top
                leading: 8, ComponentY.trailing
                trailing: 8, ComponentX.leading
                bottom: 16, Component.bottom)),

                Text("Fon").position(
                top: 16, ComponentX.top
                leading: 8, ComponentY.trailing
                trailing: 8, ComponentX.leading
                bottom: 16, Component.bottom
            ]
        } 
```

This is way to create a button

```swift

Button { _ in
            style = .system
            title = "Button"
        }.addOnTapListener { action in
            
        }.position(top: 16, ComponentX.top
                        leading: 8, ComponentY.trailing
                        trailing: 8, ComponentX.leading
                        bottom: 16, Component.bottom)


```

TODO-LIST

- [ ] Create Text Component
- [ ] Create Image Component
- [ ] Create List Component
- [ ] Create Button Component
- [ ] Create Text Field Component(With keyboard automatically handle)
