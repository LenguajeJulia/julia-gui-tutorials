using Tk

w = Toplevel()
f = Frame(w)
pack(f, expand=true, fill="both")
cb = Checkbutton(f, "I like Julia")
pack(cb)

function callback(path)
  value = get_value(cb)
  msg = value ? "Glad to hear that" : "Sorry to hear that"
  Messagebox(w, title="Thanks for the feedback", message=msg)
end

bind(cb, "command", callback)