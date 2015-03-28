using Tk

w = Toplevel()
f = Frame(w)
pack(f, expand=true, fill="both")
pack(Label(f, "Int Range Slider"), side="top")
s_range = Slider(f, 1:100)
pack(s_range, side="top", expand=true, fill="both", anchor="w")
bind(s_range, "command", path -> println("The range value is $(int(get_value(s_range)))"))

pack(Label(f, "Float slider"), side="top")
s_float = Slider(f, 0.0, 1.0)
pack(s_float, side="top", expand=true, fill="both", anchor="w")
bind(s_float, "command", path -> println("The float value is $(get_value(s_float))"))