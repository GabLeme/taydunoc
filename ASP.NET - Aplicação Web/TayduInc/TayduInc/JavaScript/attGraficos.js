var chamadas = [
    { pagina: '/Ajax/RamPercentual.aspx', destino: graficoRam },
    { pagina: '/Ajax/CpuPercentual.aspx', destino: graficoCPU },
    { pagina: '/Ajax/HdUsoPercentual.aspx', destino: graficoUsoHD },
    { pagina: '/Ajax/HdTempoPercentual.aspx', destino: graficoAtividadeHD }
]



setInterval(() => {
    var j = 1;
    var k = 1;
    var i = 1;

    for (c = 0; c < chamadas.length; c++) {
        var xhttp = new XMLHttpRequest();
        xhttp.destino = chamadas[c].destino;

        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var numero = parseInt(this.responseText)
                if (!isNaN(numero)) {
                    if (numero >= 70 && this.destino == graficoRam) {
                        if (i == 1) {
                            enviaNotificacao1();
                            document.getElementById('alertaRam').innerHTML = '{' + i + '}';
                            i = 0;
                        }
                    }
                    else if (numero >= 55 && this.destino == graficoCPU) {
                        if (j == 1) {
                            enviaNotificacao2();
                            document.getElementById('alertaCpu').innerHTML = '{' + j + '}';
                            j = 0;
                        }
                    }
                    else if (numero >= 80 && this.destino == graficoUsoHD) {
                        if (k == 1) {
                            enviaNotificacao3();
                            document.getElementById('alertaUsoHd').innerHTML = '{' + k + '}';
                            k = 0;
                        }
                    }
                    this.destino.refresh(numero);
                }

            }
        };

        xhttp.open("GET", chamadas[c].pagina, true);
        xhttp.send();
    }
}, 1000);