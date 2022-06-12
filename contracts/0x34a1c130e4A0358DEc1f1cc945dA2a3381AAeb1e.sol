contract main {




// =====================  Runtime code  =====================


address owner;
address rarityAddress;
address sub_1d423d76Address;
array of struct stor3;
uint256 sub_9135dfac;
uint256 sub_c7d12e24;
mapping of address stor6;
array of struct stor7;
mapping of uint256 stor8;
array of uint256 stor9;
mapping of uint256 stor10;
mapping of address stor11;

function sub_1d423d76(?) {
    return sub_1d423d76Address
}

function owner() {
    return owner
}

function sub_9135dfac(?) {
    return sub_9135dfac
}

function sub_c7d12e24(?) {
    return sub_c7d12e24
}

function rarity() {
    return rarityAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_19fdb52d(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.0x6352211e with:
            gas gas_remaining wei
           args sub_9135dfac
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not the guild master.'
    sub_c7d12e24 = arg1
}

function sub_e61a7089(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.0x6352211e with:
            gas gas_remaining wei
           args sub_9135dfac
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not the guild master.'
    sub_c7d12e24 = arg1
}

function sub_a1664e37(?) {
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.0x6352211e with:
            gas gas_remaining wei
           args sub_9135dfac
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not the guild master.'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function sub_05c2040b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.0x6352211e with:
            gas gas_remaining wei
           args sub_9135dfac
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not the guild master.'
    stor6[address(arg1)] = address(arg1)
    if not stor8[address(arg1)]:
        stor7.length++
        stor7[stor7.length].field_0 = address(arg1)
        stor7[stor7.length].field_160 = 0
        stor8[address(arg1)] = stor7.length
}

function sub_c83874b4(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.0x6352211e with:
            gas gas_remaining wei
           args sub_9135dfac
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not the guild master.'
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.summoner(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    sub_9135dfac = arg1
}

function send_out() payable {
    mem[64] = 96
    require not msg.value
    if var62002 >= stor9.length:
    if var68001 >= stor9.length:
        revert with 0, 50
    mem[0] = 9
    mem[96] = 0xeed2502800000000000000000000000000000000000000000000000000000000
    mem[100] = var76001
    require ext_code.size(rarityAddress)
    call rarityAddress.mem[var78004 len 4] with:
         gas gas_remaining wei
        args mem[var78004 + 4 len var78005 - 4]
    mem[var78006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var82002 - var82001 >= 32
    if block.timestamp <= var86001:
        # nil
    else:
        mem[ceil32(return_data.size) + 96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = var88001
        require ext_code.size(rarityAddress)
        call rarityAddress.mem[var90004 len 4] with:
             gas gas_remaining wei
            args mem[var90004 + 4 len var90005 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
}

function sub_cdefd286(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.0x6352211e with:
            gas gas_remaining wei
           args sub_9135dfac
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not the guild master.'
    stor6[address(arg1)] = 0
    if stor8[address(arg1)]:
        if stor8[address(arg1)] < 1:
            revert with 0, 17
        if stor7.length < 1:
            revert with 0, 17
        if stor7.length - 1 != stor8[address(arg1)] - 1:
            if stor7.length - 1 >= stor7.length:
                revert with 0, 50
            if stor8[address(arg1)] - 1 >= stor7.length:
                revert with 0, 50
            stor7[stor8[address(arg1)]].field_0 = stor7[stor7.length].field_0
            stor8[stor7[stor7.length].field_0] = stor8[address(arg1)]
        if not stor7.length:
            revert with 0, 49
        stor7[stor7.length].field_0 = 0
        stor7.length--
        stor8[address(arg1)] = 0
}

function sub_6760fd4a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor9.length > test266151307():
        revert with 0, 65
    if not stor9.length:
        if var44002 >= stor9.length:
            mem[(32 * stor9.length) + 128] = 32
            mem[(32 * stor9.length) + 160] = stor9.length
            mem[(32 * stor9.length) + 192 len 32 * stor9.length] = mem[128 len 32 * stor9.length]
            return memory
              from (32 * stor9.length) + 128
               len (96 * stor9.length) + 64
        if var50001 >= stor9.length:
            revert with 0, 50
        if stor11[var58001] != address(arg1):
            if var62001 == -1:
                revert with 0, 17
            # nil
        else:
            if var64001 >= stor9.length:
                revert with 0, 50
            if var72002 >= stor9.length:
                revert with 0, 50
            # nil
    else:
        mem[128 len 32 * stor9.length] = call.data[calldata.size len 32 * stor9.length]
        if var45002 >= stor9.length:
            mem[(32 * stor9.length) + 128] = 32
            mem[(32 * stor9.length) + 160] = stor9.length
            mem[(32 * stor9.length) + 192 len 32 * stor9.length] = call.data[calldata.size len 32 * stor9.length]
            return memory
              from (32 * stor9.length) + 128
               len (96 * stor9.length) + 64
        if var51001 >= stor9.length:
            revert with 0, 50
        if stor11[var59001] != address(arg1):
            if var63001 == -1:
                revert with 0, 17
            # nil
        else:
            if var65001 >= stor9.length:
                revert with 0, 50
            if var73002 >= stor9.length:
                revert with 0, 50
            # nil
}

function sub_c7fc3593(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if msg.value < sub_c7d12e24:
        revert with 0, 'Minimum tribute was not reached.'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _34 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 4).length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + 101] = msg.sender
        mem[ceil32(32 * ('cd', 4).length) + 133] = this.address
        mem[ceil32(32 * ('cd', 4).length) + 165] = _34
        require ext_code.size(rarityAddress)
        call rarityAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _34
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[96]:
            revert with 0, 50
        stor11[mem[(32 * idx) + 128]] = msg.sender
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 10
        if not stor10[mem[(32 * idx) + 128]]:
            stor9.length++
            stor9[stor9.length] = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 10
            stor10[mem[(32 * idx) + 128]] = stor9.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_853d0957(?) {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
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
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
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

function sub_9c4e8e06(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 10
        if stor10[mem[(32 * idx) + 128]]:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 11
            if stor11[mem[(32 * idx) + 128]] == msg.sender:
                if idx >= mem[96]:
                    revert with 0, 50
                stor11[mem[(32 * idx) + 128]] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 10
                if not stor10[mem[(32 * idx) + 128]]:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _80 = mem[(32 * idx) + 128]
                    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
                    mem[ceil32(32 * ('cd', 4).length) + 165] = _80
                    require ext_code.size(rarityAddress)
                    call rarityAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _80
                else:
                    if stor10[mem[(32 * idx) + 128]] < 1:
                        revert with 0, 17
                    if stor9.length < 1:
                        revert with 0, 17
                    if stor9.length - 1 == stor10[mem[(32 * idx) + 128]] - 1:
                        if not stor9.length:
                            revert with 0, 49
                        stor9[stor9.length] = 0
                        stor9.length--
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 10
                        stor10[mem[(32 * idx) + 128]] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        _91 = mem[(32 * idx) + 128]
                        mem[ceil32(32 * ('cd', 4).length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
                        mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
                        mem[ceil32(32 * ('cd', 4).length) + 165] = _91
                        require ext_code.size(rarityAddress)
                        call rarityAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _91
                    else:
                        if stor9.length - 1 >= stor9.length:
                            revert with 0, 50
                        if stor10[mem[(32 * idx) + 128]] - 1 >= stor9.length:
                            revert with 0, 50
                        stor9[stor10[mem[(32 * idx) + 128]]] = stor9[stor9.length]
                        stor10[stor9[stor9.length]] = stor10[mem[(32 * idx) + 128]]
                        if not stor9.length:
                            revert with 0, 49
                        stor9[stor9.length] = 0
                        stor9.length--
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 10
                        stor10[mem[(32 * idx) + 128]] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        _95 = mem[(32 * idx) + 128]
                        mem[ceil32(32 * ('cd', 4).length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
                        mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
                        mem[ceil32(32 * ('cd', 4).length) + 165] = _95
                        require ext_code.size(rarityAddress)
                        call rarityAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _95
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
