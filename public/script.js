let balance = 1000;

function updateBalance() {
    document.getElementById('balance').innerText = balance;
}

function deposit() {
    balance += 100;
    updateBalance();
}

function withdraw() {
    if (balance >= 100) balance -= 100;
    updateBalance();
}
