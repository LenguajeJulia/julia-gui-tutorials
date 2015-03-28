using Tk
using Images

fname = Pkg.dir("Tk", "examples", "logo.gif")
img = Image(fname)

w = Toplevel("Image")
f = Frame(w)
pack(f, expand=true, fill="both")
l = Label(f, img)
pack(l)