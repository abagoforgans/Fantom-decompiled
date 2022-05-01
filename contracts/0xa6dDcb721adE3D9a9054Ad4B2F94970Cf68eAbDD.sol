contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address minterAddress;
mapping of uint256 balances;

function minter() {
    return minterAddress
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function kill() {
    if minterAddress != msg.sender:
    selfdestruct(msg.sender)
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function Coin() {
    minterAddress = msg.sender
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender == minterAddress:
        balances[address(arg1)] += arg2
}

function send(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balances[address(msg.sender)] >= arg2:
        balances[address(msg.sender)] -= arg2
        balances[address(arg1)] += arg2
        emit Sent(msg.sender, address(arg1), arg2);
}



}
