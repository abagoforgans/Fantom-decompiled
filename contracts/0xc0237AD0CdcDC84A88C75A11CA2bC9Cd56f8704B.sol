contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint256 allowed;
uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() payable {
    return decimals
}

function allowed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balances[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe746f6b656e2062616c616e6365206973206c6f776572207468616e207468652076616c7565207265717565737465,
                    mem[211 len 17]
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if balances[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x64746f6b656e2062616c616e6365206f7220616c6c6f77616e6365206973206c6f776572207468616e20616d6f756e74207265717565737465,
                    mem[221 len 7]
    if allowed[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x64746f6b656e2062616c616e6365206f7220616c6c6f77616e6365206973206c6f776572207468616e20616d6f756e74207265717565737465,
                    mem[221 len 7]
    balances[address(arg2)] += arg3
    balances[address(arg1)] -= arg3
    if allowed[address(arg1)][address(msg.sender)] < -1:
        allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
