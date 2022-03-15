contract main {




// =====================  Runtime code  =====================


const name = 'Workchain 1'

const decimals = 18

const symbol = 'WORK'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 initiated; offset 160
address owner;
array of address holderByIndex;
address stor5;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getHoldersCount() {
    return holderByIndex.length
}

function owner() {
    return owner
}

function initiated() {
    return bool(initiated)
}

function getHolderByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < holderByIndex.length
    return address(holderByIndex[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function init(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if initiated:
        revert with 0, 'contract already initiated'
    stor5 = arg2
    if not arg2:
        revert with 0, 'ERC20: mint to the zero address'
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if arg1 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg1
    emit Transfer(arg1, 0, arg2);
    initiated = 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor5 != msg.sender:
        require ext_code.size(stor5)
        call stor5.checkProposal(address rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1 == bool(ext_call.return_data[0]):
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not stor5:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[stor5] < balanceOf[stor5]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor5] += arg2
            emit Transfer(arg2, msg.sender, stor5);
            require ext_code.size(stor5)
            call stor5.voteOn(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return bool(ext_call.return_data[0])
    if stor5 != arg1:
        idx = 0
        while idx < holderByIndex.length:
            mem[0] = 4
            if address(holderByIndex[idx]) != arg1:
                idx = idx + 1
                continue 
            if balanceOf[address(msg.sender)] == arg2:
                if stor5 != msg.sender:
                    idx = 0
                    while idx < holderByIndex.length:
                        mem[0] = 4
                        if address(holderByIndex[idx]) != msg.sender:
                            idx = idx + 1
                            continue 
                        if idx < holderByIndex.length - 1:
                            require holderByIndex.length - 1 < holderByIndex.length
                            require idx < holderByIndex.length
                            address(holderByIndex[idx]) = address(holderByIndex[holderByIndex.length])
                            require holderByIndex.length - 1 < holderByIndex.length
                            address(holderByIndex[holderByIndex.length]) = 0
                            holderByIndex.length--
                            if holderByIndex.length > holderByIndex.length - 1:
                                idx = holderByIndex.length + sha3(4) - 1
                                while sha3(4) + holderByIndex.length > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if idx < holderByIndex.length - 1:
                        require holderByIndex.length - 1 < holderByIndex.length
                        require idx < holderByIndex.length
                        address(holderByIndex[idx]) = address(holderByIndex[holderByIndex.length])
                        require holderByIndex.length - 1 < holderByIndex.length
                        address(holderByIndex[holderByIndex.length]) = 0
                        holderByIndex.length--
                        if holderByIndex.length > holderByIndex.length - 1:
                            idx = holderByIndex.length + sha3(4) - 1
                            while sha3(4) + holderByIndex.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        holderByIndex.length++
        address(holderByIndex[holderByIndex.length]) = arg1
    if balanceOf[address(msg.sender)] == arg2:
        if stor5 != msg.sender:
            idx = 0
            while idx < holderByIndex.length:
                mem[0] = 4
                if address(holderByIndex[idx]) != msg.sender:
                    idx = idx + 1
                    continue 
                if idx < holderByIndex.length - 1:
                    require holderByIndex.length - 1 < holderByIndex.length
                    require idx < holderByIndex.length
                    address(holderByIndex[idx]) = address(holderByIndex[holderByIndex.length])
                    require holderByIndex.length - 1 < holderByIndex.length
                    address(holderByIndex[holderByIndex.length]) = 0
                    holderByIndex.length--
                    if holderByIndex.length > holderByIndex.length - 1:
                        idx = holderByIndex.length + sha3(4) - 1
                        while sha3(4) + holderByIndex.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
                return 1
            if idx < holderByIndex.length - 1:
                require holderByIndex.length - 1 < holderByIndex.length
                require idx < holderByIndex.length
                address(holderByIndex[idx]) = address(holderByIndex[holderByIndex.length])
                require holderByIndex.length - 1 < holderByIndex.length
                address(holderByIndex[holderByIndex.length]) = 0
                holderByIndex.length--
                if holderByIndex.length > holderByIndex.length - 1:
                    idx = holderByIndex.length - 1
                    while holderByIndex.length > idx:
                        uint256(holderByIndex[idx]) = 0
                        idx = idx + 1
                        continue 
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
