using Tk

w = Toplevel("Example")                                    ## A titled top level window
f = Frame(w, padding = [3,3,2,2], relief="groove")         ## A Frame with some options set
pack(f, expand = true, fill = "both")                      ## using pack to manage the layout of f
#
b = Button(f, "Click for a message")                       ## Button constructor has convenience interface
grid(b, 1, 1)                                              ## use grid to pack in b. 1,1 specifies location
#
callback(path) = Messagebox(w, title="A message", message="Hello World") ## A callback to open a message
bind(b, "command", callback)                            ## bind callback to 'command' option
bind(b, "<Return>", callback)                           ## press return key when button has focus