using Tk

w = Toplevel()
tcl("pack", "propagate", w, false) ## or pack_stop_propagate(w)

mb = Menu(w)
fmenu = menu_add(mb, "File")
omenu = menu_add(mb, "Options")

menu_add(fmenu, "Open file...", (path) -> println("Open file dialog, ..."))
menu_add(fmenu, Separator(w))
menu_add(fmenu, "Close window", (path) -> destroy(w))

cb = Checkbutton(w, "Something visible")
set_value(cb, true)
menu_add(omenu, cb)
menu_add(omenu, Separator(w))

rb = Radio(w, ["option 1", "option 2"])
set_value(rb, "option 1")
menu_add(omenu, rb)

b = Button(w, "print selected options")
pack(b, expand=true, fill="both")

function callback(path)
  vals = map(get_value, (cb, rb))
  println(vals)
end

callback_add(b, callback)