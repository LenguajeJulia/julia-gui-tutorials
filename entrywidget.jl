using Tk

w = Toplevel()
f = Frame(w)
pack(f, expand=true, fill="both")

e = Entry(f)
b = Button(f, "Ok")

formlayout(e, "First name:")
formlayout(b, nothing)
focus(e)       ## put keyboard focus on widget

function callback(path)
  val = get_value(e)
  msg = "You have a nice name $val"
  Messagebox(w, msg)
end

bind(b, "command", callback)
bind(b, "<Return>", callback)
bind(e, "<Return>", callback) ## bind to a certain key press event
