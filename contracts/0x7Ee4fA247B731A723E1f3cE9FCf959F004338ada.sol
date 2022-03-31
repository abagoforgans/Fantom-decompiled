contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
uint256 burnRatio;
uint256 feeRatio;
uint256 stor10;
uint256 currentAPR;
mapping of uint8 stor14;
mapping of uint256 stor15;
mapping of uint256 stor16;
mapping of uint256 pendingSwapsOf;
mapping of uint8 stor19;
uint256 totalStaked;
mapping of uint256 balances;
mapping of uint256 stakedBalanceOf;
address lastSenderAddress;
uint256 storD2AC;

function name() payable {
    return name[0 len name.length]
}

function getLastSender() payable {
    return lastSenderAddress
}

function stakedBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakedBalanceOf[this.address][address(arg1)]
}

function getCurrentAPR() payable {
    return currentAPR
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function getBurnRatio() payable {
    return burnRatio
}

function chainSwappers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function decimals() payable {
    return decimals
}

function pendingSwapsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return pendingSwapsOf[address(arg1)]
}

function _totalSupply() payable {
    return _totalSupply
}

function getFeeRatio() payable {
    return feeRatio
}

function allowed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return stakedBalanceOf[arg1][arg2]
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function isSwapper(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function newOwner() payable {
    return newOwner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return stakedBalanceOf[address(arg1)][address(arg2)]
}

function minterAccesses(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function totalFeeRatio() payable {
    return (feeRatio + burnRatio)
}

function totalSupply() payable {
    return (_totalSupply - storD2AC)
}

function changeAPR(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    currentAPR = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function allowBypassFees(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor19[address(arg1)] = 1
}

function disallowBypassFees(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor19[address(arg1)] = 0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if arg1:
        return balances[address(arg1)]
    else:
        return 0
}

function acceptOwnership() payable {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function allowMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor2[address(arg1)] = 1
    emit AllowedMinter(arg1);
}

function revokeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor2[address(arg1)] = 0
    emit RevokedMinter(arg1);
}

function getUserAPR(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor14[address(arg1)]:
        return currentAPR
    return stor16[address(arg1)]
}

function allowSwapper(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor3[address(arg1)] = 1
    emit AllowedSwapper(arg1);
}

function revokeSwapper(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor3[address(arg1)] = 0
    emit RevokedSwapper(arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    stakedBalanceOf[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeFeeRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 + burnRatio <= 100
    feeRatio = arg1
    stor10 = -arg1 + burnRatio + 100
}

function changeBurnRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 + feeRatio <= 100
    burnRatio = arg1
    stor10 = -feeRatio + arg1 + 100
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    balances[address(arg1)] -= arg2
    _totalSupply -= arg2
    emit 0x54ddf252: arg2, this.address, arg1
}

function cancelSwaps() payable {
    require pendingSwapsOf[msg.sender]
    balances[msg.sender] += pendingSwapsOf[msg.sender]
    balances[this.address] -= pendingSwapsOf[msg.sender]
    emit 0x54ddf252: pendingSwapsOf[msg.sender], this.address, msg.sender
    pendingSwapsOf[msg.sender] = 0
}

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return ((block.timestamp * stor16[address(arg1)] * stakedBalanceOf[this.address][address(arg1)]) - (stor15[address(arg1)] * stor16[address(arg1)] * stakedBalanceOf[this.address][address(arg1)]) / 876000 * 24 * 3600)
}

function mintTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor2[msg.sender]:
        if not stor3[msg.sender]:
            require msg.sender == owner
    require arg2 > 0
    balances[address(arg1)] += arg2
    _totalSupply += arg2
    emit 0x54ddf252: arg2, this.address, arg1
}

function lockForSwap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= balances[msg.sender]
    require arg1 > 0
    balances[msg.sender] -= arg1
    pendingSwapsOf[msg.sender] += arg1
    balances[this.address] += arg1
    emit 0x54ddf252: arg1, msg.sender, this.address
    emit lockedForSwap(msg.sender, msg.sender, arg1);
}

function swapConfirmed(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor3[msg.sender]:
        require msg.sender == owner
    require arg2 <= pendingSwapsOf[address(arg1)]
    require arg2 > 0
    balances[this.address] -= arg2
    _totalSupply += arg2
    pendingSwapsOf[address(arg1)] -= arg2
    emit swapWasConfirmed(arg1, arg2);
}

function cancelSwapsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[msg.sender]:
        require msg.sender == owner
    require pendingSwapsOf[address(arg1)]
    balances[address(arg1)] += pendingSwapsOf[address(arg1)]
    balances[this.address] -= pendingSwapsOf[msg.sender]
    emit 0x54ddf252: pendingSwapsOf[msg.sender], this.address, msg.sender
    pendingSwapsOf[msg.sender] = 0
}

function transferAnyERC20Token(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function lockForSwapTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balances[msg.sender]:
        revert with 0, 'Unsufficient balance'
    if arg2 <= 0:
        revert with 0, 'Amount should be positive'
    balances[msg.sender] -= arg2
    pendingSwapsOf[address(arg1)] += arg2
    balances[this.address] += arg2
    emit 0x54ddf252: arg2, msg.sender, this.address
    emit lockedForSwap(msg.sender, arg1, arg2);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    stakedBalanceOf[msg.sender][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address rg1, address rg2, uint256 rg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function claimStakingRewards() payable {
    if not stor14[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                    mem[212 len 16]
    balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
    _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
    emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
    stor15[address(msg.sender)] = block.timestamp
}

function withdrawStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor14[msg.sender]
    if arg1 > stakedBalanceOf[this.address][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x64596f7520646f65736e2774206861766520656e6f756768742e2e2e207472792061206c6f77657220616d6f756e7420,
                    mem[212 len 16]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x21486d6d6d2c2073746f70207468696e6b696e67206e656761746976652e2e2e20616e6420555345204120504f53495449564520414d4f554e,
                    mem[221 len 7]
    if not stor14[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                    mem[212 len 16]
    balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
    _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
    emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
    stor15[address(msg.sender)] = block.timestamp
    stakedBalanceOf[this.address][msg.sender] -= arg1
    balances[msg.sender] += arg1
    balances[this.address] -= arg1
    stor16[msg.sender] = currentAPR
    emit 0x54ddf252: arg1, this.address, msg.sender
    totalStaked -= arg1
}

function stakeIn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor14[msg.sender]:
        stor15[msg.sender] = block.timestamp
        stor14[msg.sender] = 1
    else:
        if not stor14[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                        mem[212 len 16]
        balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
        _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
        emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
        stor15[address(msg.sender)] = block.timestamp
    if arg1 > balances[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x2157686f6f70732c20796f7520646f65736e2774206861766520656e6f75676820746f6b656e7320,
                    mem[204 len 24]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x21416d6f756e74207368616c6c20626520706f7369746976652e2e2e2077686f2077616e7473206e6567617469766520696e7465726573747320,
                    mem[222 len 6]
    stor16[msg.sender] = currentAPR
    balances[msg.sender] -= arg1
    stakedBalanceOf[this.address][msg.sender] += arg1
    balances[this.address] += arg1
    totalStaked += arg1
    emit 0x54ddf252: arg1, msg.sender, this.address
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor14[msg.sender]:
        if not stor14[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                        mem[212 len 16]
        balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
        _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
        emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
        stor15[address(msg.sender)] = block.timestamp
    if arg2 > balances[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x21556e73756666696369656e742062616c616e63652e2e2e20627579206d6f726520,
                    mem[198 len 30]
    if arg1 != this.address:
        if msg.sender != this.address:
            balances[address(msg.sender)] -= arg2
            if stor19[address(msg.sender)]:
                balances[arg1] += arg2
                emit 0x54ddf252: arg2, msg.sender, arg1
            else:
                if stor19[address(arg1)]:
                    balances[arg1] += arg2
                    emit 0x54ddf252: arg2, msg.sender, arg1
                else:
                    balances[arg1] += arg2 * stor10 / 100
                    balances[stor27] += arg2 * feeRatio / 100
                    _totalSupply -= arg2 * burnRatio / 100
                    emit 0x54ddf252: (arg2 * stor10 / 100), msg.sender, arg1
                    emit 0x54ddf252: (arg2 * feeRatio / 100), msg.sender, lastSenderAddress
                    emit 0x54ddf252: (arg2 * burnRatio / 100), msg.sender, this.address
                    lastSenderAddress = msg.sender
        else:
            require stor14[msg.sender]
            if arg2 > stakedBalanceOf[this.address][msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x64596f7520646f65736e2774206861766520656e6f756768742e2e2e207472792061206c6f77657220616d6f756e7420,
                            mem[212 len 16]
            if arg2 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            57,
                            0x21486d6d6d2c2073746f70207468696e6b696e67206e656761746976652e2e2e20616e6420555345204120504f53495449564520414d4f554e,
                            mem[221 len 7]
            if not stor14[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                            mem[212 len 16]
            balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
            _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
            emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
            stor15[address(msg.sender)] = block.timestamp
            stakedBalanceOf[this.address][msg.sender] -= arg2
            balances[msg.sender] += arg2
            balances[this.address] -= arg2
            stor16[msg.sender] = currentAPR
            emit 0x54ddf252: arg2, this.address, msg.sender
            totalStaked -= arg2
    else:
        if arg2 > 0:
            if not stor14[msg.sender]:
                stor15[msg.sender] = block.timestamp
                stor14[msg.sender] = 1
            else:
                if not stor14[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                                mem[212 len 16]
                balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
                stor15[address(msg.sender)] = block.timestamp
            if arg2 > balances[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x2157686f6f70732c20796f7520646f65736e2774206861766520656e6f75676820746f6b656e7320,
                            mem[204 len 24]
            if arg2 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x21416d6f756e74207368616c6c20626520706f7369746976652e2e2e2077686f2077616e7473206e6567617469766520696e7465726573747320,
                            mem[222 len 6]
            stor16[msg.sender] = currentAPR
            balances[msg.sender] -= arg2
            stakedBalanceOf[this.address][msg.sender] += arg2
            balances[this.address] += arg2
            totalStaked += arg2
            emit 0x54ddf252: arg2, msg.sender, this.address
        else:
            if msg.sender != this.address:
                balances[address(msg.sender)] -= arg2
                if stor19[address(msg.sender)]:
                    balances[arg1] += arg2
                    emit 0x54ddf252: arg2, msg.sender, arg1
                else:
                    if stor19[address(arg1)]:
                        balances[arg1] += arg2
                        emit 0x54ddf252: arg2, msg.sender, arg1
                    else:
                        balances[arg1] += arg2 * stor10 / 100
                        balances[stor27] += arg2 * feeRatio / 100
                        _totalSupply -= arg2 * burnRatio / 100
                        emit 0x54ddf252: (arg2 * stor10 / 100), msg.sender, arg1
                        emit 0x54ddf252: (arg2 * feeRatio / 100), msg.sender, lastSenderAddress
                        emit 0x54ddf252: (arg2 * burnRatio / 100), msg.sender, this.address
                        lastSenderAddress = msg.sender
            else:
                require stor14[msg.sender]
                if arg2 > stakedBalanceOf[this.address][msg.sender]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x64596f7520646f65736e2774206861766520656e6f756768742e2e2e207472792061206c6f77657220616d6f756e7420,
                                mem[212 len 16]
                if arg2 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                57,
                                0x21486d6d6d2c2073746f70207468696e6b696e67206e656761746976652e2e2e20616e6420555345204120504f53495449564520414d4f554e,
                                mem[221 len 7]
                if not stor14[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                                mem[212 len 16]
                balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
                stor15[address(msg.sender)] = block.timestamp
                stakedBalanceOf[this.address][msg.sender] -= arg2
                balances[msg.sender] += arg2
                balances[this.address] -= arg2
                stor16[msg.sender] = currentAPR
                emit 0x54ddf252: arg2, this.address, msg.sender
                totalStaked -= arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if msg.sender == arg1:
        if stor14[msg.sender]:
            if not stor14[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                            mem[212 len 16]
            balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
            _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
            emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
            stor15[address(msg.sender)] = block.timestamp
        if arg3 > balances[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x21556e73756666696369656e742062616c616e63652e2e2e20627579206d6f726520,
                        mem[198 len 30]
        if arg2 != this.address:
            if msg.sender != this.address:
                balances[address(msg.sender)] -= arg3
                if stor19[address(msg.sender)]:
                    balances[arg2] += arg3
                    emit 0x54ddf252: arg3, msg.sender, arg2
                else:
                    if stor19[address(arg2)]:
                        balances[arg2] += arg3
                        emit 0x54ddf252: arg3, msg.sender, arg2
                    else:
                        balances[arg2] += arg3 * stor10 / 100
                        balances[stor27] += arg3 * feeRatio / 100
                        _totalSupply -= arg3 * burnRatio / 100
                        emit 0x54ddf252: (arg3 * stor10 / 100), msg.sender, arg2
                        emit 0x54ddf252: (arg3 * feeRatio / 100), msg.sender, lastSenderAddress
                        emit 0x54ddf252: (arg3 * burnRatio / 100), msg.sender, this.address
                        lastSenderAddress = msg.sender
            else:
                require stor14[msg.sender]
                if arg3 > stakedBalanceOf[this.address][msg.sender]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x64596f7520646f65736e2774206861766520656e6f756768742e2e2e207472792061206c6f77657220616d6f756e7420,
                                mem[212 len 16]
                if arg3 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                57,
                                0x21486d6d6d2c2073746f70207468696e6b696e67206e656761746976652e2e2e20616e6420555345204120504f53495449564520414d4f554e,
                                mem[221 len 7]
                if not stor14[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                                mem[212 len 16]
                balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
                stor15[address(msg.sender)] = block.timestamp
                stakedBalanceOf[this.address][msg.sender] -= arg3
                balances[msg.sender] += arg3
                balances[this.address] -= arg3
                stor16[msg.sender] = currentAPR
                emit 0x54ddf252: arg3, this.address, msg.sender
                totalStaked -= arg3
        else:
            if arg3 > 0:
                if not stor14[msg.sender]:
                    stor15[msg.sender] = block.timestamp
                    stor14[msg.sender] = 1
                else:
                    if not stor14[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                                    mem[212 len 16]
                    balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                    _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                    emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
                    stor15[address(msg.sender)] = block.timestamp
                if arg3 > balances[msg.sender]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x2157686f6f70732c20796f7520646f65736e2774206861766520656e6f75676820746f6b656e7320,
                                mem[204 len 24]
                if arg3 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                58,
                                0x21416d6f756e74207368616c6c20626520706f7369746976652e2e2e2077686f2077616e7473206e6567617469766520696e7465726573747320,
                                mem[222 len 6]
                stor16[msg.sender] = currentAPR
                balances[msg.sender] -= arg3
                stakedBalanceOf[this.address][msg.sender] += arg3
                balances[this.address] += arg3
                totalStaked += arg3
                emit 0x54ddf252: arg3, msg.sender, this.address
            else:
                if msg.sender != this.address:
                    balances[address(msg.sender)] -= arg3
                    if stor19[address(msg.sender)]:
                        balances[arg2] += arg3
                        emit 0x54ddf252: arg3, msg.sender, arg2
                    else:
                        if stor19[address(arg2)]:
                            balances[arg2] += arg3
                            emit 0x54ddf252: arg3, msg.sender, arg2
                        else:
                            balances[arg2] += arg3 * stor10 / 100
                            balances[stor27] += arg3 * feeRatio / 100
                            _totalSupply -= arg3 * burnRatio / 100
                            emit 0x54ddf252: (arg3 * stor10 / 100), msg.sender, arg2
                            emit 0x54ddf252: (arg3 * feeRatio / 100), msg.sender, lastSenderAddress
                            emit 0x54ddf252: (arg3 * burnRatio / 100), msg.sender, this.address
                            lastSenderAddress = msg.sender
                else:
                    require stor14[msg.sender]
                    if arg3 > stakedBalanceOf[this.address][msg.sender]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x64596f7520646f65736e2774206861766520656e6f756768742e2e2e207472792061206c6f77657220616d6f756e7420,
                                    mem[212 len 16]
                    if arg3 <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    57,
                                    0x21486d6d6d2c2073746f70207468696e6b696e67206e656761746976652e2e2e20616e6420555345204120504f53495449564520414d4f554e,
                                    mem[221 len 7]
                    if not stor14[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                                    mem[212 len 16]
                    balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                    _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                    emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
                    stor15[address(msg.sender)] = block.timestamp
                    stakedBalanceOf[this.address][msg.sender] -= arg3
                    balances[msg.sender] += arg3
                    balances[this.address] -= arg3
                    stor16[msg.sender] = currentAPR
                    emit 0x54ddf252: arg3, this.address, msg.sender
                    totalStaked -= arg3
    else:
        if arg3 > stakedBalanceOf[address(arg1)][msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        50,
                        0xfe596f75206172656e277420616c6c6f77656420746f207370656e64207468697320616d6f756e742e2e2e20746f6f206261,
                        mem[214 len 14]
        if arg1 != this.address:
            stakedBalanceOf[address(arg1)][msg.sender] -= arg3
        if stor14[msg.sender]:
            if not stor14[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                            mem[212 len 16]
            balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
            _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
            emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
            stor15[address(msg.sender)] = block.timestamp
        if arg3 > balances[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x21556e73756666696369656e742062616c616e63652e2e2e20627579206d6f726520,
                        mem[198 len 30]
        if arg2 != this.address:
            if arg1 != this.address:
                balances[address(arg1)] -= arg3
                if stor19[address(arg1)]:
                    balances[arg2] += arg3
                    emit 0x54ddf252: arg3, arg1, arg2
                else:
                    if stor19[address(arg2)]:
                        balances[arg2] += arg3
                        emit 0x54ddf252: arg3, arg1, arg2
                    else:
                        balances[arg2] += arg3 * stor10 / 100
                        balances[stor27] += arg3 * feeRatio / 100
                        _totalSupply -= arg3 * burnRatio / 100
                        emit 0x54ddf252: (arg3 * stor10 / 100), arg1, arg2
                        emit 0x54ddf252: (arg3 * feeRatio / 100), arg1, lastSenderAddress
                        emit 0x54ddf252: (arg3 * burnRatio / 100), arg1, this.address
                        lastSenderAddress = arg1
            else:
                require stor14[msg.sender]
                if arg3 > stakedBalanceOf[this.address][msg.sender]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x64596f7520646f65736e2774206861766520656e6f756768742e2e2e207472792061206c6f77657220616d6f756e7420,
                                mem[212 len 16]
                if arg3 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                57,
                                0x21486d6d6d2c2073746f70207468696e6b696e67206e656761746976652e2e2e20616e6420555345204120504f53495449564520414d4f554e,
                                mem[221 len 7]
                if not stor14[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                                mem[212 len 16]
                balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
                stor15[address(msg.sender)] = block.timestamp
                stakedBalanceOf[this.address][msg.sender] -= arg3
                balances[msg.sender] += arg3
                balances[this.address] -= arg3
                stor16[msg.sender] = currentAPR
                emit 0x54ddf252: arg3, this.address, msg.sender
                totalStaked -= arg3
        else:
            if arg3 > 0:
                if not stor14[msg.sender]:
                    stor15[msg.sender] = block.timestamp
                    stor14[msg.sender] = 1
                else:
                    if not stor14[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                                    mem[212 len 16]
                    balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                    _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                    emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
                    stor15[address(msg.sender)] = block.timestamp
                if arg3 > balances[msg.sender]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x2157686f6f70732c20796f7520646f65736e2774206861766520656e6f75676820746f6b656e7320,
                                mem[204 len 24]
                if arg3 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                58,
                                0x21416d6f756e74207368616c6c20626520706f7369746976652e2e2e2077686f2077616e7473206e6567617469766520696e7465726573747320,
                                mem[222 len 6]
                stor16[msg.sender] = currentAPR
                balances[msg.sender] -= arg3
                stakedBalanceOf[this.address][msg.sender] += arg3
                balances[this.address] += arg3
                totalStaked += arg3
                emit 0x54ddf252: arg3, msg.sender, this.address
            else:
                if arg1 != this.address:
                    balances[address(arg1)] -= arg3
                    if stor19[address(arg1)]:
                        balances[arg2] += arg3
                        emit 0x54ddf252: arg3, arg1, arg2
                    else:
                        if stor19[address(arg2)]:
                            balances[arg2] += arg3
                            emit 0x54ddf252: arg3, arg1, arg2
                        else:
                            balances[arg2] += arg3 * stor10 / 100
                            balances[stor27] += arg3 * feeRatio / 100
                            _totalSupply -= arg3 * burnRatio / 100
                            emit 0x54ddf252: (arg3 * stor10 / 100), arg1, arg2
                            emit 0x54ddf252: (arg3 * feeRatio / 100), arg1, lastSenderAddress
                            emit 0x54ddf252: (arg3 * burnRatio / 100), arg1, this.address
                            lastSenderAddress = arg1
                else:
                    require stor14[msg.sender]
                    if arg3 > stakedBalanceOf[this.address][msg.sender]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x64596f7520646f65736e2774206861766520656e6f756768742e2e2e207472792061206c6f77657220616d6f756e7420,
                                    mem[212 len 16]
                    if arg3 <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    57,
                                    0x21486d6d6d2c2073746f70207468696e6b696e67206e656761746976652e2e2e20616e6420555345204120504f53495449564520414d4f554e,
                                    mem[221 len 7]
                    if not stor14[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0xef486d6d2e2e2e20656d7074792e204e6f726d616c2c20796f75207368616c6c207374616b652d696e20666972737420,
                                    mem[212 len 16]
                    balances[address(msg.sender)] += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                    _totalSupply += (block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600
                    emit 0x54ddf252: ((block.timestamp * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) - (stor15[address(msg.sender)] * stor16[address(msg.sender)] * stakedBalanceOf[this.address][address(msg.sender)]) / 876000 * 24 * 3600), this.address, msg.sender
                    stor15[address(msg.sender)] = block.timestamp
                    stakedBalanceOf[this.address][msg.sender] -= arg3
                    balances[msg.sender] += arg3
                    balances[this.address] -= arg3
                    stor16[msg.sender] = currentAPR
                    emit 0x54ddf252: arg3, this.address, msg.sender
                    totalStaked -= arg3
    return 1
}



}
