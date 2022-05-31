contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct _owners;

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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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

function sub_0f69a15d(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 6
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply + 10^18 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += 10^18
        if balanceOf[address(arg1)] + 10^18 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += 10^18
        emit Transfer(10^18, 0, arg1);
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x654f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
    revert with 0, 32, 34, 0x654f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273, mem[(32 * arg1.length) + 230 len 30]
}

function sub_88ac55b9(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    idx = 0
    while idx < _owners.length:
        mem[0] = 6
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        mem[128 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg2 <= balanceOf[address(arg1)]:
            balanceOf[address(arg1)] -= arg2
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            emit Transfer(arg2, arg1, 0);
        mem[192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[196] = 32
        idx = 0
        while idx < 34:
            mem[idx + 260] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[292] = mem[322 len 2]
        revert with 0, 32, 34, mem[260 len 64]
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x654f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
