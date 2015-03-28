using Tk

w = Toplevel("Messaging", 300, 200)
tcl("pack", "propagate", w, false)
f = Frame(w)
pack(f, expand=true, fill="both")
txt = Text(f)
txt2 = Text(f)
grid(txt2, 1, 1, sticky="ew")
grid(txt, 2, 1, sticky="ew")

function callback(path)
  stuff = get_value(txt2)
  set_value(txt2, "")
  set_value(txt, stuff)
  println(stuff)
end

bind(txt, "<Return>", callback)