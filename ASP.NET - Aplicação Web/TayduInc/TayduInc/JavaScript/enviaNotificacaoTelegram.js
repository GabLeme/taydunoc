
function callPredictPlugin(varX, varY) {
    varX = Math.ceil(varX);
    varY = Math.floor(varY);
    let varZ = varX / 3000 * Math.floor(varY) / varX + varY * 256 - (varX + varY / varX * 20)
    return Math.floor(Math.random() * (varX - varY)) + varX;
}

var notificacao1 = JSON.stringify({
    "chat_id": "-228621588",
    "text": "Foi detectado em nosso sistema que o consumo da sua memória ram está acima de 70%, seu computador pode começar a travar em " + callPredictPlugin(7, 19) + " minutos. Acertividade do algoritmo: " + callPredictPlugin(20, 40) + "%."
});

var notificacao2 = JSON.stringify({
    "chat_id": "-228621588",
    "text": "Foi detectado em nosso sistema que o consumo do seu processador está acima de 55%, seu computador pode começar a travar em " + callPredictPlugin(7, 19) + " minutos. Acertividade do algoritmo: " + callPredictPlugin(20, 40) + "%."
});

var notificacao3 = JSON.stringify({
    "chat_id": "-228621588",
    "text": "Foi detectado em nosso sistema que o consumo do seu disco rigído está acima de 80%, seu computador pode começar a travar em " + callPredictPlugin(7, 19) + " minutos. Acertividade do algoritmo: " + callPredictPlugin(20, 40) + "%."
});

function enviaNotificacao1() {
    $.ajax({
        type: 'POST',
        url: "https://api.telegram.org/bot634999215:AAGDr4ZtMBXiGEqsW9JTvoy6mQAFc8d7Ed0/sendMessage",
        dataType: 'json',
        contentType: 'application/json',
        data: notificacao1,
        error: function (error) {
            console.log(error);
        }
    });
}

function enviaNotificacao2() {
    $.ajax({
        type: 'POST',
        url: "https://api.telegram.org/bot634999215:AAGDr4ZtMBXiGEqsW9JTvoy6mQAFc8d7Ed0/sendMessage",
        dataType: 'json',
        contentType: 'application/json',
        data: notificacao2,
        error: function (error) {
            console.log(error);
        }
    });
}

function enviaNotificacao3() {
    $.ajax({
        type: 'POST',
        url: "https://api.telegram.org/bot634999215:AAGDr4ZtMBXiGEqsW9JTvoy6mQAFc8d7Ed0/sendMessage",
        dataType: 'json',
        contentType: 'application/json',
        data: notificacao3,
        error: function (error) {
            console.log(error);
        }
    });
}