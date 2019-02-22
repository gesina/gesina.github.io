# Homepage Sources

These are the sources for, respectively to generate, my homepage at
[gesina.github.io](http://gesina.github.io).

## Files
- `*.md`: Content
- `*.html`: Generated pages from `*.md` files
- `*.scss`: Sass file for CSS generation
- `*.css`: Generated CSS from `*.scss` file
- `me.jpg`: An image for the homepage
- `README.md`: You are just reading it ;-)


## Compilation
Quick way to generate `*.html` and `*.css` files using 
[GNU Make](https://www.gnu.org/software/make/):
```bash
make
```
Respectively for clean build
```
make clean && make
```

### HTML
The `*.html` files are generated from the corresponding `*.md` file
using [`multimarkdown`](https://fletcherpenney.net/multimarkdown/).
Quick way (ignore `nav.html` output):
```bash
for i in $(ls *.md); do multimarkdown -o ${i%.md}.html $i; done
```

### CSS
The `*.css` file is generated from the `*.scss` file using
[`sassc`](https://github.com/sass/sassc).
```bash
sassc index.scss index.css
```
