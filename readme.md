**Svgger** is a small bit of code which converts the img tagged SVG file to inline SVG(HTML5 SVG tag). It also remembers attributes which you gave to the img tag and you can overwrite SVG attributes in the same time.

Here's a code example. First you create basic img tag with src to SVG image and give it a id and class

`<img id="im-id" class="and-im-class" x="200px" src="img/svgged-img.svg">`

When Svgger do its magic you get this

`<svg xmlns="http://www.w3.org/2000/svg" xlink="http://www.w3.org/1999/xlink" version="1.1" id="im-id" x="200px" y="0px" width="60px" height="60px" class="and-im-class"></svg>`

It imports id and class properties and overwrites x attribute. Simple.

## Benefits of the inline SVG

SVG object is namespaced and it is difficult to give it styles with CSS. Of course you can do it but you need to write code inside the SVG, inline or external CSS file. It's crazy!

SVG have child tags like g, circle and rect. Would be nice if you could style those with CSS e.g per page. With inline SVG you can.

Code example. If you style the first code bit above with this

`#im-id circle { fill: orange; }`

It won't work because the SVG namespacing. If you let Svgger do it's job(or copy SVG code manually) the styling works. Imagine how you now could change SVG circle fill color by page, by section etc.

`body#page-1 #im-id circle { fill: orange; }`

`body#page-2 #im-id circle { fill: orange; }`

`body#page-2 section #im-id circle { fill: orange; }`

## Usage

It's simple. Just include jQuery and Svgger before the closing `</head>` and you're ready to go. Check out the package for example.

Have fun!