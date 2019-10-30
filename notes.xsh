#!/usr/bin/env xonsh

import xml.etree.ElementTree as ET

class XmlBlock:

    __xonsh_block__ = str

    def __enter__(self):
        root = ET.fromstring(self.macro_block)
        return root

    def __exit__(self, *exc):
        pass


with! XmlBlock() as tree:
    <note>
      <to>Dracula</to>
      <from>Wolf Man</from>
      <heading>Luv U</heading>
      <body>*Were* u at?</body>
    </note>

tree.tag
list(tree)


######

import subprocess


class JsBlock:

    def __enter__(self):
        pass

    def __exit__(self, *exc):
        subprocess.run(["node", "-e", self.macro_block])


with! JsBlock():
    console.log("what new torment is this?");


pass
####

class AstBlock:

    __xonsh_block__ = "ast"

    def __enter__(self):
        return self.macro_block

    def __exit__(self, *exc):
        pass


with! AstBlock() as a:
    import sys

    print("Spooky spooky fun times at " + sys.executable)


a
