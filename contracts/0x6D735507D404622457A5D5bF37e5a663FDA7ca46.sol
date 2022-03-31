contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address sub_b1b0c49eAddress; offset 8
address deployerAddress;
array of struct players;
uint256 sub_0fc99376;
uint256 stor9;
uint256 stor10; offset 32
uint256 stor10;
big736 stor10;
uint256 stor11;

function name() payable {
    return name[0 len name.length]
}

function sub_0fc99376(?) payable {
    return sub_0fc99376
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

function sub_b1b0c49e(?) payable {
    return sub_b1b0c49eAddress
}

function deployer() payable {
    return deployerAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function players(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < players.length
    return players[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_557613e3(?) payable {
    return (sub_0fc99376 - stor9)
}

function sub_f045e6be(?) payable {
    require calldata.size - 4 >= 32
    if deployerAddress != msg.sender:
        require msg.sender == this.address
    stor11 = arg1
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
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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

function getPlayers() payable {
    if not players.length:
        mem[(32 * players.length) + 128] = 32
        mem[(32 * players.length) + 160] = players.length
        mem[(32 * players.length) + 192 len floor32(players.length)] = mem[128 len floor32(players.length)]
        return memory
          from (32 * players.length) + 128
           len (96 * players.length) + 64
    mem[128] = address(players.field_0)
    idx = 128
    s = 0
    while (32 * players.length) + 96 > idx:
        mem[idx + 32] = players[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * players.length) + 192 len floor32(players.length)] = mem[128 len floor32(players.length)]
    return Array(len=players.length, data=mem[128 len floor32(players.length)], mem[(32 * players.length) + floor32(players.length) + 192 len (32 * players.length) - floor32(players.length)]), 
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
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                    0x6c45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
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

function enter() payable {
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(sub_b1b0c49eAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 0, stor10.field_32)
    mem[416 len 4] = 0
    call sub_b1b0c49eAddress with:
         gas gas_remaining wei
        args Mask(736, 0, stor10.field_0), mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), uint256(stor10.field_0)
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        players.length++
        players[players.length].field_0 = msg.sender
        stor9++
        if sub_0fc99376 == stor9:
            require players.length
            mem[388] = address(players.field_0)
            idx = 388
            s = 0
            while (32 * players.length) + 388 > idx + 32:
                mem[idx + 32] = players[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require players.length
            require sha3(block.difficulty, block.timestamp, mem[388 len 32 * players.length]) % players.length < players.length
            require ext_code.size(sub_b1b0c49eAddress)
            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_b1b0c49eAddress)
            call sub_b1b0c49eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args players[sha3(block.difficulty, block.timestamp, mem[388 len 32 * players.length]) % players.length].field_0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require sha3(block.difficulty, block.timestamp, mem[388 len 32 * players.length]) % players.length < players.length
            if not players[sha3(block.difficulty, block.timestamp, mem[388 len 32 * players.length]) % players.length].field_0:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + 1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply++
            if balanceOf[stor7[sha3(block.difficulty, block.timestamp, mem[388 len 32 * stor7.length]) % stor7.length].field_0] + 1 < balanceOf[stor7[sha3(block.difficulty, block.timestamp, mem[388 len 32 * stor7.length]) % stor7.length].field_0]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor7[sha3(block.difficulty, block.timestamp, mem[388 len 32 * stor7.length]) % stor7.length].field_0]++
            emit Transfer(1, 0, players[sha3(block.difficulty, block.timestamp, mem[388 len 32 * players.length]) % players.length].field_0);
            players.length = 0
            idx = 0
            while players.length > idx:
                players[idx].field_0 = 0
                idx = idx + 1
                continue 
            stor9 = 0
            if stor11:
                sub_0fc99376 = stor11
                stor11 = 0
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        players.length++
        players[players.length].field_0 = msg.sender
        stor9++
        if sub_0fc99376 == stor9:
            require players.length
            mem[ceil32(return_data.size) + 389] = address(players.field_0)
            idx = ceil32(return_data.size) + 389
            s = 0
            while ceil32(return_data.size) + (32 * players.length) + 389 > idx + 32:
                mem[idx + 32] = players[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require players.length
            require sha3(block.difficulty, block.timestamp, mem[ceil32(return_data.size) + 389 len 32 * players.length]) % players.length < players.length
            require ext_code.size(sub_b1b0c49eAddress)
            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_b1b0c49eAddress)
            call sub_b1b0c49eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args players[sha3(block.difficulty, block.timestamp, mem[ceil32(return_data.size) + 389 len 32 * players.length]) % players.length].field_0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require sha3(block.difficulty, block.timestamp, mem[ceil32(return_data.size) + 389 len 32 * players.length]) % players.length < players.length
            if not players[sha3(block.difficulty, block.timestamp, mem[ceil32(return_data.size) + 389 len 32 * players.length]) % players.length].field_0:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + 1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply++
            if balanceOf[stor7[sha3(block.difficulty, block.timestamp, mem[ceil32(return_data.size) + 389 len 32 * stor7.length]) % stor7.length].field_0] + 1 < balanceOf[stor7[sha3(block.difficulty, block.timestamp, mem[ceil32(return_data.size) + 389 len 32 * stor7.length]) % stor7.length].field_0]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor7[sha3(block.difficulty, block.timestamp, mem[ceil32(return_data.size) + 389 len 32 * stor7.length]) % stor7.length].field_0]++
            emit Transfer(1, 0, players[sha3(block.difficulty, block.timestamp, mem[ceil32(return_data.size) + 389 len 32 * players.length]) % players.length].field_0);
            players.length = 0
            idx = 0
            while players.length > idx:
                players[idx].field_0 = 0
                idx = idx + 1
                continue 
            stor9 = 0
            if stor11:
                sub_0fc99376 = stor11
                stor11 = 0
}



}
