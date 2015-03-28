using Tk

fruits = ["Apple", "Navel orange", "Banana", "Pear"]
w = Toplevel("Favorite fruit?")
tcl("pack", "propagate", w, false)
f = Frame(w)
pack(f, expand=true, fill="both")

f1 = Frame(f)   ## need internal frame for use with scrollbars
lb = Treeview(f1, fruits)
configure(lb, selectmode="extended") ## lb[:selected] = "extended"  ## also works
scrollbars_add(f1, lb)
pack(f1, expand=true, fill="both")

b = Button(f, "Ok")
pack(b)

bind(b, "command") do path ## do style
  fruit_choice = get_value(lb)
  msg = (fruit_choice == nothing) ? "What, no choice?" : "Good choice! $(fruit_choice[1])" * "s are delicious!"
  Messagebox(w, msg)
end