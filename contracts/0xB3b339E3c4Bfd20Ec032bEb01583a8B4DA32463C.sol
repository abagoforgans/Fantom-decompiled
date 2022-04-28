contract main {




// =====================  Runtime code  =====================


const decimals = 0


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint256 sub_f23f3ba5;
uint256 sub_f745adfc;
address stor8;
address sub_b1b0c49eAddress;
array of struct players;
uint256 stor11;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_b1b0c49e(?) payable {
    return sub_b1b0c49eAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f23f3ba5(?) payable {
    return sub_f23f3ba5
}

function players(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < players.length
    return players[arg1].field_0
}

function sub_f745adfc(?) payable {
    return sub_f745adfc
}

function _fallback() payable {
    revert
}

function sub_557613e3(?) payable {
    if sub_f23f3ba5 < stor11:
        revert with 0, 17
    return (sub_f23f3ba5 - stor11)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getPlayers() payable {
    mem[64] = (32 * players.length) + 128
    mem[96] = players.length
    if not players.length:
        mem[(32 * players.length) + 128] = 32
        mem[(32 * players.length) + 160] = players.length
        idx = 0
        s = (32 * players.length) + 192
        t = 128
        while idx < players.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
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
    mem[(32 * players.length) + 128] = 32
    mem[(32 * players.length) + 160] = players.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < players.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * players.length) + -mem[64] + 192
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function enter() payable {
    mem[164] = sub_f745adfc
    require ext_code.size(sub_b1b0c49eAddress)
    call sub_b1b0c49eAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sub_f745adfc
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor11 == -1:
        revert with 0, 17
    stor11++
    players.length++
    players[players.length].field_0 = msg.sender or Mask(96, 160, players[players.length].field_0)
    if stor11 >= sub_f23f3ba5:
        idx = 0
        s = 0
        t = ceil32(return_data.size) + 192
        while idx < players.length:
            mem[t] = players[s].field_0
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        if not players.length:
            revert with 0, 18
        mem[ceil32(return_data.size) + (32 * players.length) + 196] = this.address
        require ext_code.size(sub_b1b0c49eAddress)
        staticcall sub_b1b0c49eAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + (32 * players.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] / 100:
            revert with 0, 17
        if sha3(block.number, block.timestamp, mem[ceil32(return_data.size) + 192 len 32 * players.length]) % players.length >= players.length:
            revert with 0, 50
        mem[(2 * ceil32(return_data.size)) + (32 * players.length) + 196] = players[sha3(block.number, block.timestamp, mem[ceil32(return_data.size) + 192 len 32 * players.length]) % players.length].field_0
        mem[(2 * ceil32(return_data.size)) + (32 * players.length) + 228] = ext_call.return_data[0] - (ext_call.return_data[0] / 100)
        require ext_code.size(sub_b1b0c49eAddress)
        call sub_b1b0c49eAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + (32 * players.length) + 196 len ceil32(return_data.size) + 64]
        mem[(2 * ceil32(return_data.size)) + (32 * players.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sha3(block.number, block.timestamp, mem[ceil32(return_data.size) + 192 len 32 * players.length]) % players.length >= players.length:
            revert with 0, 50
        mem[(4 * ceil32(return_data.size)) + (32 * players.length) + 192] = players[sha3(block.number, block.timestamp, mem[ceil32(return_data.size) + 192 len 32 * players.length]) % players.length].field_0
        emit Win(mem[(4 * ceil32(return_data.size)) + (32 * players.length) + 192 len (5 * ceil32(return_data.size)) + 32]);
        mem[(4 * ceil32(return_data.size)) + (32 * players.length) + 196] = stor8
        mem[(4 * ceil32(return_data.size)) + (32 * players.length) + 228] = ext_call.return_data[0] / 100
        require ext_code.size(sub_b1b0c49eAddress)
        call sub_b1b0c49eAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + (32 * players.length) + 196 len (5 * ceil32(return_data.size)) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sha3(block.number, block.timestamp, mem[ceil32(return_data.size) + 192 len 32 * players.length]) % players.length >= players.length:
            revert with 0, 50
        if not players[sha3(block.number, block.timestamp, mem[ceil32(return_data.size) + 192 len 32 * players.length]) % players.length].field_0:
            revert with 0, 
                        'ERC20: mint to the zero address',
                        mem[(6 * ceil32(return_data.size)) + (32 * players.length) + 292 len 9 * ceil32(return_data.size)]
        if totalSupply > -2:
            revert with 0, 17
        totalSupply++
        if balanceOf[stor10[sha3(block.number, block.timestamp, mem[ceil32(return_data.size) + 192 len 32 * stor10.length]) % stor10.length].field_0] > -2:
            revert with 0, 17
        balanceOf[stor10[sha3(block.number, block.timestamp, mem[ceil32(return_data.size) + 192 len 32 * stor10.length]) % stor10.length].field_0]++
        emit Transfer(address rg1, address rg2, uint256 rg3):
                      1,
                      mem[(6 * ceil32(return_data.size)) + (32 * players.length) + 224 len 9 * ceil32(return_data.size)],
                      0,
                      players[sha3(block.number, block.timestamp, mem[ceil32(return_data.size) + 192 len 32 * players.length]) % players.length].field_0,
        players.length = 0
        idx = 0
        while players.length > idx:
            players[idx].field_0 = 0
            idx = idx + 1
            continue 
        stor11 = 0
        if not ext_call.return_data[0]:
            revert with 0, 'Error: transaction unsuccessful'
    if not ext_call.return_data[0]:
        revert with 0, 'Entry failed.'
    emit 0xf0abe0f5: msg.sender
}



}
