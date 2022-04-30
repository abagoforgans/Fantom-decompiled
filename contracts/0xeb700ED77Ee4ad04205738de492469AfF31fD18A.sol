contract main {




// =====================  Runtime code  =====================


address minterAddress;
mapping of uint256 balances;

function minter() payable {
    return minterAddress
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function kill() payable {
    if minterAddress != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function Coin() payable {
    minterAddress = msg.sender
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == minterAddress:
        balances[address(arg1)] += arg2
}

function send(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balances[address(msg.sender)] >= arg2:
        balances[address(msg.sender)] -= arg2
        balances[address(arg1)] += arg2
        emit Sent(msg.sender, address(arg1), arg2);
}



}
