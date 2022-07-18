contract main {




// =====================  Runtime code  =====================


const LOCK_SLOTS = 5


address owner;
address newOwner;
mapping of uint8 stor2;
uint256 tokensIssuedTotal;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 lockTerm;
array of uint256 lockAmnt;
mapping of uint8 stor8;

function totalSupply() {
    return tokensIssuedTotal
}

function isAdmin(address arg1) {
    return bool(stor2[arg1])
}

function lockTerm(address arg1, uint256 arg2) {
    require arg2 < 5
    return lockTerm[arg1][arg2]
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

function lockAmnt(address arg1, uint256 arg2) {
    require arg2 < 5
    return lockAmnt[arg1][arg2]
}

function mayHaveLockedTokens(address arg1) {
    return bool(stor8[arg1])
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

function isAvailableLockSlot(address arg1, uint256 arg2) {
    if not stor8[address(arg1)]:
        return 1
    if arg2 < block.timestamp:
        return 1
    idx = 0
    while idx < 5:
        if lockTerm[address(arg1)][idx] >= block.timestamp:
            require idx < 5
            if lockTerm[address(arg1)][idx] != arg2:
                idx = idx + 1
                continue 
        return 1
    return 0
}

function lockedTokens(address arg1) {
    if not stor8[address(arg1)]:
        return 0
    idx = 0
    s = 0
    while idx < 5:
        if lockTerm[address(arg1)][idx] < block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < 5
        require s + lockAmnt[address(arg1)][idx] >= s
        idx = idx + 1
        s = s + lockAmnt[address(arg1)][idx]
        continue 
    return s
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

function unlockedTokens(address arg1) {
    if not stor8[address(arg1)]:
        require 0 <= balanceOf[address(arg1)]
        return balanceOf[address(arg1)]
    idx = 0
    s = 0
    while idx < 5:
        if lockTerm[address(arg1)][idx] < block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < 5
        require s + lockAmnt[address(arg1)][idx] >= s
        idx = idx + 1
        s = s + lockAmnt[address(arg1)][idx]
        continue 
    require s <= balanceOf[address(arg1)]
    return (balanceOf[address(arg1)] - s)
}



}
