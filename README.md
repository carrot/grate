Grate [![npm](https://badge.fury.io/js/grate.png)](http://badge.fury.io/js/grate) [![tests](https://travis-ci.org/carrot/grate.png?branch=master)](https://travis-ci.org/carrot/grate)
-----

A modern grid system for stylus.

> **Note:** This project is in development, and versioning is a little different. [Read this](http://markup.im/#q4_cRZ1Q) for more details.

### Why Should You Care?

You are on a mission. A mission to make responsive sites on a grid, using stylus. You have searched long and hard and found many things in your journey. First, you have found boatloads of grid systems for sass. But these are not useful. You also found the [semantic grid system](https://github.com/twigkit/semantic.gs/), which looked great, only to realize it's unmaintained. You searched github long and hard only to find a smattering of half-baked and mostly unmaintained solutions. Well, here you can find a solid grid framework written for stylus and watched/maintained closely.

Grate was forked from [jeet](http://jeetframework.com) version 4, and isolates only the grid system, making it available as a stylus plugin.

### Installation

`npm install grate`

### Usage

Grate is a [stylus](http://learnboost.github.io/stylus/) plugin, and can be integrated in any way that stylus plugins normally are. If you are curious how to use stylus plugins, feel free to [check out this guide](https://gist.github.com/jenius/8263065).

#### Config Variables

###### `grate-gutter`
Width of the gutters. Default is `3`.

###### `grate-layout-direction`
Changes text alignment. Can be `RTL` or `LTR`, with `LTR` being the default value.

###### `grate-parent-first`
Honestly, not sure what this is. We should probably remove it.

#### Mixins

###### `center(max-width = 1410px, pad = 0)`
Shortcut to quickly center containers. Takes a width and padding which is applied to the left and right sides.

###### `column(ratios = 1, offset = 0, cycle = 0, uncycle = 0)`
The primary mixin of the grid system, also aliased as `col`. Specify a ratio (like 1/3, 1/4, etc) and the column will span that amount of space, with gutters. To offset the column, pass a ratio as the second paramter (ex. `col(1/4, 1/4)` or `col(1/4, offset: 1/4)`). Pass a negative value to offset to the left. _Cycle_ allows you to multiply your column -- for example if you are creating a gallery that's 4 items across, you can use `col(1/4, cycle: 4)` to do this. _Uncycle_ reverses the effects of a cycle. For example if you want to change your gallery to be 2 items rather than 4 inside a media query, you could use `col(1/2, uncycle: 4, cycle: 2)`.

###### `span(ratio = 1, offset = 0)`
Same as column, except without any gutters, if you would like the elements to be touching directly.

###### `shift(ratios = 0, col_or_span = col)`
Moves a column to the left or right by the ratio passed. A negative value will move left. This could be used inside as media query to move the position of a column or span on the page.

###### `unshift()`
Quickly undoes any shifts that were applied to an element.

###### `edit()`
A helper for development that gives every element a light gray background. This makes it easy to visualize the grid's structure.

###### `align(direction = both)`
Horizontal and/or vertical alignment within a container. Accepts `both` (alias `b`), `horizontal` (alias `h`), or `vertical` (alias `v`).

###### `stack(pad = 0, align = center)`
Stacks items vertically. Removes floats and sets width to 100%. Optionally add padding to the left and right or change text alignment (`center`/`c`, `left`/`l`, or `right`/`r`).

###### `unstack()`
Removes the styles from a `stack` call. If `stack` was called on a div that had a `column` on it and you `unstack` it, it will not revert back to the `column` styles, so you'll need to call that again manually if that's your intention.

---

If you need vendor prefixing and/or media query helpers, please check out [autoprefixer-stylus](https://github.com/jenius/autoprefixer-stylus) and [rupture](http://jenius.github.io/rupture), both of which are fully compatible with grate.

### License & Contributing

- Details on the license [can be found here](LICENSE.md)
- Details on running tests and contributing [can be found here](contributing.md)
