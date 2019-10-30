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