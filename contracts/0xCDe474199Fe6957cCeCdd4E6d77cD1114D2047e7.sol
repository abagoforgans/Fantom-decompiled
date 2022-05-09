contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint256 lockLimit;
mapping of uint256 balance;
mapping of uint256 tokenSupply;
uint256 totalSupply;
uint8 canLock;

function totalSupply() payable {
    return totalSupply
}

function canLock() payable {
    return bool(canLock)
}

function owner() payable {
    return owner
}

function balance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return balance[address(arg1)][address(arg2)]
}

function lockLimit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lockLimit[arg1]
}

function isAllowedToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function tokenSupply(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenSupply[arg1]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setCanLock(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    canLock = uint8(arg1)
    emit SetCanLock(owner, arg1);
}

function setLockLimit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    lockLimit[address(arg1)] = arg2
    emit SetLockLimit(owner, arg1, arg2);
}

function setIsAllowedToken(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor1[address(arg1)] = uint8(arg2)
    emit SetIsAllowedToken(owner, arg1, arg2);
}

function unlock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > balance[address(arg1)][msg.sender]:
        revert with 0, 'LP4'
    if balance[address(arg1)][msg.sender] < arg2:
        revert with 0, 17
    balance[address(arg1)][msg.sender] -= arg2
    if tokenSupply[address(arg1)] < arg2:
        revert with 0, 17
    tokenSupply[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Unlock(arg2, arg1, msg.sender, msg.sender);
}

function lock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not canLock:
        revert with 0, 'LP1'
    if not stor1[address(arg1)]:
        revert with 0, 'LP2'
    if arg2 < lockLimit[address(arg1)]:
        revert with 0, 'LP3'
    if balance[address(arg1)][msg.sender] > !arg2:
        revert with 0, 17
    balance[address(arg1)][msg.sender] += arg2
    if tokenSupply[address(arg1)] > !arg2:
        revert with 0, 17
    tokenSupply[address(arg1)] += arg2
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Lock(arg2, arg1, msg.sender, msg.sender);
}



}
