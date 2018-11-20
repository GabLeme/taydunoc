var chamada = [
    { paginas: '/Ajax/UsoRam/ramMin.aspx', destinos: 'minRAM' },
    { paginas: '/Ajax/UsoRam/ramMax.aspx', destinos: 'maxRAM' },
    { paginas: '/Ajax/UsoRam/ramMedia.aspx', destinos: 'mediaRAM' },
    { paginas: '/Ajax/UsoRam/ramMediana.aspx', destinos: 'medianaRam' },
    { paginas: '/Ajax/UsoRam/ramPrimeiroQuartil.aspx', destinos: '1Qram' },
    { paginas: '/Ajax/UsoRam/ramTerceiroQuartil.aspx', destinos: '3Qram' },
    { paginas: '/Ajax/UsoHd/hdMin.aspx', destinos: 'minHD' },
    { paginas: '/Ajax/UsoHd/hdMax.aspx', destinos: 'maxHD' },
    { paginas: '/Ajax/UsoHd/hdMediana.aspx', destinos: 'medianaHD' },
    { paginas: '/Ajax/UsoHd/hdMedia.aspx', destinos: 'mediaHD' },
    { paginas: '/Ajax/UsoHd/hdPrimeiroQuartil.aspx', destinos: '1QHD' },
    { paginas: '/Ajax/UsoHd/hdTerceiroQuartil.aspx', destinos: '3QHD' },
    { paginas: '/Ajax/UsoCpu/cpuMin.aspx', destinos: 'minCPU' },
    { paginas: '/Ajax/UsoCpu/cpuMax.aspx', destinos: 'maxCPU' },
    { paginas: '/Ajax/UsoCpu/cpuMediana.aspx', destinos: 'medianaCPU' },
    { paginas: '/Ajax/UsoCpu/cpuMedia.aspx', destinos: 'mediaCPU' },
    { paginas: '/Ajax/UsoCpu/cpuPrimeiroQuartil.aspx', destinos: '1QCPU' },
    { paginas: '/Ajax/UsoCpu/cpuTerceiroQuartil.aspx', destinos: '3QCPU' },
    { paginas: '/Ajax/UsoAtividadeHd/atividadeHdMin.aspx', destinos: 'minHDA' },
    { paginas: '/Ajax/UsoAtividadeHd/atividadeHdMax.aspx', destinos: 'maxHDA' },
    { paginas: '/Ajax/UsoAtividadeHd/atividadeHdMediana.aspx', destinos: 'medianaHDA' },
    { paginas: '/Ajax/UsoAtividadeHd/atividadeHdMedia.aspx', destinos: 'mediaHDA' },
    { paginas: '/Ajax/UsoAtividadeHd/atividadeHdPrimeiroQuartil.aspx', destinos: '1QHDA' },
    { paginas: '/Ajax/UsoAtividadeHd/atividadeHdTerceiroQuartil.aspx', destinos: '3QHDA' },

]

setTimeout(() => {

    for (i = 0; i < chamada.length; i++) {
        var xhttp1 = new XMLHttpRequest();
        xhttp1.destinos = chamada[i].destinos;

        xhttp1.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var numero = parseInt(this.responseText)
                if (!isNaN(numero)) {
                    document.getElementById(this.destinos).innerHTML = numero + "%";
                }
            }
        };

        xhttp1.open("GET", chamada[i].paginas, true);
        xhttp1.send();
    }
}, 1000);