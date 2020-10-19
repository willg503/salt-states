include:
  - remnux.python3-packages.androguard
  - remnux.python3-packages.docker-compose
  - remnux.python3-packages.ioc-parser
  - remnux.python3-packages.ipwhois
  - remnux.python3-packages.jsbeautifier
  - remnux.python3-packages.mitmproxy
  - remnux.python3-packages.olefile
  - remnux.python3-packages.peframe
  - remnux.python3-packages.pyelftools
  - remnux.python3-packages.r2pipe
  - remnux.python3-packages.virustotal-api
  - remnux.python3-packages.xortool
  - remnux.python3-packages.xxxswf
  - remnux.python3-packages.thug
  - remnux.python3-packages.xlmmacrodeobfuscator
  - remnux.python3-packages.unicode
  - remnux.python3-packages.volatility3
  - remnux.python3-packages.fakemail
  - remnux.python3-packages.pyperclip
  - remnux.python3-packages.dc3-mwcp
  - remnux.python3-packages.yara-python3
  - remnux.python3-packages.ratdecoders
  - remnux.python3-packages.pylzma
  - remnux.python3-packages.time-decode
  - remnux.python3-packages.pcodedmp
  - remnux.python3-packages.droidlysis
  - remnux.python3-packages.malwoverview
  - remnux.python3-packages.chepy
  - remnux.python3-packages.frida
  - remnux.python3-packages.stringsifter
  - remnux.python3-packages.oletools
  - remnux.python3-packages.pycryptodomex
  - remnux.python3-packages.unfurl
  - remnux.python3-packages.speakeasy
  - remnux.python3-packages.msoffcrypto-tool
  - remnux.python3-packages.qiling
  - remnux.python3-packages.pe-tree
  - remnux.python3-packages.wheel
  - remnux.python3-packages.setuptools

remnux-python3-packages:
  test.nop:
    - require:
      - sls: remnux.python3-packages.androguard
      - sls: remnux.python3-packages.docker-compose
      - sls: remnux.python3-packages.ioc-parser
      - sls: remnux.python3-packages.ipwhois
      - sls: remnux.python3-packages.jsbeautifier
      - sls: remnux.python3-packages.mitmproxy
      - sls: remnux.python3-packages.olefile
      - sls: remnux.python3-packages.peframe
      - sls: remnux.python3-packages.pyelftools
      - sls: remnux.python3-packages.r2pipe
      - sls: remnux.python3-packages.virustotal-api
      - sls: remnux.python3-packages.xortool
      - sls: remnux.python3-packages.xxxswf
      - sls: remnux.python3-packages.thug
      - sls: remnux.python3-packages.xlmmacrodeobfuscator
      - sls: remnux.python3-packages.unicode
      - sls: remnux.python3-packages.volatility3
      - sls: remnux.python3-packages.fakemail
      - sls: remnux.python3-packages.pyperclip
      - sls: remnux.python3-packages.dc3-mwcp
      - sls: remnux.python3-packages.yara-python3
      - sls: remnux.python3-packages.ratdecoders
      - sls: remnux.python3-packages.pylzma
      - sls: remnux.python3-packages.time-decode
      - sls: remnux.python3-packages.pcodedmp
      - sls: remnux.python3-packages.droidlysis
      - sls: remnux.python3-packages.malwoverview
      - sls: remnux.python3-packages.chepy
      - sls: remnux.python3-packages.frida
      - sls: remnux.python3-packages.stringsifter
      - sls: remnux.python3-packages.oletools
      - sls: remnux.python3-packages.pycryptodomex
      - sls: remnux.python3-packages.unfurl
      - sls: remnux.python3-packages.speakeasy
      - sls: remnux.python3-packages.msoffcrypto-tool
      - sls: remnux.python3-packages.qiling
      - sls: remnux.python3-packages.pe-tree
      - sls: remnux.python3-packages.wheel
      - sls: remnux.python3-packages.setuptools
