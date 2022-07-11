contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
uint256 stor6;
uint8 stor7;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function getTax() {
    return bool(stor7)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (_totalSupply - balanceOf[0])
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg2 + arg1 >= arg1
    return (arg2 + arg1)
}

function safeDiv(uint256 arg1, uint256 arg2) {
    require arg2 > 0
    require arg2
    return (arg1 / arg2)
}

function revokeOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function toggleTax() {
    require msg.sender == owner
    if stor7:
        stor7 = 0
    else:
        stor7 = 1
    return 1
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    if not stor7:
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit 0xc7ddf252: arg2, msg.sender, arg1
    else:
        if 999 <= stor6:
            stor6 = 0
            require arg2 + balanceOf[0] >= balanceOf[0]
            balanceOf[0] += arg2
            emit 0xc7ddf252: 0, msg.sender, arg1
            emit 0xc7ddf252: arg2, msg.sender, 0
        else:
            stor6++
            require arg2 - (arg2 / 10) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = arg2 - (arg2 / 10) + balanceOf[address(arg1)]
            require (arg2 / 10) + balanceOf[0] >= balanceOf[0]
            balanceOf[0] += arg2 / 10
            emit 0xc7ddf252: (arg2 - (arg2 / 10)), msg.sender, arg1
            emit 0xc7ddf252: (arg2 / 10), msg.sender, 0
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    if not stor7:
        require arg3 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg3
        require arg3 + balanceOf[arg2] >= balanceOf[arg2]
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit 0xc7ddf252: arg3, msg.sender, arg2
    else:
        if stor6 >= 999:
            if 999 <= stor6:
                require arg3 <= allowance[address(arg1)][msg.sender]
                allowance[address(arg1)][msg.sender] -= arg3
                require arg3 + balanceOf[0] >= balanceOf[0]
                balanceOf[0] += arg3
                emit 0xc7ddf252: 0, msg.sender, arg2
                emit 0xc7ddf252: arg3, msg.sender, 0
        else:
            require arg3 <= allowance[address(arg1)][msg.sender]
            allowance[address(arg1)][msg.sender] -= arg3
            require arg3 - (arg3 / 10) + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] = arg3 - (arg3 / 10) + balanceOf[address(arg2)]
            require (arg3 / 10) + balanceOf[0] >= balanceOf[0]
            balanceOf[0] += arg3 / 10
            emit 0xc7ddf252: (arg3 - (arg3 / 10)), arg1, arg2
            emit 0xc7ddf252: (arg3 / 10), msg.sender, 0
    return 1
}



}
