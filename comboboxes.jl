using Tk

fruits = ["Apple", "Navel orange", "Banana", "Pear"]

w = Toplevel("Combo boxes", 300, 200)
tcl("pack", "propagate", w, false)
f = Frame(w)
pack(f, expand=true, fill="both")

grid(Label(f, "Again, What is your favorite fruit?"), 1, 1)
cb = Combobox(f, fruits)
grid(cb, 2, 1, sticky="ew")

b = Button(f, "Ok")
grid(b, 3, 1)

function callback(path)
  fruit_choice = get_value(cb)
  msg = (fruit_choice == nothing) ? "What, no choice?" :
                                    "Good choice! $(fruit_choice)" * "s are delicious!"
  Messagebox(w, msg)
end

bind(b, "command", callback)