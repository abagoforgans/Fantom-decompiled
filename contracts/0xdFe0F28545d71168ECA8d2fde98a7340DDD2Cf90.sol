contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0, 'Cannot use zero'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 != this.address
    if not arg1:
        revert with 0, 'Cannot use zero address'
    if arg2 <= 0:
        revert with 0, 'Cannot use zero value'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'Balance not enough'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'Overflow'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 'Cannot use zero address'
    if arg3 <= 0:
        revert with 0, 'Cannot use zero value'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'Balance not enough'
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        revert with 0, 'Cannot overflow'
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'Cannot over allowance'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function multiTransferSingleValue(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if arg1.length > 200:
        revert with 0, 'Too many recipients'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _39 = mem[(32 * idx) + 128]
        require mem[(32 * idx) + 140 len 20] != this.address
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Cannot use zero address'
        if 10^18 * arg2 <= 0:
            revert with 0, 'Cannot use zero value'
        if balanceOf[address(msg.sender)] < 10^18 * arg2:
            revert with 0, 'Balance not enough'
        if balanceOf[address(mem[(32 * idx) + 128])] + (10^18 * arg2) < balanceOf[address(mem[(32 * idx) + 128])]:
            revert with 0, 'Overflow'
        _49 = sha3(address(mem[(32 * idx) + 128]), 5)
        if 10^18 * arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] += -1 * 10^18 * arg2
        if balanceOf[address(mem[(32 * idx) + 128])] + (10^18 * arg2) < balanceOf[address(mem[(32 * idx) + 128])]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(mem[(32 * idx) + 128])] += 10^18 * arg2
        mem[(32 * arg1.length) + 128] = 10^18 * arg2
        emit Transfer((10^18 * arg2), msg.sender, address(_39));
        mem[0] = msg.sender
        mem[32] = 5
        require balanceOf[address(msg.sender)] + balanceOf[address(_39)] == balanceOf[address(msg.sender)] + stor[_49]
        idx = idx + 1
        continue 
    return 1
}

function multiTransfer(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if arg1.length > 200:
        revert with 0, 'Too many recipients'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        _44 = mem[(32 * idx) + 128]
        require mem[(32 * idx) + 140 len 20] != this.address
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Cannot use zero address'
        if 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
            revert with 0, 'Cannot use zero value'
        if balanceOf[address(msg.sender)] < 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]:
            revert with 0, 'Balance not enough'
        if balanceOf[address(mem[(32 * idx) + 128])] + (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]) < balanceOf[address(mem[(32 * idx) + 128])]:
            revert with 0, 'Overflow'
        _54 = sha3(address(mem[(32 * idx) + 128]), 5)
        if 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] += -1 * 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
        if balanceOf[address(mem[(32 * idx) + 128])] + (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]) < balanceOf[address(mem[(32 * idx) + 128])]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(mem[(32 * idx) + 128])] += 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_44));
        mem[0] = msg.sender
        mem[32] = 5
        require balanceOf[address(msg.sender)] + balanceOf[address(_44)] == balanceOf[address(msg.sender)] + stor[_54]
        idx = idx + 1
        continue 
    return 1
}



}
