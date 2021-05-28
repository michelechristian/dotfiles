from lemonbar_manager import Manager, Module

class HelloWorld(Module):
    def output(self):
        return "Hello World"
        
modules = (
    HelloWorld(),
)        


command = (
    'lemonbar',
    '-g', 'x25',
    '-u', '2'
)

with Manager(command, modules) as mgr:
    mgr.loop()

