# Module 4 Notes

#### As Modern devices got notch,when we write widgets in flutter, normally that widget will be appeared at that notch.
### If we want to pass that problem, we use SafeArea widget.
----


### When we use Myanmar font in Flutter, we should use lineheight to 1.7
----
### The BoxFit enum in Flutter includes the following values:

1. BoxFit.fill: Scales and centers the image to fill the available space.
2. BoxFit.contain: Scales the image to be fully contained within the available space, preserving its aspect ratio.
3. BoxFit.cover: Scales the image to cover the entire available space, cropping if necessary.
4. BoxFit.fitWidth: Scales the image to fit the width of the available space, maintaining its aspect ratio.
5. BoxFit.fitHeight: Scales the image to fit the height of the available space, maintaining its aspect ratio.
6. BoxFit.none: Does not scale the image. The image is centered within the available space.

--- 

### We only use TextButton when the button is not prominent.
---
### When we use ScaffoldMessenger's of method ,it will find a context.
### If we wanna display a snackbar, we should use the context of respecitve object's context.
---

### In Stateful Widget 
* we only decalre state variables in State child class.
* When a stateful widget is called, the initState is called before the widget is rendered. InitState function is called only one time.
* When set state is called , the widget is refreshed.
    * Build method is recalled , the init state is not called.


### When column widget is placed inside another col widget,
* the main axis size of child col widget is min. 
    1. mainAxisSize: MainAxisSize.min(defalut), 
    2. mainAxisSize: MainAxisSize.max(will not apply),
* when we want to set main axis size maximum, we must wrap that column widget with Container and then wrap that container with Expanded.


## Stack
* Rendered bottom-to-top
* Position.filled will dominate the whole stack area

## Wrap 
* default horizonatal
* main axis spacing
    * spacing: 20,
* cross axis spacing
    * runSpacing: 30,


## Chip
In Flutter, a Chip is a material design widget that represents a compact element in a complex interface. It is typically used to display attributes, tags, or choices in a way that is visually appealing and takes up minimal space.

The Chip widget is part of the Material Components library in Flutter, and it provides a variety of customization options. Some of the key features of the Chip widget include:

Label and Avatar: A Chip consists of a label (text) and an optional avatar (icon or image).

Tap Interaction: Chips can be made interactive, responding to taps or clicks. You can handle the interaction by providing an onPressed callback.

Visual States: Chips have different visual states, such as selected and disabled, which you can customize.

---

# Scrollable Views

## List View Widget
1. LV widget renders all the data in the children property
    * we should only use LV widget for finite data(not more than 50 units)


## Grid View Widget
1. Fully customizable GV widget is GridView.custom


## Button Navigation Bar

1. Icons in btn nav bar should be in either all Icons or all Image.