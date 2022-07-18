contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 stor2;
uint256 tokensIssuedTotal;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return tokensIssuedTotal
}

function isAdmin(address arg1) {
    return bool(stor2[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokensIssuedTotal() {
    return tokensIssuedTotal
}

function owner() {
    return owner
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

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferProposed(owner, arg1);
    newOwner = arg1
}

function addAdmin(address arg1) {
    require msg.sender == owner
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit AdminChange(1, arg1);
}

function removeAdmin(address arg1) {
    require msg.sender == owner
    require bool(stor2[address(arg1)]) == 1
    stor2[address(arg1)] = 0
    emit AdminChange(0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
