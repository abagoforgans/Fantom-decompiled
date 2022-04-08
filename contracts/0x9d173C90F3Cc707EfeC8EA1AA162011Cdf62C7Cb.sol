contract main {




// =====================  Runtime code  =====================


const getCurrentTime = block.timestamp


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct _owners;
uint256 sub_c2ddbfb5;
uint256 creationTime;
uint256 stor9;
uint256 sub_c9365723;

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
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _owners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < _owners.length
    return _owners[arg1].field_0
}

function sub_c2ddbfb5(?) payable {
    return sub_c2ddbfb5
}

function sub_c9365723(?) payable {
    return sub_c9365723
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function getCreationTime() payable {
    return creationTime
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    idx = 0
    while idx < _owners.length:
        mem[0] = 6
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x2e45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function getOwners() payable {
    if not _owners.length:
        mem[(32 * _owners.length) + 128] = 32
        mem[(32 * _owners.length) + 160] = _owners.length
        mem[(32 * _owners.length) + 192 len floor32(_owners.length)] = mem[128 len floor32(_owners.length)]
        return memory
          from (32 * _owners.length) + 128
           len (96 * _owners.length) + 64
    mem[128] = address(_owners.field_0)
    idx = 128
    s = 0
    while (32 * _owners.length) + 96 > idx:
        mem[idx + 32] = _owners[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * _owners.length) + 192 len floor32(_owners.length)] = mem[128 len floor32(_owners.length)]
    return Array(len=_owners.length, data=mem[128 len floor32(_owners.length)], mem[(32 * _owners.length) + floor32(_owners.length) + 192 len (32 * _owners.length) - floor32(_owners.length)]), 
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if arg1 == this.address:
        if arg2 > sub_c9365723:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_c9365723 -= arg2
    return 1
}

function setOwners(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < _owners.length:
        mem[0] = 6
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        _owners.length = arg1.length
        if not arg1.length:
            idx = sha3(6)
            while sha3(6) + _owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(6)
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                stor[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(6) + (Mask(251, 0, (32 * arg1.length) + 31) >> 5)
            while sha3(6) + _owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    revert with 0, 32, 34, 0x774f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273, mem[(32 * arg1.length) + 230 len 30]
}

function sub_bb58edce(?) payable {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < _owners.length:
        mem[0] = 6
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if arg2 == this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7346756e6374696f6e206f6e6c7920776f726b73206f6e206f7468657220746f6b656e73,
                        mem[200 len 28]
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x774f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                    0x2e45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_f6f05b0b(?) payable {
    if creationTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor9:
        if creationTime > sub_c2ddbfb5:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - creationTime:
            require sub_c2ddbfb5 - creationTime
            if 0 / sub_c2ddbfb5 - creationTime <= 90 * stor9 / 100:
                require 0 / sub_c2ddbfb5 - creationTime >= 0
                if 0 / sub_c2ddbfb5 - creationTime < 0 / sub_c2ddbfb5 - creationTime:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_c9365723 > 0 / sub_c2ddbfb5 - creationTime:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_c2ddbfb5 - creationTime) - sub_c9365723)
        else:
            require block.timestamp - creationTime
            if (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / block.timestamp - creationTime != 90 * stor9 / 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require sub_c2ddbfb5 - creationTime
            if (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime <= 90 * stor9 / 100:
                require (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime >= 0
                if (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime < (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_c9365723 > (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime) - sub_c9365723)
        require 90 * stor9 / 100 >= 0
        if 90 * stor9 / 100 < 90 * stor9 / 100:
            revert with 0, 'SafeMath: addition overflow'
        if sub_c9365723 > 90 * stor9 / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((90 * stor9 / 100) - sub_c9365723)
    require stor9
    if 10 * stor9 / stor9 != 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if creationTime > sub_c2ddbfb5:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - creationTime:
        require sub_c2ddbfb5 - creationTime
        if 0 / sub_c2ddbfb5 - creationTime <= 90 * stor9 / 100:
            require 0 / sub_c2ddbfb5 - creationTime >= 0
            if (0 / sub_c2ddbfb5 - creationTime) + (10 * stor9 / 100) < 0 / sub_c2ddbfb5 - creationTime:
                revert with 0, 'SafeMath: addition overflow'
            if sub_c9365723 > (0 / sub_c2ddbfb5 - creationTime) + (10 * stor9 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_c2ddbfb5 - creationTime) + (10 * stor9 / 100) - sub_c9365723)
    else:
        require block.timestamp - creationTime
        if (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / block.timestamp - creationTime != 90 * stor9 / 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require sub_c2ddbfb5 - creationTime
        if (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime <= 90 * stor9 / 100:
            require (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime >= 0
            if ((block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime) + (10 * stor9 / 100) < (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime:
                revert with 0, 'SafeMath: addition overflow'
            if sub_c9365723 > ((block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime) + (10 * stor9 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return (((block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime) + (10 * stor9 / 100) - sub_c9365723)
    require 90 * stor9 / 100 >= 0
    if (90 * stor9 / 100) + (10 * stor9 / 100) < 90 * stor9 / 100:
        revert with 0, 'SafeMath: addition overflow'
    if sub_c9365723 > (90 * stor9 / 100) + (10 * stor9 / 100):
        revert with 0, 'SafeMath: subtraction overflow'
    return ((90 * stor9 / 100) + (10 * stor9 / 100) - sub_c9365723)
}

function releaseVestedTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 6
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if creationTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor9:
            if creationTime > sub_c2ddbfb5:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - creationTime:
                require sub_c2ddbfb5 - creationTime
                if 0 / sub_c2ddbfb5 - creationTime <= 90 * stor9 / 100:
                    require 0 / sub_c2ddbfb5 - creationTime >= 0
                    if 0 / sub_c2ddbfb5 - creationTime < 0 / sub_c2ddbfb5 - creationTime:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_c9365723 > 0 / sub_c2ddbfb5 - creationTime:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (0 / sub_c2ddbfb5 - creationTime) - sub_c9365723 < arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x655468617420616d6f756e74206f6620746f6b656e732063616e6e6f742062652077697468647261776e207965742e2e,
                                    mem[212 len 16]
                else:
                    require 90 * stor9 / 100 >= 0
                    if 90 * stor9 / 100 < 90 * stor9 / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_c9365723 > 90 * stor9 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (90 * stor9 / 100) - sub_c9365723 < arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x655468617420616d6f756e74206f6620746f6b656e732063616e6e6f742062652077697468647261776e207965742e2e,
                                    mem[212 len 16]
            else:
                require block.timestamp - creationTime
                if (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / block.timestamp - creationTime != 90 * stor9 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require sub_c2ddbfb5 - creationTime
                if (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime <= 90 * stor9 / 100:
                    require (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime >= 0
                    if (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime < (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_c9365723 > (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ((block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime) - sub_c9365723 < arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x655468617420616d6f756e74206f6620746f6b656e732063616e6e6f742062652077697468647261776e207965742e2e,
                                    mem[212 len 16]
                else:
                    require 90 * stor9 / 100 >= 0
                    if 90 * stor9 / 100 < 90 * stor9 / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_c9365723 > 90 * stor9 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (90 * stor9 / 100) - sub_c9365723 < arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x655468617420616d6f756e74206f6620746f6b656e732063616e6e6f742062652077697468647261776e207965742e2e,
                                    mem[212 len 16]
        else:
            require stor9
            if 10 * stor9 / stor9 != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if creationTime > sub_c2ddbfb5:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - creationTime:
                require sub_c2ddbfb5 - creationTime
                if 0 / sub_c2ddbfb5 - creationTime <= 90 * stor9 / 100:
                    require 0 / sub_c2ddbfb5 - creationTime >= 0
                    if (0 / sub_c2ddbfb5 - creationTime) + (10 * stor9 / 100) < 0 / sub_c2ddbfb5 - creationTime:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_c9365723 > (0 / sub_c2ddbfb5 - creationTime) + (10 * stor9 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (0 / sub_c2ddbfb5 - creationTime) + (10 * stor9 / 100) - sub_c9365723 < arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x655468617420616d6f756e74206f6620746f6b656e732063616e6e6f742062652077697468647261776e207965742e2e,
                                    mem[212 len 16]
                else:
                    require 90 * stor9 / 100 >= 0
                    if (90 * stor9 / 100) + (10 * stor9 / 100) < 90 * stor9 / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_c9365723 > (90 * stor9 / 100) + (10 * stor9 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (90 * stor9 / 100) + (10 * stor9 / 100) - sub_c9365723 < arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x655468617420616d6f756e74206f6620746f6b656e732063616e6e6f742062652077697468647261776e207965742e2e,
                                    mem[212 len 16]
            else:
                require block.timestamp - creationTime
                if (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / block.timestamp - creationTime != 90 * stor9 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require sub_c2ddbfb5 - creationTime
                if (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime <= 90 * stor9 / 100:
                    require (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime >= 0
                    if ((block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime) + (10 * stor9 / 100) < (block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_c9365723 > ((block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime) + (10 * stor9 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ((block.timestamp * 90 * stor9 / 100) - (creationTime * 90 * stor9 / 100) / sub_c2ddbfb5 - creationTime) + (10 * stor9 / 100) - sub_c9365723 < arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x655468617420616d6f756e74206f6620746f6b656e732063616e6e6f742062652077697468647261776e207965742e2e,
                                    mem[212 len 16]
                else:
                    require 90 * stor9 / 100 >= 0
                    if (90 * stor9 / 100) + (10 * stor9 / 100) < 90 * stor9 / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_c9365723 > (90 * stor9 / 100) + (10 * stor9 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (90 * stor9 / 100) + (10 * stor9 / 100) - sub_c9365723 < arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x655468617420616d6f756e74206f6620746f6b656e732063616e6e6f742062652077697468647261776e207965742e2e,
                                    mem[212 len 16]
        if sub_c9365723 + arg1 < sub_c9365723:
            revert with 0, 'SafeMath: addition overflow'
        sub_c9365723 += arg1
        require ext_code.size(this.address)
        call this.address.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(this.address)
        call this.address.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x774f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}



}
