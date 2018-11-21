var graficoRam = new JustGage({
    id: "ramPercentual",
    min: 0,
    max: 100,
    donut: true,
    hideMinMax: true,
    title: 'Percentual Ram',
    titleFontColor: "green",
    titleFontFamily: "Roboto Mono",
    titlePosition: "below",
    symbol: '%',
    pointer: true,
    levelColors: [
        "#00FF00",
        "#FFFF00",
        "#FF0000"
    ],
    gaugeWidthScale: 0.4,
    counter: true,
    hideInnerShadow: true,
    refreshAnimationTime: 1000,
    refreshAnimationType: "bounce",
});

var graficoAtividadeHD = new JustGage({
    id: "atividadeHdPercentual",
    min: 0,
    max: 100,
    donut: true,
    hideMinMax: true,
    title: "Tempo de atividade do HD",
    titleFontColor: "green",
    titleFontFamily: "Roboto Mono",
    titlePosition: "below",
    symbol: '%',
    pointer: true,
    levelColors: [
        "#00FF00",
        "#FFFF00",
        "#FF0000"
    ],
    gaugeWidthScale: 0.4,
    counter: true,
    hideInnerShadow: true,
    refreshAnimationTime: 1000,
    refreshAnimationType: "bounce",
});

var graficoCPU = new JustGage({
    id: "cpuPercentual",
    min: 0,
    max: 100,
    donut: true,
    hideMinMax: true,
    title: "Percentual Cpu",
    titleFontColor: "green",
    titleFontFamily: "Roboto Mono",
    titlePosition: "below",
    symbol: '%',
    pointer: true,
    levelColors: [
        "#00FF00",
        "#FFFF00",
        "#FF0000"
    ],
    gaugeWidthScale: 0.4,
    counter: true,
    hideInnerShadow: true,
    refreshAnimationTime: 1000,
    refreshAnimationType: "bounce",
});

var graficoUsoHD = new JustGage({
    id: "hdPercentual",
    min: 0,
    max: 100,
    donut: true,
    hideMinMax: true,
    title: "Uso HD ",
    titleFontColor: "green",
    titleFontFamily: "Roboto Mono",
    titlePosition: "below",
    symbol: '%',
    pointer: true,
    levelColors: [
        "#00FF00",
        "#FFFF00",
        "#FF0000"
    ],
    gaugeWidthScale: 0.4,
    counter: true,
    hideInnerShadow: true,
    refreshAnimationTime: 1000,
    refreshAnimationType: "bounce",
});