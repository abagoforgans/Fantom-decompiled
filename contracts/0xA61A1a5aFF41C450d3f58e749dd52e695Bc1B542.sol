contract main {




// =====================  Runtime code  =====================


const sub_18b1ca40(?) = 0xad7b2f26d78c98398ccccf067c34c3a5075cb042

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const BURN = 57005

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor7;
address operatorAddress;
uint256 sub_7ef16253;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function name() payable {
    return name[0 len name.length].field_0
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function operator() payable {
    return operatorAddress
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
}

function sub_6e9fcd87(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function sub_7ef16253(?) payable {
    return sub_7ef16253
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)] > 0:
        return checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function sub_15a50a08(?) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x646f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    stor7[address(arg1)] = uint8(arg2)
}

function sub_7f0336a3(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x646f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    emit 0x3effc24c: sub_7ef16253, arg1, msg.sender
    sub_7ef16253 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x646f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x735343415245473a3a7472616e736665724f70657261746f723a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[222 len 6]
    emit OperatorTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor7[address(msg.sender)]:
        require ext_code.size(0xad7b2f26d78c98398ccccf067c34c3a5075cb042)
        staticcall 0xad7b2f26d78c98398ccccf067c34c3a5075cb042.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_7ef16253:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x735343415245473a3a7472616e736665723a206e6f7420656e6f7567682053434152,
                        mem[198 len 30]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x655343415245473a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[205 len 23]
    if not numCheckpoints[address(arg1)]:
        return 0
    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 <= arg2:
        return checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
    if checkpoints[address(arg1)][0].field_0 > arg2:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = 0
        mem[_33 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 11)
        _36 = mem[64]
        mem[64] = mem[64] + 64
        mem[_36] = checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_36 + 32] = checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 == arg2:
            return checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 >= arg2:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor7[address(arg1)]:
        require ext_code.size(0xad7b2f26d78c98398ccccf067c34c3a5075cb042)
        staticcall 0xad7b2f26d78c98398ccccf067c34c3a5075cb042.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_7ef16253:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x735343415245473a3a7472616e736665723a206e6f7420656e6f7567682053434152,
                        mem[198 len 30]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x4542455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor10[address(arg1)]] > 0:
                    if checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[182 len 10],
                                    Mask(176, -256, mem[182 len 10]) << 256
                    if numCheckpoints[stor10[address(arg1)]] <= 0:
                        checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_256 = checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256 + arg2
                        numCheckpoints[stor10[address(arg1)]] = uint32(numCheckpoints[stor10[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_256 = checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256 + arg2
                            numCheckpoints[stor10[address(arg1)]] = uint32(numCheckpoints[stor10[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256, checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[182 len 10],
                                    Mask(176, -256, mem[182 len 10]) << 256
                    if numCheckpoints[stor10[address(arg1)]] <= 0:
                        checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor10[address(arg1)]] = uint32(numCheckpoints[stor10[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor10[address(arg1)]] = uint32(numCheckpoints[stor10[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[182 len 10],
                                        Mask(176, -256, mem[182 len 10]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[182 len 10],
                                        Mask(176, -256, mem[182 len 10]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor10[address(msg.sender)]] > 0:
                    if balanceOf[address(msg.sender)] > checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[182 len 10],
                                    Mask(176, -256, mem[182 len 10]) << 256
                    if numCheckpoints[stor10[address(msg.sender)]] <= 0:
                        checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_256 = checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor10[address(msg.sender)]] = uint32(numCheckpoints[stor10[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[342 len 10],
                                                Mask(176, -256, mem[342 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[342 len 10],
                                                Mask(176, -256, mem[342 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[278 len 10],
                                                    Mask(176, -256, mem[278 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[278 len 10],
                                                    Mask(176, -256, mem[278 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_256 = checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor10[address(msg.sender)]] = uint32(numCheckpoints[stor10[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[342 len 10],
                                                    Mask(176, -256, mem[342 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[342 len 10],
                                                    Mask(176, -256, mem[342 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[182 len 10],
                                    Mask(176, -256, mem[182 len 10]) << 256
                    if numCheckpoints[stor10[address(msg.sender)]] <= 0:
                        checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor10[address(msg.sender)]] = uint32(numCheckpoints[stor10[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[342 len 10],
                                                Mask(176, -256, mem[342 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[342 len 10],
                                                Mask(176, -256, mem[342 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[278 len 10],
                                                    Mask(176, -256, mem[278 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[278 len 10],
                                                    Mask(176, -256, mem[278 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor10[address(msg.sender)]] = uint32(numCheckpoints[stor10[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[342 len 10],
                                                    Mask(176, -256, mem[342 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[342 len 10],
                                                    Mask(176, -256, mem[342 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[128 len name.length]), chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    40,
                    0x735343415245473a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    address(arg6),
                    mem[ceil32(name.length) + 706 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 
                    32,
                    36,
                    0x725343415245473a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                    Mask(192, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    40,
                    0x6f5343415245473a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    address(arg6),
                    mem[ceil32(name.length) + 706 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        Mask(80, 0, arg5),
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        Mask(80, 0, arg5),
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor10[address(signer)]] > 0:
                    if balanceOf[address(signer)] > checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    Mask(80, 0, arg5),
                                    0
                    if numCheckpoints[stor10[address(signer)]] <= 0:
                        checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_256 = checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor10[address(signer)]] = uint32(numCheckpoints[stor10[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256, checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 824 len 10],
                                                Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 824 len 10],
                                                Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256, checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 760 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 760 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 760 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 760 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_256 = checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor10[address(signer)]] = uint32(numCheckpoints[stor10[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256, checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 824 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 824 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    Mask(80, 0, arg5),
                                    0
                    if numCheckpoints[stor10[address(signer)]] <= 0:
                        checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor10[address(signer)]] = uint32(numCheckpoints[stor10[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 824 len 10],
                                                Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 824 len 10],
                                                Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 760 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 760 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 760 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 760 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor10[address(signer)]] = uint32(numCheckpoints[stor10[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 824 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735343415245473a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 824 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}



}
