using Winston
using Tk

ex = quote
  x = linspace(0, n * pi, 100)
  c = cos(x)
  s = sin(x)
  p = FramedPlot()
  setattr(p, "title", title)
  if
    fillbetween add(p, fillbetween(x, c, x, s))
  end
  add(p, Curve(x, c, "color", color))
  add(p, Curve(x, s, "color", "blue"))
  file(p, "example1.png")
  p     ## return a winston object
end

obj = manipulate(ex,
                 slider("n", "[0, n*pi]", 1:10)
                 ,entry("title", "Title", "title")
                 ,checkbox("fillbetween", "Fill between?", true)
                 ,picker("color", "Cos color", ["red", "green", "yellow"])
                 ,button("update")
                 )