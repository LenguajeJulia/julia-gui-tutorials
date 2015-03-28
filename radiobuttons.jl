using Tk

w = Toplevel()
f = Frame(w)
pack(f, expand=true, fill="both")

l = Label(f, "Which do you prefer?")
rb = Radio(f, ["apples", "oranges"])
b = Button(f, "ok")
map(u -> pack(u, anchor="w"), (l, rb, b))

function callback(path)
  msg = (get_value(rb) == "apples") ? "Good choice! An apple a day keeps the doctor away!" :
                                      "Good choice! Oranges are full of Vitamin C!"
  Messagebox(w, msg)
end

bind(b, "command", callback)