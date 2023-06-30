# Bypass de Wifi com WIPS ativo

Sabemos como é essencial capturar o handshake durante o Pentest em Redes Wireless, geralmente usamos ataques de Deauth para fazermos o cliente se reconectar na rede alvo,e quando o fizer capturamos o handshake, mas os roteadores modernos têm WIPS (Wireless Intrusion Prevention System) que verificam a quantidade de Deauth enviados antes de desautenticar o cliente e quando percebe o excesso de requisições Deauth bloqueia o MAC Adress do atacante.

O script tem como objetivo burlar o WIPS ( Wireless Intrusion Prevention System ) e capturar o handshake da conexão. Podendo ser muito útil para ataques de Fake Ap, Evil Twin, etc...

Use-o apenas em ambientes permitidos e/ou ambientes controlados!

Keep Learning
Keep Hacking

<a href="https://www.buymeacoffee.com/elizeudasdores"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=elizeudasdores&button_colour=FF5F5F&font_colour=ffffff&font_family=Cookie&outline_colour=000000&coffee_colour=FFDD00" /></a>
