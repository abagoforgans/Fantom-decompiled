contract main {




// =====================  Runtime code  =====================


#
#  - sub_bc935be5(?)
#
address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
address stor3;
address sub_baafbcfcAddress;
array of struct stor5;
array of struct stor6;
array of struct stor7;
uint256 stor8;
uint8 stor9;
uint8 stor9; offset 8
uint8 stor9; offset 16
uint32 sub_e1ac7084; offset 24
uint32 offset; offset 56
uint256 stor9; offset 16

function enabled() {
    return bool(uint8(stor9.field_16))
}

function owner() {
    return owner
}

function sub_baafbcfc(?) {
    return sub_baafbcfcAddress
}

function offset() {
    return offset
}

function sub_e1ac7084(?) {
    return sub_e1ac7084
}

function sub_509e3c22(?) {
    require calldata.size - 4 >= 32
    return bool(1 << arg1 and stor2[1][Mask(248, 8, arg1)])
}

function sub_e1046852(?) {
    require calldata.size - 4 >= 32
    return bool(1 << arg1 and stor2[0][Mask(248, 8, arg1)])
}

function sub_ee9cf84e(?) {
    require calldata.size - 4 >= 32
    return bool(1 << arg1 and stor2[2][Mask(248, 8, arg1)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_c7631f1b(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor9.field_0) = uint8(arg1)
}

function sub_d086acc6(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor9.field_8) = uint8(arg1)
}

function setEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor9.field_16) = Mask(240, 0, arg1)
}

function sub_c6f339aa(?) {
    require calldata.size - 4 >= 64
    require arg1 < 4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 3:
        revert with 0, 33
    stor1[arg1] = arg2
}

function sub_6a4acb3a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7.length++
    stor7[stor7.length].field_0 = address(arg1)
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Withrawal failed.'
    emit 0x52538705: eth.balance(this.address), msg.sender
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

function sub_ef9b218b(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_baafbcfcAddress)
    call sub_baafbcfcAddress.0xef9b218b with:
         gas gas_remaining wei
        args bool(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4131c8d6(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < 256:
        if arg1 > 3:
            revert with 0, 33
        mem[0] = idx
        mem[32] = sha3(arg1, 2)
        stor2[arg1][idx] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_807f5a3a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7.length:
        idx = 128
        s = 0
        while (32 * stor7.length) + 96 > idx:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if arg1 >= stor7.length:
        revert with 0, 'Invalid token index.'
    require arg1 > 0
    require arg1 < stor7.length
    stor7[arg1].field_0 = 0
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_f0e6219d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6.length:
        if (32 * stor6.length) + 32 > 64:
            idx = 160
            s = 1
            while (32 * stor6.length) + 96 > idx:
                mem[idx + 32] = stor6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    if arg1 >= stor6.length:
        revert with 0, 'Invalid token index.'
    require arg1 < stor6.length
    stor6[arg1].field_0 = 0
}

function sub_96ad8ed3(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7.length:
        if (32 * stor7.length) + 32 > 64:
            idx = 160
            s = 1
            while (32 * stor7.length) + 96 > idx:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    if arg1 >= stor7.length:
        revert with 0, 'Invalid token index.'
    require arg1 > 0
    if arg1 >= stor7.length:
        revert with 0, 50
    stor7[arg1].field_0 = address(arg2)
}

function sub_af21b40c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    stor6.length++
    stor6[stor6.length].field_0 = address(arg1)
}

function sub_8e40c7e8(?) {
    if stor5.length:
        mem[128] = address(stor5.field_0)
        if (32 * stor5.length) + 32 > 64:
            mem[160] = address(stor5.field_256)
            idx = 160
            s = 1
            while (32 * stor5.length) + 96 > idx:
                mem[idx + 32] = stor5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    idx = 0
    s = (32 * stor5.length) + 192
    t = 128
    while idx < stor5.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor5.length) + 128
       len (96 * stor5.length) + 64
}

function sub_ed7b6163(?) {
    if stor7.length:
        mem[128] = address(stor7.field_0)
        if (32 * stor7.length) + 32 > 64:
            mem[160] = address(stor7.field_256)
            idx = 160
            s = 1
            while (32 * stor7.length) + 96 > idx:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor7.length) + 128] = 32
    mem[(32 * stor7.length) + 160] = stor7.length
    idx = 0
    s = (32 * stor7.length) + 192
    t = 128
    while idx < stor7.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor7.length) + 128
       len (96 * stor7.length) + 64
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x86ba4ab4: ext_call.return_data[0], msg.sender, arg1
}

function sub_de342620(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6.length:
        if (32 * stor6.length) + 32 > 64:
            idx = 160
            s = 1
            while (32 * stor6.length) + 96 > idx:
                mem[idx + 32] = stor6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    if arg1 >= stor6.length:
        revert with 0, 'Invalid token index.'
    require ext_code.size(address(arg2))
    staticcall address(arg2).supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    if arg1 >= stor6.length:
        revert with 0, 50
    stor6[arg1].field_0 = address(arg2)
}

function sub_66b9d3e0(?) {
    mem[64] = (32 * stor6.length) + 128
    mem[96] = stor6.length
    if not stor6.length:
        mem[(32 * stor6.length) + 128] = 32
        mem[(32 * stor6.length) + 160] = stor6.length
        idx = 0
        s = (32 * stor6.length) + 192
        t = 128
        while idx < stor6.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor6.length) + 128
           len (96 * stor6.length) + 64
    mem[128] = address(stor6.field_0)
    idx = 128
    s = 0
    while (32 * stor6.length) + 96 > idx:
        mem[idx + 32] = stor6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6.length) + 128] = 32
    mem[(32 * stor6.length) + 160] = stor6.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor6.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor6.length) + -mem[64] + 192
}

function sub_10e77a6a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor5[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_23b94806(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if not uint8(stor9.field_16):
        revert with 0, 'Portalarc is disabled.'
    idx = 0
    while idx < uint8(arg1):
        require ext_code.size(stor3)
        staticcall stor3.mintPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _12 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_12] <= eth.balance(this.address):
            if stor8 == -1:
                revert with 0, 17
            stor8++
            mem[mem[64]] = 0xc4415ccf00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 3
            mem[mem[64] + 36] = stor3
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = stor8
            mem[mem[64] + 132] = 1
            require ext_code.size(sub_baafbcfcAddress)
            call sub_baafbcfcAddress.0xc4415ccf with:
                 gas gas_remaining wei
                args 3, stor3, address(this.address), stor8, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x3ac3b033: this.address
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ae6ebbe3(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 36).length)) + 97 < 96 or ceil32(ceil32(('cd', 36).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + 128] = 0
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 36).length)) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = ceil32(ceil32(('cd', 36).length)) + 129
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130] = cd[4]
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 162 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 68).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ('cd', 36).length + 162] = 0
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ('cd', 36).length + 194] = 0
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 98] = ('cd', 36).length + 96
    mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ('cd', 36).length + 226
    if ceil32(('cd', 36).length) <= ('cd', 36).length:
        idx = 0
        s = cd[4]
        t = 0
        while uint16(idx) < ('cd', 68).length:
            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                revert with 0, 50
            if 1 == bool(s):
                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 98]])
                _143 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_143 + 32 len mem[_143]])
                continue 
            _131 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
            mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 98]])
            mem[mem[64] + 64] = _131
            _140 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if uint16(idx) == 65535:
                revert with 0, 17
            idx = uint16(idx) + 1
            s = s / 2
            t = sha3(mem[_140 + 32 len mem[_140]])
            continue 
    else:
        idx = 0
        s = cd[4]
        t = 0
        while uint16(idx) < ('cd', 68).length:
            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                revert with 0, 50
            if 1 == bool(s):
                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 98]])
                _149 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_149 + 32 len mem[_149]])
                continue 
            _136 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
            mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 98]])
            mem[mem[64] + 64] = _136
            _146 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if uint16(idx) == 65535:
                revert with 0, 17
            idx = uint16(idx) + 1
            s = s / 2
            t = sha3(mem[_146 + 32 len mem[_146]])
            continue 
    return (t == stor1[0])
}

function sub_40d1e145(?) {
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 36).length)) + 97 < 96 or ceil32(ceil32(('cd', 36).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + 128] = 0
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 98 < 97 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 98
    mem[ceil32(ceil32(('cd', 36).length)) + 97] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = cd[132] + 36
    s = ceil32(ceil32(('cd', 36).length)) + 129
    while idx < cd[132] + (32 * ('cd', 132).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    s = 0
    while idx < stor5.length:
        mem[0] = 5
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(stor5[idx].field_0)
        staticcall stor5[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_106] <= 0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_106] > 0
            continue 
        _119 = mem[64]
        mem[mem[64] + 32] = cd[4]
        _127 = mem[96]
        idx = 0
        while idx < _127:
            mem[idx + _119 + 64] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[_119 + _127 + 64] = cd[68]
        mem[_119 + _127 + 96] = cd[100]
        if ceil32(_127) <= _127:
            _193 = mem[64]
            mem[mem[64]] = _119 + _127 + -mem[64] + 96
            mem[64] = _119 + _127 + 128
            _268 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
            idx = 0
            s = cd[4]
            t = sha3(mem[_193 + 32 len mem[_193]])
            while uint16(idx) < _268:
                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                    revert with 0, 50
                if 1 == bool(s):
                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 64] = t
                    _313 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _268 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_313 + 32 len mem[_313]])
                    continue 
                _289 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 32] = t
                mem[mem[64] + 64] = _289
                _310 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                _268 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_310 + 32 len mem[_310]])
                continue 
        else:
            _201 = mem[64]
            mem[mem[64]] = _119 + _127 + -mem[64] + 96
            mem[64] = _119 + _127 + 128
            _269 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
            idx = 0
            s = cd[4]
            t = sha3(mem[_201 + 32 len mem[_201]])
            while uint16(idx) < _269:
                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                    revert with 0, 50
                if 1 == bool(s):
                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 64] = t
                    _319 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _269 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_319 + 32 len mem[_319]])
                    continue 
                _294 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 32] = t
                mem[mem[64] + 64] = _294
                _316 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                _269 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_316 + 32 len mem[_316]])
                continue 
        return (t == stor1[2])
    if not s:
        revert with 0, 'You cannot be trusted.'
    mem[mem[64] + 32] = cd[4]
    _104 = mem[96]
    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[mem[64] + mem[96] + 64] = cd[68]
    mem[mem[64] + mem[96] + 96] = cd[100]
    if ceil32(mem[96]) <= mem[96]:
        _190 = mem[64]
        mem[mem[64]] = mem[96] + 96
        mem[64] = mem[64] + _104 + 128
        _266 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
        idx = 0
        s = cd[4]
        t = 0
        while uint16(idx) < _266:
            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                revert with 0, 50
            if 1 == bool(s):
                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 64] = t + sha3(mem[_190 + 32 len mem[_190]])
                _301 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                _266 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_301 + 32 len mem[_301]])
                continue 
            _279 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
            mem[mem[64] + 32] = t + sha3(mem[_190 + 32 len mem[_190]])
            mem[mem[64] + 64] = _279
            _298 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if uint16(idx) == 65535:
                revert with 0, 17
            _266 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
            idx = uint16(idx) + 1
            s = s / 2
            t = sha3(mem[_298 + 32 len mem[_298]])
            continue 
    else:
        _197 = mem[64]
        mem[mem[64]] = mem[96] + 96
        mem[64] = mem[64] + _104 + 128
        _267 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
        idx = 0
        s = cd[4]
        t = 0
        while uint16(idx) < _267:
            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                revert with 0, 50
            if 1 == bool(s):
                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 64] = t + sha3(mem[_197 + 32 len mem[_197]])
                _307 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                _267 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_307 + 32 len mem[_307]])
                continue 
            _284 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
            mem[mem[64] + 32] = t + sha3(mem[_197 + 32 len mem[_197]])
            mem[mem[64] + 64] = _284
            _304 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if uint16(idx) == 65535:
                revert with 0, 17
            _267 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
            idx = uint16(idx) + 1
            s = s / 2
            t = sha3(mem[_304 + 32 len mem[_304]])
            continue 
    return (t == stor1[2])
}

function sub_a424fc36(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 36).length)) + 97 < 96 or ceil32(ceil32(('cd', 36).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + 128] = 0
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 36).length)) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = ceil32(ceil32(('cd', 36).length)) + 129
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 98] = stor6.length
    if not stor6.length:
        if 0 >= stor6.length:
            revert with 0, 'Invalid token index.'
        if 0 >= stor6.length:
            revert with 0, 50
        if not mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 142 len 20]:
            revert with 0, 'Invalid token address.'
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162] = cd[4]
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 68).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 194] = 0
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 226] = 0
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130] = ('cd', 36).length + 96
        mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 258
        if ceil32(('cd', 36).length) <= ('cd', 36).length:
            idx = 0
            s = cd[4]
            t = 0
            while uint16(idx) < ('cd', 68).length:
                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                    revert with 0, 50
                if 1 == bool(s):
                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130]])
                    _314 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_314 + 32 len mem[_314]])
                    continue 
                _291 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130]])
                mem[mem[64] + 64] = _291
                _311 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_311 + 32 len mem[_311]])
                continue 
        else:
            idx = 0
            s = cd[4]
            t = 0
            while uint16(idx) < ('cd', 68).length:
                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                    revert with 0, 50
                if 1 == bool(s):
                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130]])
                    _320 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_320 + 32 len mem[_320]])
                    continue 
                _296 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130]])
                mem[mem[64] + 64] = _296
                _317 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_317 + 32 len mem[_317]])
                continue 
    else:
        mem[0] = 6
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130] = address(stor6.field_0)
        if (32 * stor6.length) + 32 <= 64:
            if 0 >= stor6.length:
                revert with 0, 'Invalid token index.'
            if 0 >= stor6.length:
                revert with 0, 50
            if not address(stor6.field_0):
                revert with 0, 'Invalid token address.'
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162] = cd[4]
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 68).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 194] = 0
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 226] = 0
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130] = ('cd', 36).length + 96
            mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 258
            if ceil32(('cd', 36).length) <= ('cd', 36).length:
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < ('cd', 68).length:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130]])
                        _327 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_327 + 32 len mem[_327]])
                        continue 
                    _302 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130]])
                    mem[mem[64] + 64] = _302
                    _324 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_324 + 32 len mem[_324]])
                    continue 
            else:
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < ('cd', 68).length:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130]])
                        _333 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_333 + 32 len mem[_333]])
                        continue 
                    _307 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130]])
                    mem[mem[64] + 64] = _307
                    _330 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_330 + 32 len mem[_330]])
                    continue 
        else:
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 162] = address(stor6.field_256)
            idx = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 162
            s = 1
            while ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 98 > idx:
                mem[idx + 32] = stor6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if 0 >= stor6.length:
                revert with 0, 'Invalid token index.'
            if 0 >= stor6.length:
                revert with 0, 50
            if not address(stor6.field_0):
                revert with 0, 'Invalid token address.'
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162] = cd[4]
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 68).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 194] = 0
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 226] = 0
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130] = ('cd', 36).length + 96
            mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 258
            if ceil32(('cd', 36).length) <= ('cd', 36).length:
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < ('cd', 68).length:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130]])
                        _447 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_447 + 32 len mem[_447]])
                        continue 
                    _435 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130]])
                    mem[mem[64] + 64] = _435
                    _444 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_444 + 32 len mem[_444]])
                    continue 
            else:
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < ('cd', 68).length:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130]])
                        _453 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_453 + 32 len mem[_453]])
                        continue 
                    _440 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130]])
                    mem[mem[64] + 64] = _440
                    _450 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_450 + 32 len mem[_450]])
                    continue 
    return (t == stor1[1])
}

function sub_b6f6f60f(?) {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 36).length)) + 97 < 96 or ceil32(ceil32(('cd', 36).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + 128] = 0
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 98 < 97 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 36).length)) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = ceil32(ceil32(('cd', 36).length)) + 129
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 98] = stor6.length
    if not stor6.length:
        if cd[68] >= stor6.length:
            revert with 0, 'Invalid token index.'
        if cd[68] >= stor6.length:
            revert with 0, 50
        if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 142 len 20]:
            revert with 0, 'Invalid token address.'
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162] = cd[4]
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 194] = cd[68]
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 226] = 0
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130] = ('cd', 36).length + 96
        mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 258
        if ceil32(('cd', 36).length) <= ('cd', 36).length:
            idx = 0
            s = cd[4]
            t = 0
            while uint16(idx) < ('cd', 100).length:
                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                    revert with 0, 50
                if 1 == bool(s):
                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130]])
                    _314 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_314 + 32 len mem[_314]])
                    continue 
                _291 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130]])
                mem[mem[64] + 64] = _291
                _311 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_311 + 32 len mem[_311]])
                continue 
        else:
            idx = 0
            s = cd[4]
            t = 0
            while uint16(idx) < ('cd', 100).length:
                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                    revert with 0, 50
                if 1 == bool(s):
                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130]])
                    _320 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_320 + 32 len mem[_320]])
                    continue 
                _296 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130]])
                mem[mem[64] + 64] = _296
                _317 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_317 + 32 len mem[_317]])
                continue 
    else:
        mem[0] = 6
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 130] = address(stor6.field_0)
        if (32 * stor6.length) + 32 <= 64:
            if cd[68] >= stor6.length:
                revert with 0, 'Invalid token index.'
            if cd[68] >= stor6.length:
                revert with 0, 50
            if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 142 len 20]:
                revert with 0, 'Invalid token address.'
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162] = cd[4]
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 194] = cd[68]
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 226] = 0
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130] = ('cd', 36).length + 96
            mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 258
            if ceil32(('cd', 36).length) <= ('cd', 36).length:
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < ('cd', 100).length:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130]])
                        _327 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_327 + 32 len mem[_327]])
                        continue 
                    _302 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130]])
                    mem[mem[64] + 64] = _302
                    _324 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_324 + 32 len mem[_324]])
                    continue 
            else:
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < ('cd', 100).length:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130]])
                        _333 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_333 + 32 len mem[_333]])
                        continue 
                    _307 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130]])
                    mem[mem[64] + 64] = _307
                    _330 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_330 + 32 len mem[_330]])
                    continue 
        else:
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 162] = address(stor6.field_256)
            idx = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 162
            s = 1
            while ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 98 > idx:
                mem[idx + 32] = stor6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if cd[68] >= stor6.length:
                revert with 0, 'Invalid token index.'
            if cd[68] >= stor6.length:
                revert with 0, 50
            if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 142 len 20]:
                revert with 0, 'Invalid token address.'
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162] = cd[4]
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 194] = cd[68]
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 226] = 0
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130] = ('cd', 36).length + 96
            mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 258
            if ceil32(('cd', 36).length) <= ('cd', 36).length:
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < ('cd', 100).length:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130]])
                        _447 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_447 + 32 len mem[_447]])
                        continue 
                    _435 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130]])
                    mem[mem[64] + 64] = _435
                    _444 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_444 + 32 len mem[_444]])
                    continue 
            else:
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < ('cd', 100).length:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130]])
                        _453 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_453 + 32 len mem[_453]])
                        continue 
                    _440 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130]])
                    mem[mem[64] + 64] = _440
                    _450 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_450 + 32 len mem[_450]])
                    continue 
    return (t == stor1[1])
}

function sub_dcaec295(?) {
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 36).length)) + 97 < 96 or ceil32(ceil32(('cd', 36).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + 128] = 0
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 98 < 97 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 36).length)) + 97] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = cd[132] + 36
    s = ceil32(ceil32(('cd', 36).length)) + 129
    while idx < cd[132] + (32 * ('cd', 132).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 98] = stor6.length
    if not stor6.length:
        if cd[68] >= stor6.length:
            revert with 0, 'Invalid token index.'
        if cd[68] >= stor6.length:
            revert with 0, 50
        if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 142 len 20]:
            revert with 0, 'Invalid token address.'
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162] = cd[4]
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 132).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 194] = cd[68]
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 226] = cd[100]
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130] = ('cd', 36).length + 96
        mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 258
        if ceil32(('cd', 36).length) <= ('cd', 36).length:
            idx = 0
            s = cd[4]
            t = 0
            while uint16(idx) < ('cd', 132).length:
                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                    revert with 0, 50
                if 1 == bool(s):
                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130]])
                    _314 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_314 + 32 len mem[_314]])
                    continue 
                _291 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130]])
                mem[mem[64] + 64] = _291
                _311 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_311 + 32 len mem[_311]])
                continue 
        else:
            idx = 0
            s = cd[4]
            t = 0
            while uint16(idx) < ('cd', 132).length:
                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                    revert with 0, 50
                if 1 == bool(s):
                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130]])
                    _320 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_320 + 32 len mem[_320]])
                    continue 
                _296 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130]])
                mem[mem[64] + 64] = _296
                _317 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_317 + 32 len mem[_317]])
                continue 
    else:
        mem[0] = 6
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 130] = address(stor6.field_0)
        if (32 * stor6.length) + 32 <= 64:
            if cd[68] >= stor6.length:
                revert with 0, 'Invalid token index.'
            if cd[68] >= stor6.length:
                revert with 0, 50
            if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 142 len 20]:
                revert with 0, 'Invalid token address.'
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162] = cd[4]
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 132).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 194] = cd[68]
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 226] = cd[100]
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130] = ('cd', 36).length + 96
            mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 258
            if ceil32(('cd', 36).length) <= ('cd', 36).length:
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < ('cd', 132).length:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130]])
                        _327 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_327 + 32 len mem[_327]])
                        continue 
                    _302 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130]])
                    mem[mem[64] + 64] = _302
                    _324 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_324 + 32 len mem[_324]])
                    continue 
            else:
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < ('cd', 132).length:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130]])
                        _333 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_333 + 32 len mem[_333]])
                        continue 
                    _307 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130]])
                    mem[mem[64] + 64] = _307
                    _330 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_330 + 32 len mem[_330]])
                    continue 
        else:
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 162] = address(stor6.field_256)
            idx = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 162
            s = 1
            while ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 98 > idx:
                mem[idx + 32] = stor6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if cd[68] >= stor6.length:
                revert with 0, 'Invalid token index.'
            if cd[68] >= stor6.length:
                revert with 0, 50
            if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 142 len 20]:
                revert with 0, 'Invalid token address.'
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162] = cd[4]
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 132).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 194] = cd[68]
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 226] = cd[100]
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130] = ('cd', 36).length + 96
            mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 258
            if ceil32(('cd', 36).length) <= ('cd', 36).length:
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < ('cd', 132).length:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130]])
                        _447 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_447 + 32 len mem[_447]])
                        continue 
                    _435 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130]])
                    mem[mem[64] + 64] = _435
                    _444 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_444 + 32 len mem[_444]])
                    continue 
            else:
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < ('cd', 132).length:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130]])
                        _453 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_453 + 32 len mem[_453]])
                        continue 
                    _440 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130]])
                    mem[mem[64] + 64] = _440
                    _450 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_450 + 32 len mem[_450]])
                    continue 
    return (t == stor1[1])
}

function sub_3f21a946(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 36).length)) + 97 < 96 or ceil32(ceil32(('cd', 36).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + 128] = 0
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 36).length)) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = ceil32(ceil32(('cd', 36).length)) + 129
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if not uint8(stor9.field_16):
        revert with 0, 'Portalarc is disabled.'
    require ext_code.size(stor3)
    staticcall stor3.mintPrice() with:
            gas gas_remaining wei
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > eth.balance(sub_baafbcfcAddress):
        revert with 0, 'Not enough beam liquidity.'
    if 1 and stor2[0][Mask(248, 8, cd[4])]:
        revert with 0, 'Redeemed.'
    mem[0] = cd[4] / 256
    mem[32] = sha3(0, 2)
    stor2[0][Mask(248, 8, cd[4])] = 1
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 130] = cd[4]
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 162 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 68).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + ('cd', 36).length + 162] = 0
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + ('cd', 36).length + 194] = 0
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 98] = ('cd', 36).length + 96
    mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + ('cd', 36).length + 226
    if ceil32(('cd', 36).length) <= ('cd', 36).length:
        idx = 0
        s = cd[4]
        t = 0
        while uint16(idx) < ('cd', 68).length:
            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                revert with 0, 50
            if 1 == bool(s):
                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 130 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 98]])
                _195 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_195 + 32 len mem[_195]])
                continue 
            _183 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
            mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 130 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 98]])
            mem[mem[64] + 64] = _183
            _192 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if uint16(idx) == 65535:
                revert with 0, 17
            idx = uint16(idx) + 1
            s = s / 2
            t = sha3(mem[_192 + 32 len mem[_192]])
            continue 
        mem[0] = 0
        mem[32] = 1
        if t != stor1[0]:
            revert with 0, 'Unproven.'
        idx = 2
        s = 0
        s = 0
        while idx < 42:
            if idx >= mem[96]:
                revert with 0, 50
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= mem[96]:
                revert with 0, 50
            if idx > -3:
                revert with 0, 17
            idx = idx + 2
            s = uint8(mem[idx + 129]) >> 248
            s = uint8(mem[idx + 128]) >> 248
            continue 
        if not uint8(stor9.field_0):
            if not uint8(stor9.field_8):
                require ext_code.size(sub_baafbcfcAddress)
                call sub_baafbcfcAddress.0xc4415ccf with:
                     gas gas_remaining wei
                    args 0, stor3, 0, cd[4], 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xb1264a80: cd[4], 1
                emit 0x0: cd[4], 1
            else:
                if block.number < 1:
                    revert with 0, 17
                mem[mem[64] + 32] = block.timestamp
                mem[mem[64] + 64] = address(msg.sender)
                mem[mem[64] + 84] = block.hash(block.number - 1)
                _235 = mem[64]
                mem[mem[64]] = 84
                mem[64] = mem[64] + 116
                if not uint8(stor9.field_8):
                    revert with 0, 18
                require ext_code.size(sub_baafbcfcAddress)
                if not sha3(mem[_235 + 32 len mem[_235]]) % uint8(stor9.field_8):
                    call sub_baafbcfcAddress.0xc4415ccf with:
                         gas gas_remaining wei
                        args 0, stor3, 0, cd[4], 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xb1264a80: cd[4], 2
                    emit 0x0: cd[4], 2
                else:
                    call sub_baafbcfcAddress.0xc4415ccf with:
                         gas gas_remaining wei
                        args 0, stor3, 0, cd[4], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xb1264a80: cd[4], 1
                    emit 0x0: cd[4], 1
        else:
            require ext_code.size(stor3)
            staticcall stor3.maxSupply() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _222 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _226 = mem[_222]
            require mem[_222] == mem[_222 + 30 len 2]
            if mem[_222 + 30 len 2] < offset:
                revert with 0, 17
            require ext_code.size(stor3)
            staticcall stor3.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _246 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_246] >= uint32(uint16(_226) - offset):
                if not uint8(stor9.field_8):
                    require ext_code.size(sub_baafbcfcAddress)
                    call sub_baafbcfcAddress.0xc4415ccf with:
                         gas gas_remaining wei
                        args 0, stor3, 0, cd[4], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xb1264a80: cd[4], 1
                    emit 0x0: cd[4], 1
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = block.hash(block.number - 1)
                    _273 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if not uint8(stor9.field_8):
                        revert with 0, 18
                    require ext_code.size(sub_baafbcfcAddress)
                    if not sha3(mem[_273 + 32 len mem[_273]]) % uint8(stor9.field_8):
                        call sub_baafbcfcAddress.0xc4415ccf with:
                             gas gas_remaining wei
                            args 0, stor3, 0, cd[4], 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xb1264a80: cd[4], 2
                        emit 0x0: cd[4], 2
                    else:
                        call sub_baafbcfcAddress.0xc4415ccf with:
                             gas gas_remaining wei
                            args 0, stor3, 0, cd[4], 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xb1264a80: cd[4], 1
                        emit 0x0: cd[4], 1
            else:
                if block.number < 1:
                    revert with 0, 17
                mem[mem[64] + 32] = block.timestamp
                mem[mem[64] + 64] = address(msg.sender)
                mem[mem[64] + 84] = block.hash(block.number - 1)
                _262 = mem[64]
                mem[mem[64]] = 84
                mem[64] = mem[64] + 116
                if not uint8(stor9.field_0):
                    revert with 0, 18
                if not sha3(mem[_262 + 32 len mem[_262]]) % uint8(stor9.field_0):
                    require ext_code.size(stor3)
                    staticcall stor3.mintPrice() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= eth.balance(this.address):
                        if stor8 == -1:
                            revert with 0, 17
                        stor8++
                        require ext_code.size(sub_baafbcfcAddress)
                        call sub_baafbcfcAddress.0xc4415ccf with:
                             gas gas_remaining wei
                            args 3, stor3, address(this.address), stor8, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x3ac3b033 
                        emit 0x0 
                if not uint8(stor9.field_8):
                    require ext_code.size(sub_baafbcfcAddress)
                    call sub_baafbcfcAddress.0xc4415ccf with:
                         gas gas_remaining wei
                        args 0, stor3, 0, cd[4], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xb1264a80: cd[4], 1
                    emit 0x0: cd[4], 1
                else:
                    if block.number < 1:
                        revert with 0, 17
                    if not uint8(stor9.field_8):
                        revert with 0, 18
                    require ext_code.size(sub_baafbcfcAddress)
                    if not sha3(block.timestamp, msg.sender, block.hash(block.number - 1)) % uint8(stor9.field_8):
                        call sub_baafbcfcAddress.0xc4415ccf with:
                             gas gas_remaining wei
                            args 0, stor3, 0, cd[4], 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xb1264a80: cd[4], 2
                        emit 0x0: cd[4], 2
                    else:
                        call sub_baafbcfcAddress.0xc4415ccf with:
                             gas gas_remaining wei
                            args 0, stor3, 0, cd[4], 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xb1264a80: cd[4], 1
                        emit 0x0: cd[4], 1
    else:
        idx = 0
        s = cd[4]
        t = 0
        while uint16(idx) < ('cd', 68).length:
            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                revert with 0, 50
            if 1 == bool(s):
                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 130 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 98]])
                _201 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_201 + 32 len mem[_201]])
                continue 
            _188 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
            mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 130 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 98]])
            mem[mem[64] + 64] = _188
            _198 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if uint16(idx) == 65535:
                revert with 0, 17
            idx = uint16(idx) + 1
            s = s / 2
            t = sha3(mem[_198 + 32 len mem[_198]])
            continue 
        mem[0] = 0
        mem[32] = 1
        if t != stor1[0]:
            revert with 0, 'Unproven.'
        idx = 2
        s = 0
        s = 0
        while idx < 42:
            if idx >= mem[96]:
                revert with 0, 50
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= mem[96]:
                revert with 0, 50
            if idx > -3:
                revert with 0, 17
            idx = idx + 2
            s = uint8(mem[idx + 129]) >> 248
            s = uint8(mem[idx + 128]) >> 248
            continue 
        if not uint8(stor9.field_0):
            if not uint8(stor9.field_8):
                require ext_code.size(sub_baafbcfcAddress)
                call sub_baafbcfcAddress.0xc4415ccf with:
                     gas gas_remaining wei
                    args 0, stor3, 0, cd[4], 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xb1264a80: cd[4], 1
                emit 0x0: cd[4], 1
            else:
                if block.number < 1:
                    revert with 0, 17
                mem[mem[64] + 32] = block.timestamp
                mem[mem[64] + 64] = address(msg.sender)
                mem[mem[64] + 84] = block.hash(block.number - 1)
                _239 = mem[64]
                mem[mem[64]] = 84
                mem[64] = mem[64] + 116
                if not uint8(stor9.field_8):
                    revert with 0, 18
                require ext_code.size(sub_baafbcfcAddress)
                if not sha3(mem[_239 + 32 len mem[_239]]) % uint8(stor9.field_8):
                    call sub_baafbcfcAddress.0xc4415ccf with:
                         gas gas_remaining wei
                        args 0, stor3, 0, cd[4], 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xb1264a80: cd[4], 2
                    emit 0x0: cd[4], 2
                else:
                    call sub_baafbcfcAddress.0xc4415ccf with:
                         gas gas_remaining wei
                        args 0, stor3, 0, cd[4], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xb1264a80: cd[4], 1
                    emit 0x0: cd[4], 1
        else:
            require ext_code.size(stor3)
            staticcall stor3.maxSupply() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _227 = mem[_224]
            require mem[_224] == mem[_224 + 30 len 2]
            if mem[_224 + 30 len 2] < offset:
                revert with 0, 17
            require ext_code.size(stor3)
            staticcall stor3.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _247 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_247] >= uint32(uint16(_227) - offset):
                if not uint8(stor9.field_8):
                    require ext_code.size(sub_baafbcfcAddress)
                    call sub_baafbcfcAddress.0xc4415ccf with:
                         gas gas_remaining wei
                        args 0, stor3, 0, cd[4], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xb1264a80: cd[4], 1
                    emit 0x0: cd[4], 1
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = block.hash(block.number - 1)
                    _279 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if not uint8(stor9.field_8):
                        revert with 0, 18
                    require ext_code.size(sub_baafbcfcAddress)
                    if not sha3(mem[_279 + 32 len mem[_279]]) % uint8(stor9.field_8):
                        call sub_baafbcfcAddress.0xc4415ccf with:
                             gas gas_remaining wei
                            args 0, stor3, 0, cd[4], 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xb1264a80: cd[4], 2
                        emit 0x0: cd[4], 2
                    else:
                        call sub_baafbcfcAddress.0xc4415ccf with:
                             gas gas_remaining wei
                            args 0, stor3, 0, cd[4], 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xb1264a80: cd[4], 1
                        emit 0x0: cd[4], 1
            else:
                if block.number < 1:
                    revert with 0, 17
                mem[mem[64] + 32] = block.timestamp
                mem[mem[64] + 64] = address(msg.sender)
                mem[mem[64] + 84] = block.hash(block.number - 1)
                _265 = mem[64]
                mem[mem[64]] = 84
                mem[64] = mem[64] + 116
                if not uint8(stor9.field_0):
                    revert with 0, 18
                if not sha3(mem[_265 + 32 len mem[_265]]) % uint8(stor9.field_0):
                    require ext_code.size(stor3)
                    staticcall stor3.mintPrice() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= eth.balance(this.address):
                        if stor8 == -1:
                            revert with 0, 17
                        stor8++
                        require ext_code.size(sub_baafbcfcAddress)
                        call sub_baafbcfcAddress.0xc4415ccf with:
                             gas gas_remaining wei
                            args 3, stor3, address(this.address), stor8, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x3ac3b033 
                        emit 0x0 
                if not uint8(stor9.field_8):
                    require ext_code.size(sub_baafbcfcAddress)
                    call sub_baafbcfcAddress.0xc4415ccf with:
                         gas gas_remaining wei
                        args 0, stor3, 0, cd[4], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xb1264a80: cd[4], 1
                    emit 0x0: cd[4], 1
                else:
                    if block.number < 1:
                        revert with 0, 17
                    if not uint8(stor9.field_8):
                        revert with 0, 18
                    require ext_code.size(sub_baafbcfcAddress)
                    if not sha3(block.timestamp, msg.sender, block.hash(block.number - 1)) % uint8(stor9.field_8):
                        call sub_baafbcfcAddress.0xc4415ccf with:
                             gas gas_remaining wei
                            args 0, stor3, 0, cd[4], 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xb1264a80: cd[4], 2
                        emit 0x0: cd[4], 2
                    else:
                        call sub_baafbcfcAddress.0xc4415ccf with:
                             gas gas_remaining wei
                            args 0, stor3, 0, cd[4], 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xb1264a80: cd[4], 1
                        emit 0x0: cd[4], 1
}

function sub_bcbd6e9c(?) {
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 36).length)) + 97 < 96 or ceil32(ceil32(('cd', 36).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + 128] = 0
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 98 < 97 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 36).length)) + 97] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = cd[132] + 36
    s = ceil32(ceil32(('cd', 36).length)) + 129
    while idx < cd[132] + (32 * ('cd', 132).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if not uint8(stor9.field_16):
        revert with 0, 'Portalarc is disabled.'
    mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor7.length) + 130
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 98] = stor7.length
    if not stor7.length:
        if cd[100] >= stor7.length:
            revert with 0, 'Invalid token index.'
        if cd[100] >= stor7.length:
            revert with 0, 50
        if not mem[(32 * cd[100]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 142 len 20]:
            revert with 0, 'Invalid token address.'
        idx = 0
        s = 0
        while idx < stor5.length:
            mem[0] = 5
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(stor5[idx].field_0)
            staticcall stor5[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _214 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_214] <= 0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_214] > 0
                continue 
            if 1 and stor2[2][Mask(248, 8, cd[4])]:
                revert with 0, 'Redeemed.'
            mem[0] = cd[4] / 256
            mem[32] = sha3(2, 2)
            stor2[2][Mask(248, 8, cd[4])] = 1
            _241 = mem[64]
            mem[mem[64] + 32] = cd[4]
            _249 = mem[96]
            idx = 0
            while idx < _249:
                mem[idx + _241 + 64] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_241 + _249 + 64] = cd[68]
            mem[_241 + _249 + 96] = cd[100]
            if ceil32(_249) <= _249:
                _392 = mem[64]
                mem[mem[64]] = _241 + _249 + -mem[64] + 96
                mem[64] = _241 + _249 + 128
                _641 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = 0
                s = cd[4]
                t = sha3(mem[_392 + 32 len mem[_392]])
                while uint16(idx) < _641:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t
                        _690 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _641 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_690 + 32 len mem[_690]])
                        continue 
                    _666 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t
                    mem[mem[64] + 64] = _666
                    _687 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _641 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_687 + 32 len mem[_687]])
                    continue 
                mem[32] = 1
                if t != stor1[2]:
                    revert with 0, 'Unproven.'
                if not cd[100]:
                    if cd[68] > eth.balance(this.address):
                        revert with 0, 'Not enough arc liquidity.'
                    call msg.sender with:
                       value cd[68] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Transfer failed.'
                else:
                    if cd[100] >= stor7.length:
                        revert with 0, 50
                    mem[0] = 7
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor7[cd[100]].field_0)
                    staticcall stor7[cd[100]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _742 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_742] < cd[68]:
                        revert with 0, 'Not enough tokens.'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[68]
                    require ext_code.size(stor7[cd[100]].field_0)
                    call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, cd[68]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _787 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_787] == bool(mem[_787])
            else:
                _401 = mem[64]
                mem[mem[64]] = _241 + _249 + -mem[64] + 96
                mem[64] = _241 + _249 + 128
                _642 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = 0
                s = cd[4]
                t = sha3(mem[_401 + 32 len mem[_401]])
                while uint16(idx) < _642:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t
                        _696 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _642 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_696 + 32 len mem[_696]])
                        continue 
                    _671 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t
                    mem[mem[64] + 64] = _671
                    _693 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _642 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_693 + 32 len mem[_693]])
                    continue 
                mem[32] = 1
                if t != stor1[2]:
                    revert with 0, 'Unproven.'
                if not cd[100]:
                    if cd[68] > eth.balance(this.address):
                        revert with 0, 'Not enough arc liquidity.'
                    call msg.sender with:
                       value cd[68] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Transfer failed.'
                else:
                    if cd[100] >= stor7.length:
                        revert with 0, 50
                    mem[0] = 7
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor7[cd[100]].field_0)
                    staticcall stor7[cd[100]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _743 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_743] < cd[68]:
                        revert with 0, 'Not enough tokens.'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[68]
                    require ext_code.size(stor7[cd[100]].field_0)
                    call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, cd[68]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _788 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_788] == bool(mem[_788])
        if not s:
            revert with 0, 'You cannot be trusted.'
        if 1 and stor2[2][Mask(248, 8, cd[4])]:
            revert with 0, 'Redeemed.'
        mem[0] = cd[4] / 256
        mem[32] = sha3(2, 2)
        stor2[2][Mask(248, 8, cd[4])] = 1
        mem[mem[64] + 32] = cd[4]
        _225 = mem[96]
        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 64] = cd[68]
        mem[mem[64] + mem[96] + 96] = cd[100]
        if ceil32(mem[96]) <= mem[96]:
            _389 = mem[64]
            mem[mem[64]] = mem[96] + 96
            mem[64] = mem[64] + _225 + 128
            _639 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
            idx = 0
            s = cd[4]
            t = 0
            while uint16(idx) < _639:
                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                    revert with 0, 50
                if 1 == bool(s):
                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 64] = t + sha3(mem[_389 + 32 len mem[_389]])
                    _678 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _639 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_678 + 32 len mem[_678]])
                    continue 
                _656 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 32] = t + sha3(mem[_389 + 32 len mem[_389]])
                mem[mem[64] + 64] = _656
                _675 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                _639 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_675 + 32 len mem[_675]])
                continue 
            mem[32] = 1
            if t != stor1[2]:
                revert with 0, 'Unproven.'
            if not cd[100]:
                if cd[68] > eth.balance(this.address):
                    revert with 0, 'Not enough arc liquidity.'
                call msg.sender with:
                   value cd[68] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Transfer failed.'
            else:
                if cd[100] >= stor7.length:
                    revert with 0, 50
                mem[0] = 7
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor7[cd[100]].field_0)
                staticcall stor7[cd[100]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _740 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_740] < cd[68]:
                    revert with 0, 'Not enough tokens.'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = cd[68]
                require ext_code.size(stor7[cd[100]].field_0)
                call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, cd[68]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _785 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_785] == bool(mem[_785])
        else:
            _397 = mem[64]
            mem[mem[64]] = mem[96] + 96
            mem[64] = mem[64] + _225 + 128
            _640 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
            idx = 0
            s = cd[4]
            t = 0
            while uint16(idx) < _640:
                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                    revert with 0, 50
                if 1 == bool(s):
                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 64] = t + sha3(mem[_397 + 32 len mem[_397]])
                    _684 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _640 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_684 + 32 len mem[_684]])
                    continue 
                _661 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 32] = t + sha3(mem[_397 + 32 len mem[_397]])
                mem[mem[64] + 64] = _661
                _681 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                _640 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_681 + 32 len mem[_681]])
                continue 
            mem[32] = 1
            if t != stor1[2]:
                revert with 0, 'Unproven.'
            if not cd[100]:
                if cd[68] > eth.balance(this.address):
                    revert with 0, 'Not enough arc liquidity.'
                call msg.sender with:
                   value cd[68] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Transfer failed.'
            else:
                if cd[100] >= stor7.length:
                    revert with 0, 50
                mem[0] = 7
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor7[cd[100]].field_0)
                staticcall stor7[cd[100]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _741 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_741] < cd[68]:
                    revert with 0, 'Not enough tokens.'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = cd[68]
                require ext_code.size(stor7[cd[100]].field_0)
                call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, cd[68]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _786 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_786] == bool(mem[_786])
    else:
        mem[0] = 7
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 130] = address(stor7.field_0)
        idx = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 130
        s = 0
        while ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor7.length) + 98 > idx:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if cd[100] >= stor7.length:
            revert with 0, 'Invalid token index.'
        if cd[100] >= stor7.length:
            revert with 0, 50
        if not mem[(32 * cd[100]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 142 len 20]:
            revert with 0, 'Invalid token address.'
        idx = 0
        s = 0
        while idx < stor5.length:
            mem[0] = 5
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(stor5[idx].field_0)
            staticcall stor5[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _700 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_700] <= 0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_700] > 0
                continue 
            if 1 and stor2[2][Mask(248, 8, cd[4])]:
                revert with 0, 'Redeemed.'
            mem[0] = cd[4] / 256
            mem[32] = sha3(2, 2)
            stor2[2][Mask(248, 8, cd[4])] = 1
            _811 = mem[64]
            mem[mem[64] + 32] = cd[4]
            _819 = mem[96]
            idx = 0
            while idx < _819:
                mem[idx + _811 + 64] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[_811 + _819 + 64] = cd[68]
            mem[_811 + _819 + 96] = cd[100]
            if ceil32(_819) <= _819:
                _961 = mem[64]
                mem[mem[64]] = _811 + _819 + -mem[64] + 96
                mem[64] = _811 + _819 + 128
                _1112 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = 0
                s = cd[4]
                t = sha3(mem[_961 + 32 len mem[_961]])
                while uint16(idx) < _1112:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t
                        _1157 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _1112 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_1157 + 32 len mem[_1157]])
                        continue 
                    _1133 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t
                    mem[mem[64] + 64] = _1133
                    _1154 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _1112 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_1154 + 32 len mem[_1154]])
                    continue 
                mem[32] = 1
                if t != stor1[2]:
                    revert with 0, 'Unproven.'
                if not cd[100]:
                    if cd[68] > eth.balance(this.address):
                        revert with 0, 'Not enough arc liquidity.'
                    call msg.sender with:
                       value cd[68] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Transfer failed.'
                else:
                    if cd[100] >= stor7.length:
                        revert with 0, 50
                    mem[0] = 7
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor7[cd[100]].field_0)
                    staticcall stor7[cd[100]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1204 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1204] < cd[68]:
                        revert with 0, 'Not enough tokens.'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[68]
                    require ext_code.size(stor7[cd[100]].field_0)
                    call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, cd[68]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1244 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1244] == bool(mem[_1244])
            else:
                _969 = mem[64]
                mem[mem[64]] = _811 + _819 + -mem[64] + 96
                mem[64] = _811 + _819 + 128
                _1113 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = 0
                s = cd[4]
                t = sha3(mem[_969 + 32 len mem[_969]])
                while uint16(idx) < _1113:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t
                        _1163 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _1113 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_1163 + 32 len mem[_1163]])
                        continue 
                    _1138 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t
                    mem[mem[64] + 64] = _1138
                    _1160 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _1113 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_1160 + 32 len mem[_1160]])
                    continue 
                mem[32] = 1
                if t != stor1[2]:
                    revert with 0, 'Unproven.'
                if not cd[100]:
                    if cd[68] > eth.balance(this.address):
                        revert with 0, 'Not enough arc liquidity.'
                    call msg.sender with:
                       value cd[68] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Transfer failed.'
                else:
                    if cd[100] >= stor7.length:
                        revert with 0, 50
                    mem[0] = 7
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor7[cd[100]].field_0)
                    staticcall stor7[cd[100]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1205 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1205] < cd[68]:
                        revert with 0, 'Not enough tokens.'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[68]
                    require ext_code.size(stor7[cd[100]].field_0)
                    call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, cd[68]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1245 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1245] == bool(mem[_1245])
        if not s:
            revert with 0, 'You cannot be trusted.'
        if 1 and stor2[2][Mask(248, 8, cd[4])]:
            revert with 0, 'Redeemed.'
        mem[0] = cd[4] / 256
        mem[32] = sha3(2, 2)
        stor2[2][Mask(248, 8, cd[4])] = 1
        mem[mem[64] + 32] = cd[4]
        _795 = mem[96]
        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 64] = cd[68]
        mem[mem[64] + mem[96] + 96] = cd[100]
        if ceil32(mem[96]) <= mem[96]:
            _958 = mem[64]
            mem[mem[64]] = mem[96] + 96
            mem[64] = mem[64] + _795 + 128
            _1110 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
            idx = 0
            s = cd[4]
            t = 0
            while uint16(idx) < _1110:
                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                    revert with 0, 50
                if 1 == bool(s):
                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 64] = t + sha3(mem[_958 + 32 len mem[_958]])
                    _1145 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _1110 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_1145 + 32 len mem[_1145]])
                    continue 
                _1123 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 32] = t + sha3(mem[_958 + 32 len mem[_958]])
                mem[mem[64] + 64] = _1123
                _1142 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                _1110 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_1142 + 32 len mem[_1142]])
                continue 
            mem[32] = 1
            if t != stor1[2]:
                revert with 0, 'Unproven.'
            if not cd[100]:
                if cd[68] > eth.balance(this.address):
                    revert with 0, 'Not enough arc liquidity.'
                call msg.sender with:
                   value cd[68] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Transfer failed.'
            else:
                if cd[100] >= stor7.length:
                    revert with 0, 50
                mem[0] = 7
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor7[cd[100]].field_0)
                staticcall stor7[cd[100]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1202 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1202] < cd[68]:
                    revert with 0, 'Not enough tokens.'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = cd[68]
                require ext_code.size(stor7[cd[100]].field_0)
                call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, cd[68]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1242 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1242] == bool(mem[_1242])
        else:
            _965 = mem[64]
            mem[mem[64]] = mem[96] + 96
            mem[64] = mem[64] + _795 + 128
            _1111 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
            idx = 0
            s = cd[4]
            t = 0
            while uint16(idx) < _1111:
                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                    revert with 0, 50
                if 1 == bool(s):
                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 64] = t + sha3(mem[_965 + 32 len mem[_965]])
                    _1151 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _1111 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_1151 + 32 len mem[_1151]])
                    continue 
                _1128 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                mem[mem[64] + 32] = t + sha3(mem[_965 + 32 len mem[_965]])
                mem[mem[64] + 64] = _1128
                _1148 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if uint16(idx) == 65535:
                    revert with 0, 17
                _1111 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = uint16(idx) + 1
                s = s / 2
                t = sha3(mem[_1148 + 32 len mem[_1148]])
                continue 
            mem[32] = 1
            if t != stor1[2]:
                revert with 0, 'Unproven.'
            if not cd[100]:
                if cd[68] > eth.balance(this.address):
                    revert with 0, 'Not enough arc liquidity.'
                call msg.sender with:
                   value cd[68] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Transfer failed.'
            else:
                if cd[100] >= stor7.length:
                    revert with 0, 50
                mem[0] = 7
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor7[cd[100]].field_0)
                staticcall stor7[cd[100]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1203 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1203] < cd[68]:
                    revert with 0, 'Not enough tokens.'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = cd[68]
                require ext_code.size(stor7[cd[100]].field_0)
                call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, cd[68]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1243 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1243] == bool(mem[_1243])
}

function sub_014dea4d(?) {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 36).length)) + 97 < 96 or ceil32(ceil32(('cd', 36).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + 128] = 0
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 98 < 97 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 36).length)) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = ceil32(ceil32(('cd', 36).length)) + 129
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if cd[68] <= 0:
        revert with 0, 'Invalid token.'
    if not uint8(stor9.field_16):
        revert with 0, 'Portalarc is disabled.'
    mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 98] = stor6.length
    if not stor6.length:
        if cd[68] >= stor6.length:
            revert with 0, 'Invalid token index.'
        if cd[68] >= stor6.length:
            revert with 0, 50
        if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 142 len 20]:
            revert with 0, 'Invalid token address.'
        idx = 0
        s = 0
        while idx < stor5.length:
            mem[0] = 5
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(stor5[idx].field_0)
            staticcall stor5[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _876 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_876] <= 0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_876] > 0
                continue 
            if cd[68]:
                if cd[68] >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _928 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _934 = mem[_928]
                if mem[_928] <= 0:
                    revert with 0, 'None remain.'
                if 1 and stor2[1][Mask(248, 8, cd[4])]:
                    revert with 0, 'Redeemed.'
                mem[0] = cd[4] / 256
                mem[32] = sha3(1, 2)
                stor2[1][Mask(248, 8, cd[4])] = 1
                _1032 = mem[64]
                mem[mem[64] + 32] = cd[4]
                _1048 = mem[96]
                idx = 0
                while idx < _1048:
                    mem[idx + _1032 + 64] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_1032 + _1048 + 64] = cd[68]
                mem[_1032 + _1048 + 96] = 0
                if ceil32(_1048) <= _1048:
                    _1684 = mem[64]
                    mem[mem[64]] = _1032 + _1048 + -mem[64] + 96
                    mem[64] = _1032 + _1048 + 128
                    _2549 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = sha3(mem[_1684 + 32 len mem[_1684]])
                    while uint16(idx) < _2549:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t
                            _2704 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2549 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2704 + 32 len mem[_2704]])
                            continue 
                        _2618 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _2618
                        _2701 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2549 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2701 + 32 len mem[_2701]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = block.hash(block.number - 1)
                    _2851 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if not _934:
                        revert with 0, 18
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), sha3(mem[_2851 + 32 len mem[_2851]]) % _934
                else:
                    _1712 = mem[64]
                    mem[mem[64]] = _1032 + _1048 + -mem[64] + 96
                    mem[64] = _1032 + _1048 + 128
                    _2550 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = sha3(mem[_1712 + 32 len mem[_1712]])
                    while uint16(idx) < _2550:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t
                            _2710 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2550 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2710 + 32 len mem[_2710]])
                            continue 
                        _2623 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _2623
                        _2707 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2550 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2707 + 32 len mem[_2707]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = block.hash(block.number - 1)
                    _2854 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if not _934:
                        revert with 0, 18
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), sha3(mem[_2854 + 32 len mem[_2854]]) % _934
            else:
                if block.timestamp < sub_e1ac7084:
                    revert with 0, 'Rescue portal closed.'
                if cd[68] >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _931 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _938 = mem[_931]
                if mem[_931] <= 0:
                    revert with 0, 'None remain.'
                if 1 and stor2[1][Mask(248, 8, cd[4])]:
                    revert with 0, 'Redeemed.'
                mem[0] = cd[4] / 256
                mem[32] = sha3(1, 2)
                stor2[1][Mask(248, 8, cd[4])] = 1
                _1049 = mem[64]
                mem[mem[64] + 32] = cd[4]
                _1079 = mem[96]
                idx = 0
                while idx < _1079:
                    mem[idx + _1049 + 64] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_1049 + _1079 + 64] = cd[68]
                mem[_1049 + _1079 + 96] = 0
                if ceil32(_1079) <= _1079:
                    _1687 = mem[64]
                    mem[mem[64]] = _1049 + _1079 + -mem[64] + 96
                    mem[64] = _1049 + _1079 + 128
                    _2551 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = sha3(mem[_1687 + 32 len mem[_1687]])
                    while uint16(idx) < _2551:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t
                            _2716 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2551 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2716 + 32 len mem[_2716]])
                            continue 
                        _2628 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _2628
                        _2713 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2551 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2713 + 32 len mem[_2713]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = block.hash(block.number - 1)
                    _2857 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if not _938:
                        revert with 0, 18
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), sha3(mem[_2857 + 32 len mem[_2857]]) % _938
                else:
                    _1716 = mem[64]
                    mem[mem[64]] = _1049 + _1079 + -mem[64] + 96
                    mem[64] = _1049 + _1079 + 128
                    _2552 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = sha3(mem[_1716 + 32 len mem[_1716]])
                    while uint16(idx) < _2552:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t
                            _2722 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2552 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2722 + 32 len mem[_2722]])
                            continue 
                        _2633 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _2633
                        _2719 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2552 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2719 + 32 len mem[_2719]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = block.hash(block.number - 1)
                    _2860 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if not _938:
                        revert with 0, 18
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), sha3(mem[_2860 + 32 len mem[_2860]]) % _938
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor6[cd[68]].field_0)
            call stor6[cd[68]].field_0.0x42842e0e with:
                 gas gas_remaining wei
                args this.address, msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 == cd[68]:
                require ext_code.size(stor3)
                staticcall stor3.0x24ebafb3 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xfeec756c with:
                     gas gas_remaining wei
                    args msg.sender
            emit 0xc4feb85e: ext_call.return_data[0], msg.sender, stor6[cd[68]].field_0
        if not s:
            revert with 0, 'You cannot be trusted.'
        if cd[68]:
            if cd[68] >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6[cd[68]].field_0)
            staticcall stor6[cd[68]].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _891 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _897 = mem[_891]
            if mem[_891] <= 0:
                revert with 0, 'None remain.'
            if 1 and stor2[1][Mask(248, 8, cd[4])]:
                revert with 0, 'Redeemed.'
            mem[0] = cd[4] / 256
            mem[32] = sha3(1, 2)
            stor2[1][Mask(248, 8, cd[4])] = 1
            mem[mem[64] + 32] = cd[4]
            _975 = mem[96]
            mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 64] = cd[68]
            mem[mem[64] + mem[96] + 96] = 0
            if ceil32(mem[96]) <= mem[96]:
                _1678 = mem[64]
                mem[mem[64]] = mem[96] + 96
                mem[64] = mem[64] + _975 + 128
                _2545 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < _2545:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[_1678 + 32 len mem[_1678]])
                        _2680 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2545 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2680 + 32 len mem[_2680]])
                        continue 
                    _2598 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[_1678 + 32 len mem[_1678]])
                    mem[mem[64] + 64] = _2598
                    _2677 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _2545 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_2677 + 32 len mem[_2677]])
                    continue 
                mem[0] = 1
                mem[32] = 1
                if t != stor1[1]:
                    revert with 0, 'Unproven.'
                if block.number < 1:
                    revert with 0, 17
                mem[mem[64] + 32] = block.timestamp
                mem[mem[64] + 64] = address(msg.sender)
                mem[mem[64] + 84] = block.hash(block.number - 1)
                _2839 = mem[64]
                mem[mem[64]] = 84
                mem[64] = mem[64] + 116
                if not _897:
                    revert with 0, 18
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(this.address), sha3(mem[_2839 + 32 len mem[_2839]]) % _897
            else:
                _1704 = mem[64]
                mem[mem[64]] = mem[96] + 96
                mem[64] = mem[64] + _975 + 128
                _2546 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < _2546:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[_1704 + 32 len mem[_1704]])
                        _2686 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2546 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2686 + 32 len mem[_2686]])
                        continue 
                    _2603 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[_1704 + 32 len mem[_1704]])
                    mem[mem[64] + 64] = _2603
                    _2683 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _2546 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_2683 + 32 len mem[_2683]])
                    continue 
                mem[0] = 1
                mem[32] = 1
                if t != stor1[1]:
                    revert with 0, 'Unproven.'
                if block.number < 1:
                    revert with 0, 17
                mem[mem[64] + 32] = block.timestamp
                mem[mem[64] + 64] = address(msg.sender)
                mem[mem[64] + 84] = block.hash(block.number - 1)
                _2842 = mem[64]
                mem[mem[64]] = 84
                mem[64] = mem[64] + 116
                if not _897:
                    revert with 0, 18
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(this.address), sha3(mem[_2842 + 32 len mem[_2842]]) % _897
        else:
            if block.timestamp < sub_e1ac7084:
                revert with 0, 'Rescue portal closed.'
            if cd[68] >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6[cd[68]].field_0)
            staticcall stor6[cd[68]].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _895 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _899 = mem[_895]
            if mem[_895] <= 0:
                revert with 0, 'None remain.'
            if 1 and stor2[1][Mask(248, 8, cd[4])]:
                revert with 0, 'Redeemed.'
            mem[0] = cd[4] / 256
            mem[32] = sha3(1, 2)
            stor2[1][Mask(248, 8, cd[4])] = 1
            mem[mem[64] + 32] = cd[4]
            _979 = mem[96]
            mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 64] = cd[68]
            mem[mem[64] + mem[96] + 96] = 0
            if ceil32(mem[96]) <= mem[96]:
                _1681 = mem[64]
                mem[mem[64]] = mem[96] + 96
                mem[64] = mem[64] + _979 + 128
                _2547 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < _2547:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[_1681 + 32 len mem[_1681]])
                        _2692 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2547 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2692 + 32 len mem[_2692]])
                        continue 
                    _2608 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[_1681 + 32 len mem[_1681]])
                    mem[mem[64] + 64] = _2608
                    _2689 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _2547 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_2689 + 32 len mem[_2689]])
                    continue 
                mem[0] = 1
                mem[32] = 1
                if t != stor1[1]:
                    revert with 0, 'Unproven.'
                if block.number < 1:
                    revert with 0, 17
                mem[mem[64] + 32] = block.timestamp
                mem[mem[64] + 64] = address(msg.sender)
                mem[mem[64] + 84] = block.hash(block.number - 1)
                _2845 = mem[64]
                mem[mem[64]] = 84
                mem[64] = mem[64] + 116
                if not _899:
                    revert with 0, 18
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(this.address), sha3(mem[_2845 + 32 len mem[_2845]]) % _899
            else:
                _1708 = mem[64]
                mem[mem[64]] = mem[96] + 96
                mem[64] = mem[64] + _979 + 128
                _2548 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < _2548:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[_1708 + 32 len mem[_1708]])
                        _2698 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2548 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2698 + 32 len mem[_2698]])
                        continue 
                    _2613 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[_1708 + 32 len mem[_1708]])
                    mem[mem[64] + 64] = _2613
                    _2695 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _2548 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_2695 + 32 len mem[_2695]])
                    continue 
                mem[0] = 1
                mem[32] = 1
                if t != stor1[1]:
                    revert with 0, 'Unproven.'
                if block.number < 1:
                    revert with 0, 17
                mem[mem[64] + 32] = block.timestamp
                mem[mem[64] + 64] = address(msg.sender)
                mem[mem[64] + 84] = block.hash(block.number - 1)
                _2848 = mem[64]
                mem[mem[64]] = 84
                mem[64] = mem[64] + 116
                if not _899:
                    revert with 0, 18
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(this.address), sha3(mem[_2848 + 32 len mem[_2848]]) % _899
    else:
        mem[0] = 6
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 130] = address(stor6.field_0)
        if (32 * stor6.length) + 32 <= 64:
            if cd[68] >= stor6.length:
                revert with 0, 'Invalid token index.'
            if cd[68] >= stor6.length:
                revert with 0, 50
            if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 142 len 20]:
                revert with 0, 'Invalid token address.'
            idx = 0
            s = 0
            while idx < stor5.length:
                mem[0] = 5
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(stor5[idx].field_0)
                staticcall stor5[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _882 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_882] <= 0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_882] > 0
                    continue 
                if cd[68]:
                    if cd[68] >= stor6.length:
                        revert with 0, 50
                    mem[0] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _930 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _936 = mem[_930]
                    if mem[_930] <= 0:
                        revert with 0, 'None remain.'
                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                        revert with 0, 'Redeemed.'
                    mem[0] = cd[4] / 256
                    mem[32] = sha3(1, 2)
                    stor2[1][Mask(248, 8, cd[4])] = 1
                    _1037 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    _1059 = mem[96]
                    idx = 0
                    while idx < _1059:
                        mem[idx + _1037 + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    mem[_1037 + _1059 + 64] = cd[68]
                    mem[_1037 + _1059 + 96] = 0
                    if ceil32(_1059) <= _1059:
                        _1697 = mem[64]
                        mem[mem[64]] = _1037 + _1059 + -mem[64] + 96
                        mem[64] = _1037 + _1059 + 128
                        _2557 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_1697 + 32 len mem[_1697]])
                        while uint16(idx) < _2557:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _2758 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _2557 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_2758 + 32 len mem[_2758]])
                                continue 
                            _2658 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _2658
                            _2755 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2557 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2755 + 32 len mem[_2755]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        if block.number < 1:
                            revert with 0, 17
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        mem[mem[64] + 84] = block.hash(block.number - 1)
                        _2880 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        if not _936:
                            revert with 0, 18
                        require ext_code.size(stor6[cd[68]].field_0)
                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(this.address), sha3(mem[_2880 + 32 len mem[_2880]]) % _936
                    else:
                        _1729 = mem[64]
                        mem[mem[64]] = _1037 + _1059 + -mem[64] + 96
                        mem[64] = _1037 + _1059 + 128
                        _2558 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_1729 + 32 len mem[_1729]])
                        while uint16(idx) < _2558:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _2764 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _2558 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_2764 + 32 len mem[_2764]])
                                continue 
                            _2663 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _2663
                            _2761 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2558 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2761 + 32 len mem[_2761]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        if block.number < 1:
                            revert with 0, 17
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        mem[mem[64] + 84] = block.hash(block.number - 1)
                        _2883 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        if not _936:
                            revert with 0, 18
                        require ext_code.size(stor6[cd[68]].field_0)
                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(this.address), sha3(mem[_2883 + 32 len mem[_2883]]) % _936
                else:
                    if block.timestamp < sub_e1ac7084:
                        revert with 0, 'Rescue portal closed.'
                    if cd[68] >= stor6.length:
                        revert with 0, 50
                    mem[0] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _932 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _940 = mem[_932]
                    if mem[_932] <= 0:
                        revert with 0, 'None remain.'
                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                        revert with 0, 'Redeemed.'
                    mem[0] = cd[4] / 256
                    mem[32] = sha3(1, 2)
                    stor2[1][Mask(248, 8, cd[4])] = 1
                    _1060 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    _1098 = mem[96]
                    idx = 0
                    while idx < _1098:
                        mem[idx + _1060 + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    mem[_1060 + _1098 + 64] = cd[68]
                    mem[_1060 + _1098 + 96] = 0
                    if ceil32(_1098) <= _1098:
                        _1700 = mem[64]
                        mem[mem[64]] = _1060 + _1098 + -mem[64] + 96
                        mem[64] = _1060 + _1098 + 128
                        _2559 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_1700 + 32 len mem[_1700]])
                        while uint16(idx) < _2559:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _2770 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _2559 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_2770 + 32 len mem[_2770]])
                                continue 
                            _2668 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _2668
                            _2767 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2559 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2767 + 32 len mem[_2767]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        if block.number < 1:
                            revert with 0, 17
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        mem[mem[64] + 84] = block.hash(block.number - 1)
                        _2886 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        if not _940:
                            revert with 0, 18
                        require ext_code.size(stor6[cd[68]].field_0)
                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(this.address), sha3(mem[_2886 + 32 len mem[_2886]]) % _940
                    else:
                        _1733 = mem[64]
                        mem[mem[64]] = _1060 + _1098 + -mem[64] + 96
                        mem[64] = _1060 + _1098 + 128
                        _2560 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_1733 + 32 len mem[_1733]])
                        while uint16(idx) < _2560:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _2776 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _2560 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_2776 + 32 len mem[_2776]])
                                continue 
                            _2673 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _2673
                            _2773 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2560 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2773 + 32 len mem[_2773]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        if block.number < 1:
                            revert with 0, 17
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        mem[mem[64] + 84] = block.hash(block.number - 1)
                        _2889 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        if not _940:
                            revert with 0, 18
                        require ext_code.size(stor6[cd[68]].field_0)
                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(this.address), sha3(mem[_2889 + 32 len mem[_2889]]) % _940
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor6[cd[68]].field_0)
                call stor6[cd[68]].field_0.0x42842e0e with:
                     gas gas_remaining wei
                    args this.address, msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 == cd[68]:
                    require ext_code.size(stor3)
                    staticcall stor3.0x24ebafb3 with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xfeec756c with:
                         gas gas_remaining wei
                        args msg.sender
                emit 0xc4feb85e: ext_call.return_data[0], msg.sender, stor6[cd[68]].field_0
            if not s:
                revert with 0, 'You cannot be trusted.'
            if cd[68]:
                if cd[68] >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _893 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _898 = mem[_893]
                if mem[_893] <= 0:
                    revert with 0, 'None remain.'
                if 1 and stor2[1][Mask(248, 8, cd[4])]:
                    revert with 0, 'Redeemed.'
                mem[0] = cd[4] / 256
                mem[32] = sha3(1, 2)
                stor2[1][Mask(248, 8, cd[4])] = 1
                mem[mem[64] + 32] = cd[4]
                _977 = mem[96]
                mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 64] = cd[68]
                mem[mem[64] + mem[96] + 96] = 0
                if ceil32(mem[96]) <= mem[96]:
                    _1691 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _977 + 128
                    _2553 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _2553:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_1691 + 32 len mem[_1691]])
                            _2734 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2553 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2734 + 32 len mem[_2734]])
                            continue 
                        _2638 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_1691 + 32 len mem[_1691]])
                        mem[mem[64] + 64] = _2638
                        _2731 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2553 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2731 + 32 len mem[_2731]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = block.hash(block.number - 1)
                    _2868 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if not _898:
                        revert with 0, 18
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), sha3(mem[_2868 + 32 len mem[_2868]]) % _898
                else:
                    _1721 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _977 + 128
                    _2554 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _2554:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_1721 + 32 len mem[_1721]])
                            _2740 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2554 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2740 + 32 len mem[_2740]])
                            continue 
                        _2643 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_1721 + 32 len mem[_1721]])
                        mem[mem[64] + 64] = _2643
                        _2737 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2554 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2737 + 32 len mem[_2737]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = block.hash(block.number - 1)
                    _2871 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if not _898:
                        revert with 0, 18
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), sha3(mem[_2871 + 32 len mem[_2871]]) % _898
            else:
                if block.timestamp < sub_e1ac7084:
                    revert with 0, 'Rescue portal closed.'
                if cd[68] >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _896 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _900 = mem[_896]
                if mem[_896] <= 0:
                    revert with 0, 'None remain.'
                if 1 and stor2[1][Mask(248, 8, cd[4])]:
                    revert with 0, 'Redeemed.'
                mem[0] = cd[4] / 256
                mem[32] = sha3(1, 2)
                stor2[1][Mask(248, 8, cd[4])] = 1
                mem[mem[64] + 32] = cd[4]
                _981 = mem[96]
                mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 64] = cd[68]
                mem[mem[64] + mem[96] + 96] = 0
                if ceil32(mem[96]) <= mem[96]:
                    _1694 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _981 + 128
                    _2555 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _2555:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_1694 + 32 len mem[_1694]])
                            _2746 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2555 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2746 + 32 len mem[_2746]])
                            continue 
                        _2648 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_1694 + 32 len mem[_1694]])
                        mem[mem[64] + 64] = _2648
                        _2743 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2555 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2743 + 32 len mem[_2743]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = block.hash(block.number - 1)
                    _2874 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if not _900:
                        revert with 0, 18
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), sha3(mem[_2874 + 32 len mem[_2874]]) % _900
                else:
                    _1725 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _981 + 128
                    _2556 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _2556:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_1725 + 32 len mem[_1725]])
                            _2752 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2556 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2752 + 32 len mem[_2752]])
                            continue 
                        _2653 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_1725 + 32 len mem[_1725]])
                        mem[mem[64] + 64] = _2653
                        _2749 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2556 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2749 + 32 len mem[_2749]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = block.hash(block.number - 1)
                    _2877 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if not _900:
                        revert with 0, 18
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), sha3(mem[_2877 + 32 len mem[_2877]]) % _900
        else:
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 162] = address(stor6.field_256)
            idx = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 162
            s = 1
            while ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 98 > idx:
                mem[idx + 32] = stor6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if cd[68] >= stor6.length:
                revert with 0, 'Invalid token index.'
            if cd[68] >= stor6.length:
                revert with 0, 50
            if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 142 len 20]:
                revert with 0, 'Invalid token address.'
            idx = 0
            s = 0
            while idx < stor5.length:
                mem[0] = 5
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(stor5[idx].field_0)
                staticcall stor5[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2730 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2730] <= 0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_2730] > 0
                    continue 
                if cd[68]:
                    if cd[68] >= stor6.length:
                        revert with 0, 50
                    mem[0] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2898 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2917 = mem[_2898]
                    if mem[_2898] <= 0:
                        revert with 0, 'None remain.'
                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                        revert with 0, 'Redeemed.'
                    mem[0] = cd[4] / 256
                    mem[32] = sha3(1, 2)
                    stor2[1][Mask(248, 8, cd[4])] = 1
                    _3167 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    _3186 = mem[96]
                    idx = 0
                    while idx < _3186:
                        mem[idx + _3167 + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    mem[_3167 + _3186 + 64] = cd[68]
                    mem[_3167 + _3186 + 96] = 0
                    if ceil32(_3186) <= _3186:
                        _3566 = mem[64]
                        mem[mem[64]] = _3167 + _3186 + -mem[64] + 96
                        mem[64] = _3167 + _3186 + 128
                        _3892 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_3566 + 32 len mem[_3566]])
                        while uint16(idx) < _3892:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _3979 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _3892 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_3979 + 32 len mem[_3979]])
                                continue 
                            _3933 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _3933
                            _3976 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3892 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3976 + 32 len mem[_3976]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        if block.number < 1:
                            revert with 0, 17
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        mem[mem[64] + 84] = block.hash(block.number - 1)
                        _4036 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        if not _2917:
                            revert with 0, 18
                        require ext_code.size(stor6[cd[68]].field_0)
                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(this.address), sha3(mem[_4036 + 32 len mem[_4036]]) % _2917
                    else:
                        _3581 = mem[64]
                        mem[mem[64]] = _3167 + _3186 + -mem[64] + 96
                        mem[64] = _3167 + _3186 + 128
                        _3893 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_3581 + 32 len mem[_3581]])
                        while uint16(idx) < _3893:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _3985 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _3893 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_3985 + 32 len mem[_3985]])
                                continue 
                            _3938 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _3938
                            _3982 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3893 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3982 + 32 len mem[_3982]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        if block.number < 1:
                            revert with 0, 17
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        mem[mem[64] + 84] = block.hash(block.number - 1)
                        _4039 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        if not _2917:
                            revert with 0, 18
                        require ext_code.size(stor6[cd[68]].field_0)
                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(this.address), sha3(mem[_4039 + 32 len mem[_4039]]) % _2917
                else:
                    if block.timestamp < sub_e1ac7084:
                        revert with 0, 'Rescue portal closed.'
                    if cd[68] >= stor6.length:
                        revert with 0, 50
                    mem[0] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2899 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2935 = mem[_2899]
                    if mem[_2899] <= 0:
                        revert with 0, 'None remain.'
                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                        revert with 0, 'Redeemed.'
                    mem[0] = cd[4] / 256
                    mem[32] = sha3(1, 2)
                    stor2[1][Mask(248, 8, cd[4])] = 1
                    _3187 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    _3206 = mem[96]
                    idx = 0
                    while idx < _3206:
                        mem[idx + _3187 + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    mem[_3187 + _3206 + 64] = cd[68]
                    mem[_3187 + _3206 + 96] = 0
                    if ceil32(_3206) <= _3206:
                        _3569 = mem[64]
                        mem[mem[64]] = _3187 + _3206 + -mem[64] + 96
                        mem[64] = _3187 + _3206 + 128
                        _3894 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_3569 + 32 len mem[_3569]])
                        while uint16(idx) < _3894:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _3991 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _3894 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_3991 + 32 len mem[_3991]])
                                continue 
                            _3943 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _3943
                            _3988 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3894 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3988 + 32 len mem[_3988]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        if block.number < 1:
                            revert with 0, 17
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        mem[mem[64] + 84] = block.hash(block.number - 1)
                        _4042 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        if not _2935:
                            revert with 0, 18
                        require ext_code.size(stor6[cd[68]].field_0)
                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(this.address), sha3(mem[_4042 + 32 len mem[_4042]]) % _2935
                    else:
                        _3585 = mem[64]
                        mem[mem[64]] = _3187 + _3206 + -mem[64] + 96
                        mem[64] = _3187 + _3206 + 128
                        _3895 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_3585 + 32 len mem[_3585]])
                        while uint16(idx) < _3895:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _3997 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _3895 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_3997 + 32 len mem[_3997]])
                                continue 
                            _3948 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _3948
                            _3994 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3895 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3994 + 32 len mem[_3994]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        if block.number < 1:
                            revert with 0, 17
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        mem[mem[64] + 84] = block.hash(block.number - 1)
                        _4045 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        if not _2935:
                            revert with 0, 18
                        require ext_code.size(stor6[cd[68]].field_0)
                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(this.address), sha3(mem[_4045 + 32 len mem[_4045]]) % _2935
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor6[cd[68]].field_0)
                call stor6[cd[68]].field_0.0x42842e0e with:
                     gas gas_remaining wei
                    args this.address, msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 == cd[68]:
                    require ext_code.size(stor3)
                    staticcall stor3.0x24ebafb3 with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xfeec756c with:
                         gas gas_remaining wei
                        args msg.sender
                emit 0xc4feb85e: ext_call.return_data[0], msg.sender, stor6[cd[68]].field_0
            if not s:
                revert with 0, 'You cannot be trusted.'
            if cd[68]:
                if cd[68] >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2807 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2818 = mem[_2807]
                if mem[_2807] <= 0:
                    revert with 0, 'None remain.'
                if 1 and stor2[1][Mask(248, 8, cd[4])]:
                    revert with 0, 'Redeemed.'
                mem[0] = cd[4] / 256
                mem[32] = sha3(1, 2)
                stor2[1][Mask(248, 8, cd[4])] = 1
                mem[mem[64] + 32] = cd[4]
                _3089 = mem[96]
                mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 64] = cd[68]
                mem[mem[64] + mem[96] + 96] = 0
                if ceil32(mem[96]) <= mem[96]:
                    _3560 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _3089 + 128
                    _3888 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _3888:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_3560 + 32 len mem[_3560]])
                            _3955 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3888 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3955 + 32 len mem[_3955]])
                            continue 
                        _3913 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_3560 + 32 len mem[_3560]])
                        mem[mem[64] + 64] = _3913
                        _3952 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _3888 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_3952 + 32 len mem[_3952]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = block.hash(block.number - 1)
                    _4024 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if not _2818:
                        revert with 0, 18
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), sha3(mem[_4024 + 32 len mem[_4024]]) % _2818
                else:
                    _3573 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _3089 + 128
                    _3889 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _3889:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_3573 + 32 len mem[_3573]])
                            _3961 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3889 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3961 + 32 len mem[_3961]])
                            continue 
                        _3918 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_3573 + 32 len mem[_3573]])
                        mem[mem[64] + 64] = _3918
                        _3958 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _3889 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_3958 + 32 len mem[_3958]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = block.hash(block.number - 1)
                    _4027 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if not _2818:
                        revert with 0, 18
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), sha3(mem[_4027 + 32 len mem[_4027]]) % _2818
            else:
                if block.timestamp < sub_e1ac7084:
                    revert with 0, 'Rescue portal closed.'
                if cd[68] >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2817 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2819 = mem[_2817]
                if mem[_2817] <= 0:
                    revert with 0, 'None remain.'
                if 1 and stor2[1][Mask(248, 8, cd[4])]:
                    revert with 0, 'Redeemed.'
                mem[0] = cd[4] / 256
                mem[32] = sha3(1, 2)
                stor2[1][Mask(248, 8, cd[4])] = 1
                mem[mem[64] + 32] = cd[4]
                _3099 = mem[96]
                mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 64] = cd[68]
                mem[mem[64] + mem[96] + 96] = 0
                if ceil32(mem[96]) <= mem[96]:
                    _3563 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _3099 + 128
                    _3890 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _3890:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_3563 + 32 len mem[_3563]])
                            _3967 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3890 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3967 + 32 len mem[_3967]])
                            continue 
                        _3923 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_3563 + 32 len mem[_3563]])
                        mem[mem[64] + 64] = _3923
                        _3964 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _3890 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_3964 + 32 len mem[_3964]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = block.hash(block.number - 1)
                    _4030 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if not _2819:
                        revert with 0, 18
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), sha3(mem[_4030 + 32 len mem[_4030]]) % _2819
                else:
                    _3577 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _3099 + 128
                    _3891 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _3891:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_3577 + 32 len mem[_3577]])
                            _3973 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3891 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3973 + 32 len mem[_3973]])
                            continue 
                        _3928 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_3577 + 32 len mem[_3577]])
                        mem[mem[64] + 64] = _3928
                        _3970 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _3891 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_3970 + 32 len mem[_3970]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = block.hash(block.number - 1)
                    _4033 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if not _2819:
                        revert with 0, 18
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), sha3(mem[_4033 + 32 len mem[_4033]]) % _2819
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6[cd[68]].field_0)
    call stor6[cd[68]].field_0.0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 == cd[68]:
        require ext_code.size(stor3)
        staticcall stor3.0x24ebafb3 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xfeec756c with:
             gas gas_remaining wei
            args msg.sender
    emit 0xc4feb85e: ext_call.return_data[0], msg.sender, stor6[cd[68]].field_0
}

function sub_02502468(?) {
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 36).length)) + 97 < 96 or ceil32(ceil32(('cd', 36).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + 128] = 0
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 98 < 97 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 36).length)) + 97] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = cd[132] + 36
    s = ceil32(ceil32(('cd', 36).length)) + 129
    while idx < cd[132] + (32 * ('cd', 132).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if cd[68] <= 0:
        revert with 0, 'Invalid token.'
    if not uint8(stor9.field_16):
        revert with 0, 'Portalarc is disabled.'
    mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130
    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 98] = stor6.length
    if not stor6.length:
        if cd[68] >= stor6.length:
            revert with 0, 'Invalid token index.'
        if cd[68] >= stor6.length:
            revert with 0, 50
        if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 142 len 20]:
            revert with 0, 'Invalid token address.'
        idx = 0
        s = 0
        while idx < stor5.length:
            mem[0] = 5
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(stor5[idx].field_0)
            staticcall stor5[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _748 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_748] <= 0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_748] > 0
                continue 
            if cd[68]:
                if cd[68] >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _800 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_800] <= 0:
                    revert with 0, 'None remain.'
                if 1 and stor2[1][Mask(248, 8, cd[4])]:
                    revert with 0, 'Redeemed.'
                mem[0] = cd[4] / 256
                mem[32] = sha3(1, 2)
                stor2[1][Mask(248, 8, cd[4])] = 1
                _904 = mem[64]
                mem[mem[64] + 32] = cd[4]
                _920 = mem[96]
                idx = 0
                while idx < _920:
                    mem[idx + _904 + 64] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_904 + _920 + 64] = cd[68]
                mem[_904 + _920 + 96] = cd[100]
                if ceil32(_920) <= _920:
                    _1428 = mem[64]
                    mem[mem[64]] = _904 + _920 + -mem[64] + 96
                    mem[64] = _904 + _920 + 128
                    _2133 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = sha3(mem[_1428 + 32 len mem[_1428]])
                    while uint16(idx) < _2133:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t
                            _2288 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2133 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2288 + 32 len mem[_2288]])
                            continue 
                        _2202 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _2202
                        _2285 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2133 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2285 + 32 len mem[_2285]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[100]
                    require ext_code.size(stor6[cd[68]].field_0)
                    call stor6[cd[68]].field_0.0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == cd[68]:
                        mem[mem[64] + 4] = cd[100]
                        require ext_code.size(stor3)
                        staticcall stor3.0x24ebafb3 with:
                                gas gas_remaining wei
                               args cd[100]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2507 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2507] == mem[_2507 + 12 len 20]
                        require ext_code.size(mem[_2507 + 12 len 20])
                        call mem[_2507 + 12 len 20].0xfeec756c with:
                             gas gas_remaining wei
                            args msg.sender
                else:
                    _1456 = mem[64]
                    mem[mem[64]] = _904 + _920 + -mem[64] + 96
                    mem[64] = _904 + _920 + 128
                    _2134 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = sha3(mem[_1456 + 32 len mem[_1456]])
                    while uint16(idx) < _2134:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t
                            _2294 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2134 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2294 + 32 len mem[_2294]])
                            continue 
                        _2207 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _2207
                        _2291 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2134 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2291 + 32 len mem[_2291]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[100]
                    require ext_code.size(stor6[cd[68]].field_0)
                    call stor6[cd[68]].field_0.0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == cd[68]:
                        mem[mem[64] + 4] = cd[100]
                        require ext_code.size(stor3)
                        staticcall stor3.0x24ebafb3 with:
                                gas gas_remaining wei
                               args cd[100]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2508 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2508] == mem[_2508 + 12 len 20]
                        require ext_code.size(mem[_2508 + 12 len 20])
                        call mem[_2508 + 12 len 20].0xfeec756c with:
                             gas gas_remaining wei
                            args msg.sender
            else:
                if block.timestamp < sub_e1ac7084:
                    revert with 0, 'Rescue portal closed.'
                if cd[68] >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _803 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_803] <= 0:
                    revert with 0, 'None remain.'
                if 1 and stor2[1][Mask(248, 8, cd[4])]:
                    revert with 0, 'Redeemed.'
                mem[0] = cd[4] / 256
                mem[32] = sha3(1, 2)
                stor2[1][Mask(248, 8, cd[4])] = 1
                _921 = mem[64]
                mem[mem[64] + 32] = cd[4]
                _951 = mem[96]
                idx = 0
                while idx < _951:
                    mem[idx + _921 + 64] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_921 + _951 + 64] = cd[68]
                mem[_921 + _951 + 96] = cd[100]
                if ceil32(_951) <= _951:
                    _1431 = mem[64]
                    mem[mem[64]] = _921 + _951 + -mem[64] + 96
                    mem[64] = _921 + _951 + 128
                    _2135 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = sha3(mem[_1431 + 32 len mem[_1431]])
                    while uint16(idx) < _2135:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t
                            _2300 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2135 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2300 + 32 len mem[_2300]])
                            continue 
                        _2212 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _2212
                        _2297 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2135 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2297 + 32 len mem[_2297]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[100]
                    require ext_code.size(stor6[cd[68]].field_0)
                    call stor6[cd[68]].field_0.0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == cd[68]:
                        mem[mem[64] + 4] = cd[100]
                        require ext_code.size(stor3)
                        staticcall stor3.0x24ebafb3 with:
                                gas gas_remaining wei
                               args cd[100]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2509 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2509] == mem[_2509 + 12 len 20]
                        require ext_code.size(mem[_2509 + 12 len 20])
                        call mem[_2509 + 12 len 20].0xfeec756c with:
                             gas gas_remaining wei
                            args msg.sender
                else:
                    _1460 = mem[64]
                    mem[mem[64]] = _921 + _951 + -mem[64] + 96
                    mem[64] = _921 + _951 + 128
                    _2136 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = sha3(mem[_1460 + 32 len mem[_1460]])
                    while uint16(idx) < _2136:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t
                            _2306 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2136 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2306 + 32 len mem[_2306]])
                            continue 
                        _2217 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _2217
                        _2303 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2136 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2303 + 32 len mem[_2303]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[100]
                    require ext_code.size(stor6[cd[68]].field_0)
                    call stor6[cd[68]].field_0.0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == cd[68]:
                        mem[mem[64] + 4] = cd[100]
                        require ext_code.size(stor3)
                        staticcall stor3.0x24ebafb3 with:
                                gas gas_remaining wei
                               args cd[100]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2510 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2510] == mem[_2510 + 12 len 20]
                        require ext_code.size(mem[_2510 + 12 len 20])
                        call mem[_2510 + 12 len 20].0xfeec756c with:
                             gas gas_remaining wei
                            args msg.sender
            emit 0xc4feb85e: cd[100], msg.sender, stor6[cd[68]].field_0
        if not s:
            revert with 0, 'You cannot be trusted.'
        if cd[68]:
            if cd[68] >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6[cd[68]].field_0)
            staticcall stor6[cd[68]].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _763 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_763] <= 0:
                revert with 0, 'None remain.'
            if 1 and stor2[1][Mask(248, 8, cd[4])]:
                revert with 0, 'Redeemed.'
            mem[0] = cd[4] / 256
            mem[32] = sha3(1, 2)
            stor2[1][Mask(248, 8, cd[4])] = 1
            mem[mem[64] + 32] = cd[4]
            _847 = mem[96]
            mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 64] = cd[68]
            mem[mem[64] + mem[96] + 96] = cd[100]
            if ceil32(mem[96]) <= mem[96]:
                _1422 = mem[64]
                mem[mem[64]] = mem[96] + 96
                mem[64] = mem[64] + _847 + 128
                _2129 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < _2129:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[_1422 + 32 len mem[_1422]])
                        _2264 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2129 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2264 + 32 len mem[_2264]])
                        continue 
                    _2182 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[_1422 + 32 len mem[_1422]])
                    mem[mem[64] + 64] = _2182
                    _2261 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _2129 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_2261 + 32 len mem[_2261]])
                    continue 
                mem[0] = 1
                mem[32] = 1
                if t != stor1[1]:
                    revert with 0, 'Unproven.'
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = cd[100]
                require ext_code.size(stor6[cd[68]].field_0)
                call stor6[cd[68]].field_0.0x42842e0e with:
                     gas gas_remaining wei
                    args this.address, msg.sender, cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 == cd[68]:
                    mem[mem[64] + 4] = cd[100]
                    require ext_code.size(stor3)
                    staticcall stor3.0x24ebafb3 with:
                            gas gas_remaining wei
                           args cd[100]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2503 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2503] == mem[_2503 + 12 len 20]
                    require ext_code.size(mem[_2503 + 12 len 20])
                    call mem[_2503 + 12 len 20].0xfeec756c with:
                         gas gas_remaining wei
                        args msg.sender
            else:
                _1448 = mem[64]
                mem[mem[64]] = mem[96] + 96
                mem[64] = mem[64] + _847 + 128
                _2130 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < _2130:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[_1448 + 32 len mem[_1448]])
                        _2270 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2130 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2270 + 32 len mem[_2270]])
                        continue 
                    _2187 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[_1448 + 32 len mem[_1448]])
                    mem[mem[64] + 64] = _2187
                    _2267 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _2130 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_2267 + 32 len mem[_2267]])
                    continue 
                mem[0] = 1
                mem[32] = 1
                if t != stor1[1]:
                    revert with 0, 'Unproven.'
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = cd[100]
                require ext_code.size(stor6[cd[68]].field_0)
                call stor6[cd[68]].field_0.0x42842e0e with:
                     gas gas_remaining wei
                    args this.address, msg.sender, cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 == cd[68]:
                    mem[mem[64] + 4] = cd[100]
                    require ext_code.size(stor3)
                    staticcall stor3.0x24ebafb3 with:
                            gas gas_remaining wei
                           args cd[100]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2504 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2504] == mem[_2504 + 12 len 20]
                    require ext_code.size(mem[_2504 + 12 len 20])
                    call mem[_2504 + 12 len 20].0xfeec756c with:
                         gas gas_remaining wei
                        args msg.sender
        else:
            if block.timestamp < sub_e1ac7084:
                revert with 0, 'Rescue portal closed.'
            if cd[68] >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6[cd[68]].field_0)
            staticcall stor6[cd[68]].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _767 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_767] <= 0:
                revert with 0, 'None remain.'
            if 1 and stor2[1][Mask(248, 8, cd[4])]:
                revert with 0, 'Redeemed.'
            mem[0] = cd[4] / 256
            mem[32] = sha3(1, 2)
            stor2[1][Mask(248, 8, cd[4])] = 1
            mem[mem[64] + 32] = cd[4]
            _851 = mem[96]
            mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 64] = cd[68]
            mem[mem[64] + mem[96] + 96] = cd[100]
            if ceil32(mem[96]) <= mem[96]:
                _1425 = mem[64]
                mem[mem[64]] = mem[96] + 96
                mem[64] = mem[64] + _851 + 128
                _2131 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < _2131:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[_1425 + 32 len mem[_1425]])
                        _2276 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2131 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2276 + 32 len mem[_2276]])
                        continue 
                    _2192 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[_1425 + 32 len mem[_1425]])
                    mem[mem[64] + 64] = _2192
                    _2273 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _2131 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_2273 + 32 len mem[_2273]])
                    continue 
                mem[0] = 1
                mem[32] = 1
                if t != stor1[1]:
                    revert with 0, 'Unproven.'
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = cd[100]
                require ext_code.size(stor6[cd[68]].field_0)
                call stor6[cd[68]].field_0.0x42842e0e with:
                     gas gas_remaining wei
                    args this.address, msg.sender, cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 == cd[68]:
                    mem[mem[64] + 4] = cd[100]
                    require ext_code.size(stor3)
                    staticcall stor3.0x24ebafb3 with:
                            gas gas_remaining wei
                           args cd[100]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2505 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2505] == mem[_2505 + 12 len 20]
                    require ext_code.size(mem[_2505 + 12 len 20])
                    call mem[_2505 + 12 len 20].0xfeec756c with:
                         gas gas_remaining wei
                        args msg.sender
            else:
                _1452 = mem[64]
                mem[mem[64]] = mem[96] + 96
                mem[64] = mem[64] + _851 + 128
                _2132 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                idx = 0
                s = cd[4]
                t = 0
                while uint16(idx) < _2132:
                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                        revert with 0, 50
                    if 1 == bool(s):
                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 64] = t + sha3(mem[_1452 + 32 len mem[_1452]])
                        _2282 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2132 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2282 + 32 len mem[_2282]])
                        continue 
                    _2197 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                    mem[mem[64] + 32] = t + sha3(mem[_1452 + 32 len mem[_1452]])
                    mem[mem[64] + 64] = _2197
                    _2279 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _2132 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = uint16(idx) + 1
                    s = s / 2
                    t = sha3(mem[_2279 + 32 len mem[_2279]])
                    continue 
                mem[0] = 1
                mem[32] = 1
                if t != stor1[1]:
                    revert with 0, 'Unproven.'
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = cd[100]
                require ext_code.size(stor6[cd[68]].field_0)
                call stor6[cd[68]].field_0.0x42842e0e with:
                     gas gas_remaining wei
                    args this.address, msg.sender, cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 == cd[68]:
                    mem[mem[64] + 4] = cd[100]
                    require ext_code.size(stor3)
                    staticcall stor3.0x24ebafb3 with:
                            gas gas_remaining wei
                           args cd[100]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2506 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2506] == mem[_2506 + 12 len 20]
                    require ext_code.size(mem[_2506 + 12 len 20])
                    call mem[_2506 + 12 len 20].0xfeec756c with:
                         gas gas_remaining wei
                        args msg.sender
    else:
        mem[0] = 6
        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 130] = address(stor6.field_0)
        if (32 * stor6.length) + 32 <= 64:
            if cd[68] >= stor6.length:
                revert with 0, 'Invalid token index.'
            if cd[68] >= stor6.length:
                revert with 0, 50
            if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 142 len 20]:
                revert with 0, 'Invalid token address.'
            idx = 0
            s = 0
            while idx < stor5.length:
                mem[0] = 5
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(stor5[idx].field_0)
                staticcall stor5[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _754 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_754] <= 0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_754] > 0
                    continue 
                if cd[68]:
                    if cd[68] >= stor6.length:
                        revert with 0, 50
                    mem[0] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _802 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_802] <= 0:
                        revert with 0, 'None remain.'
                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                        revert with 0, 'Redeemed.'
                    mem[0] = cd[4] / 256
                    mem[32] = sha3(1, 2)
                    stor2[1][Mask(248, 8, cd[4])] = 1
                    _909 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    _931 = mem[96]
                    idx = 0
                    while idx < _931:
                        mem[idx + _909 + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    mem[_909 + _931 + 64] = cd[68]
                    mem[_909 + _931 + 96] = cd[100]
                    if ceil32(_931) <= _931:
                        _1441 = mem[64]
                        mem[mem[64]] = _909 + _931 + -mem[64] + 96
                        mem[64] = _909 + _931 + 128
                        _2141 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_1441 + 32 len mem[_1441]])
                        while uint16(idx) < _2141:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _2342 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _2141 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_2342 + 32 len mem[_2342]])
                                continue 
                            _2242 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _2242
                            _2339 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2141 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2339 + 32 len mem[_2339]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = cd[100]
                        require ext_code.size(stor6[cd[68]].field_0)
                        call stor6[cd[68]].field_0.0x42842e0e with:
                             gas gas_remaining wei
                            args this.address, msg.sender, cd[100]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 == cd[68]:
                            mem[mem[64] + 4] = cd[100]
                            require ext_code.size(stor3)
                            staticcall stor3.0x24ebafb3 with:
                                    gas gas_remaining wei
                                   args cd[100]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2520 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2520] == mem[_2520 + 12 len 20]
                            require ext_code.size(mem[_2520 + 12 len 20])
                            call mem[_2520 + 12 len 20].0xfeec756c with:
                                 gas gas_remaining wei
                                args msg.sender
                    else:
                        _1473 = mem[64]
                        mem[mem[64]] = _909 + _931 + -mem[64] + 96
                        mem[64] = _909 + _931 + 128
                        _2142 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_1473 + 32 len mem[_1473]])
                        while uint16(idx) < _2142:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _2348 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _2142 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_2348 + 32 len mem[_2348]])
                                continue 
                            _2247 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _2247
                            _2345 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2142 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2345 + 32 len mem[_2345]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = cd[100]
                        require ext_code.size(stor6[cd[68]].field_0)
                        call stor6[cd[68]].field_0.0x42842e0e with:
                             gas gas_remaining wei
                            args this.address, msg.sender, cd[100]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 == cd[68]:
                            mem[mem[64] + 4] = cd[100]
                            require ext_code.size(stor3)
                            staticcall stor3.0x24ebafb3 with:
                                    gas gas_remaining wei
                                   args cd[100]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2521 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2521] == mem[_2521 + 12 len 20]
                            require ext_code.size(mem[_2521 + 12 len 20])
                            call mem[_2521 + 12 len 20].0xfeec756c with:
                                 gas gas_remaining wei
                                args msg.sender
                else:
                    if block.timestamp < sub_e1ac7084:
                        revert with 0, 'Rescue portal closed.'
                    if cd[68] >= stor6.length:
                        revert with 0, 50
                    mem[0] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _804 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_804] <= 0:
                        revert with 0, 'None remain.'
                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                        revert with 0, 'Redeemed.'
                    mem[0] = cd[4] / 256
                    mem[32] = sha3(1, 2)
                    stor2[1][Mask(248, 8, cd[4])] = 1
                    _932 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    _970 = mem[96]
                    idx = 0
                    while idx < _970:
                        mem[idx + _932 + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    mem[_932 + _970 + 64] = cd[68]
                    mem[_932 + _970 + 96] = cd[100]
                    if ceil32(_970) <= _970:
                        _1444 = mem[64]
                        mem[mem[64]] = _932 + _970 + -mem[64] + 96
                        mem[64] = _932 + _970 + 128
                        _2143 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_1444 + 32 len mem[_1444]])
                        while uint16(idx) < _2143:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _2354 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _2143 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_2354 + 32 len mem[_2354]])
                                continue 
                            _2252 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _2252
                            _2351 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2143 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2351 + 32 len mem[_2351]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = cd[100]
                        require ext_code.size(stor6[cd[68]].field_0)
                        call stor6[cd[68]].field_0.0x42842e0e with:
                             gas gas_remaining wei
                            args this.address, msg.sender, cd[100]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 == cd[68]:
                            mem[mem[64] + 4] = cd[100]
                            require ext_code.size(stor3)
                            staticcall stor3.0x24ebafb3 with:
                                    gas gas_remaining wei
                                   args cd[100]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2522 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2522] == mem[_2522 + 12 len 20]
                            require ext_code.size(mem[_2522 + 12 len 20])
                            call mem[_2522 + 12 len 20].0xfeec756c with:
                                 gas gas_remaining wei
                                args msg.sender
                    else:
                        _1477 = mem[64]
                        mem[mem[64]] = _932 + _970 + -mem[64] + 96
                        mem[64] = _932 + _970 + 128
                        _2144 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_1477 + 32 len mem[_1477]])
                        while uint16(idx) < _2144:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _2360 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _2144 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_2360 + 32 len mem[_2360]])
                                continue 
                            _2257 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _2257
                            _2357 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2144 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2357 + 32 len mem[_2357]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = cd[100]
                        require ext_code.size(stor6[cd[68]].field_0)
                        call stor6[cd[68]].field_0.0x42842e0e with:
                             gas gas_remaining wei
                            args this.address, msg.sender, cd[100]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 == cd[68]:
                            mem[mem[64] + 4] = cd[100]
                            require ext_code.size(stor3)
                            staticcall stor3.0x24ebafb3 with:
                                    gas gas_remaining wei
                                   args cd[100]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2523 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2523] == mem[_2523 + 12 len 20]
                            require ext_code.size(mem[_2523 + 12 len 20])
                            call mem[_2523 + 12 len 20].0xfeec756c with:
                                 gas gas_remaining wei
                                args msg.sender
                emit 0xc4feb85e: cd[100], msg.sender, stor6[cd[68]].field_0
            if not s:
                revert with 0, 'You cannot be trusted.'
            if cd[68]:
                if cd[68] >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _765 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_765] <= 0:
                    revert with 0, 'None remain.'
                if 1 and stor2[1][Mask(248, 8, cd[4])]:
                    revert with 0, 'Redeemed.'
                mem[0] = cd[4] / 256
                mem[32] = sha3(1, 2)
                stor2[1][Mask(248, 8, cd[4])] = 1
                mem[mem[64] + 32] = cd[4]
                _849 = mem[96]
                mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 64] = cd[68]
                mem[mem[64] + mem[96] + 96] = cd[100]
                if ceil32(mem[96]) <= mem[96]:
                    _1435 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _849 + 128
                    _2137 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _2137:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_1435 + 32 len mem[_1435]])
                            _2318 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2137 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2318 + 32 len mem[_2318]])
                            continue 
                        _2222 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_1435 + 32 len mem[_1435]])
                        mem[mem[64] + 64] = _2222
                        _2315 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2137 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2315 + 32 len mem[_2315]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[100]
                    require ext_code.size(stor6[cd[68]].field_0)
                    call stor6[cd[68]].field_0.0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == cd[68]:
                        mem[mem[64] + 4] = cd[100]
                        require ext_code.size(stor3)
                        staticcall stor3.0x24ebafb3 with:
                                gas gas_remaining wei
                               args cd[100]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2516 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2516] == mem[_2516 + 12 len 20]
                        require ext_code.size(mem[_2516 + 12 len 20])
                        call mem[_2516 + 12 len 20].0xfeec756c with:
                             gas gas_remaining wei
                            args msg.sender
                else:
                    _1465 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _849 + 128
                    _2138 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _2138:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_1465 + 32 len mem[_1465]])
                            _2324 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2138 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2324 + 32 len mem[_2324]])
                            continue 
                        _2227 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_1465 + 32 len mem[_1465]])
                        mem[mem[64] + 64] = _2227
                        _2321 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2138 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2321 + 32 len mem[_2321]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[100]
                    require ext_code.size(stor6[cd[68]].field_0)
                    call stor6[cd[68]].field_0.0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == cd[68]:
                        mem[mem[64] + 4] = cd[100]
                        require ext_code.size(stor3)
                        staticcall stor3.0x24ebafb3 with:
                                gas gas_remaining wei
                               args cd[100]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2517 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2517] == mem[_2517 + 12 len 20]
                        require ext_code.size(mem[_2517 + 12 len 20])
                        call mem[_2517 + 12 len 20].0xfeec756c with:
                             gas gas_remaining wei
                            args msg.sender
            else:
                if block.timestamp < sub_e1ac7084:
                    revert with 0, 'Rescue portal closed.'
                if cd[68] >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _768 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_768] <= 0:
                    revert with 0, 'None remain.'
                if 1 and stor2[1][Mask(248, 8, cd[4])]:
                    revert with 0, 'Redeemed.'
                mem[0] = cd[4] / 256
                mem[32] = sha3(1, 2)
                stor2[1][Mask(248, 8, cd[4])] = 1
                mem[mem[64] + 32] = cd[4]
                _853 = mem[96]
                mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 64] = cd[68]
                mem[mem[64] + mem[96] + 96] = cd[100]
                if ceil32(mem[96]) <= mem[96]:
                    _1438 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _853 + 128
                    _2139 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _2139:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_1438 + 32 len mem[_1438]])
                            _2330 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2139 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2330 + 32 len mem[_2330]])
                            continue 
                        _2232 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_1438 + 32 len mem[_1438]])
                        mem[mem[64] + 64] = _2232
                        _2327 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2139 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2327 + 32 len mem[_2327]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[100]
                    require ext_code.size(stor6[cd[68]].field_0)
                    call stor6[cd[68]].field_0.0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == cd[68]:
                        mem[mem[64] + 4] = cd[100]
                        require ext_code.size(stor3)
                        staticcall stor3.0x24ebafb3 with:
                                gas gas_remaining wei
                               args cd[100]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2518 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2518] == mem[_2518 + 12 len 20]
                        require ext_code.size(mem[_2518 + 12 len 20])
                        call mem[_2518 + 12 len 20].0xfeec756c with:
                             gas gas_remaining wei
                            args msg.sender
                else:
                    _1469 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _853 + 128
                    _2140 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _2140:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_1469 + 32 len mem[_1469]])
                            _2336 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _2140 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_2336 + 32 len mem[_2336]])
                            continue 
                        _2237 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_1469 + 32 len mem[_1469]])
                        mem[mem[64] + 64] = _2237
                        _2333 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _2140 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_2333 + 32 len mem[_2333]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[100]
                    require ext_code.size(stor6[cd[68]].field_0)
                    call stor6[cd[68]].field_0.0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == cd[68]:
                        mem[mem[64] + 4] = cd[100]
                        require ext_code.size(stor3)
                        staticcall stor3.0x24ebafb3 with:
                                gas gas_remaining wei
                               args cd[100]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2519 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2519] == mem[_2519 + 12 len 20]
                        require ext_code.size(mem[_2519 + 12 len 20])
                        call mem[_2519 + 12 len 20].0xfeec756c with:
                             gas gas_remaining wei
                            args msg.sender
        else:
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 162] = address(stor6.field_256)
            idx = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 162
            s = 1
            while ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 98 > idx:
                mem[idx + 32] = stor6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if cd[68] >= stor6.length:
                revert with 0, 'Invalid token index.'
            if cd[68] >= stor6.length:
                revert with 0, 50
            if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 142 len 20]:
                revert with 0, 'Invalid token address.'
            idx = 0
            s = 0
            while idx < stor5.length:
                mem[0] = 5
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(stor5[idx].field_0)
                staticcall stor5[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2314 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2314] <= 0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_2314] > 0
                    continue 
                if cd[68]:
                    if cd[68] >= stor6.length:
                        revert with 0, 50
                    mem[0] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2538 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2538] <= 0:
                        revert with 0, 'None remain.'
                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                        revert with 0, 'Redeemed.'
                    mem[0] = cd[4] / 256
                    mem[32] = sha3(1, 2)
                    stor2[1][Mask(248, 8, cd[4])] = 1
                    _2695 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    _2706 = mem[96]
                    idx = 0
                    while idx < _2706:
                        mem[idx + _2695 + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    mem[_2695 + _2706 + 64] = cd[68]
                    mem[_2695 + _2706 + 96] = cd[100]
                    if ceil32(_2706) <= _2706:
                        _2958 = mem[64]
                        mem[mem[64]] = _2695 + _2706 + -mem[64] + 96
                        mem[64] = _2695 + _2706 + 128
                        _3220 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_2958 + 32 len mem[_2958]])
                        while uint16(idx) < _3220:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _3307 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _3220 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_3307 + 32 len mem[_3307]])
                                continue 
                            _3261 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _3261
                            _3304 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3220 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3304 + 32 len mem[_3304]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = cd[100]
                        require ext_code.size(stor6[cd[68]].field_0)
                        call stor6[cd[68]].field_0.0x42842e0e with:
                             gas gas_remaining wei
                            args this.address, msg.sender, cd[100]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 == cd[68]:
                            mem[mem[64] + 4] = cd[100]
                            require ext_code.size(stor3)
                            staticcall stor3.0x24ebafb3 with:
                                    gas gas_remaining wei
                                   args cd[100]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3396 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3396] == mem[_3396 + 12 len 20]
                            require ext_code.size(mem[_3396 + 12 len 20])
                            call mem[_3396 + 12 len 20].0xfeec756c with:
                                 gas gas_remaining wei
                                args msg.sender
                    else:
                        _2973 = mem[64]
                        mem[mem[64]] = _2695 + _2706 + -mem[64] + 96
                        mem[64] = _2695 + _2706 + 128
                        _3221 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_2973 + 32 len mem[_2973]])
                        while uint16(idx) < _3221:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _3313 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _3221 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_3313 + 32 len mem[_3313]])
                                continue 
                            _3266 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _3266
                            _3310 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3221 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3310 + 32 len mem[_3310]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = cd[100]
                        require ext_code.size(stor6[cd[68]].field_0)
                        call stor6[cd[68]].field_0.0x42842e0e with:
                             gas gas_remaining wei
                            args this.address, msg.sender, cd[100]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 == cd[68]:
                            mem[mem[64] + 4] = cd[100]
                            require ext_code.size(stor3)
                            staticcall stor3.0x24ebafb3 with:
                                    gas gas_remaining wei
                                   args cd[100]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3397 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3397] == mem[_3397 + 12 len 20]
                            require ext_code.size(mem[_3397 + 12 len 20])
                            call mem[_3397 + 12 len 20].0xfeec756c with:
                                 gas gas_remaining wei
                                args msg.sender
                else:
                    if block.timestamp < sub_e1ac7084:
                        revert with 0, 'Rescue portal closed.'
                    if cd[68] >= stor6.length:
                        revert with 0, 50
                    mem[0] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6[cd[68]].field_0)
                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2547 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2547] <= 0:
                        revert with 0, 'None remain.'
                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                        revert with 0, 'Redeemed.'
                    mem[0] = cd[4] / 256
                    mem[32] = sha3(1, 2)
                    stor2[1][Mask(248, 8, cd[4])] = 1
                    _2707 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    _2726 = mem[96]
                    idx = 0
                    while idx < _2726:
                        mem[idx + _2707 + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    mem[_2707 + _2726 + 64] = cd[68]
                    mem[_2707 + _2726 + 96] = cd[100]
                    if ceil32(_2726) <= _2726:
                        _2961 = mem[64]
                        mem[mem[64]] = _2707 + _2726 + -mem[64] + 96
                        mem[64] = _2707 + _2726 + 128
                        _3222 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_2961 + 32 len mem[_2961]])
                        while uint16(idx) < _3222:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _3319 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _3222 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_3319 + 32 len mem[_3319]])
                                continue 
                            _3271 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _3271
                            _3316 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3222 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3316 + 32 len mem[_3316]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = cd[100]
                        require ext_code.size(stor6[cd[68]].field_0)
                        call stor6[cd[68]].field_0.0x42842e0e with:
                             gas gas_remaining wei
                            args this.address, msg.sender, cd[100]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 == cd[68]:
                            mem[mem[64] + 4] = cd[100]
                            require ext_code.size(stor3)
                            staticcall stor3.0x24ebafb3 with:
                                    gas gas_remaining wei
                                   args cd[100]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3398 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3398] == mem[_3398 + 12 len 20]
                            require ext_code.size(mem[_3398 + 12 len 20])
                            call mem[_3398 + 12 len 20].0xfeec756c with:
                                 gas gas_remaining wei
                                args msg.sender
                    else:
                        _2977 = mem[64]
                        mem[mem[64]] = _2707 + _2726 + -mem[64] + 96
                        mem[64] = _2707 + _2726 + 128
                        _3223 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = 0
                        s = cd[4]
                        t = sha3(mem[_2977 + 32 len mem[_2977]])
                        while uint16(idx) < _3223:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                                mem[mem[64] + 64] = t
                                _3325 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _3223 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_3325 + 32 len mem[_3325]])
                                continue 
                            _3276 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 32] = t
                            mem[mem[64] + 64] = _3276
                            _3322 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3223 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3322 + 32 len mem[_3322]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = cd[100]
                        require ext_code.size(stor6[cd[68]].field_0)
                        call stor6[cd[68]].field_0.0x42842e0e with:
                             gas gas_remaining wei
                            args this.address, msg.sender, cd[100]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 == cd[68]:
                            mem[mem[64] + 4] = cd[100]
                            require ext_code.size(stor3)
                            staticcall stor3.0x24ebafb3 with:
                                    gas gas_remaining wei
                                   args cd[100]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3399 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3399] == mem[_3399 + 12 len 20]
                            require ext_code.size(mem[_3399 + 12 len 20])
                            call mem[_3399 + 12 len 20].0xfeec756c with:
                                 gas gas_remaining wei
                                args msg.sender
                emit 0xc4feb85e: cd[100], msg.sender, stor6[cd[68]].field_0
            if not s:
                revert with 0, 'You cannot be trusted.'
            if cd[68]:
                if cd[68] >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2391 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2391] <= 0:
                    revert with 0, 'None remain.'
                if 1 and stor2[1][Mask(248, 8, cd[4])]:
                    revert with 0, 'Redeemed.'
                mem[0] = cd[4] / 256
                mem[32] = sha3(1, 2)
                stor2[1][Mask(248, 8, cd[4])] = 1
                mem[mem[64] + 32] = cd[4]
                _2665 = mem[96]
                mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 64] = cd[68]
                mem[mem[64] + mem[96] + 96] = cd[100]
                if ceil32(mem[96]) <= mem[96]:
                    _2952 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _2665 + 128
                    _3216 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _3216:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_2952 + 32 len mem[_2952]])
                            _3283 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3216 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3283 + 32 len mem[_3283]])
                            continue 
                        _3241 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_2952 + 32 len mem[_2952]])
                        mem[mem[64] + 64] = _3241
                        _3280 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _3216 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_3280 + 32 len mem[_3280]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[100]
                    require ext_code.size(stor6[cd[68]].field_0)
                    call stor6[cd[68]].field_0.0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == cd[68]:
                        mem[mem[64] + 4] = cd[100]
                        require ext_code.size(stor3)
                        staticcall stor3.0x24ebafb3 with:
                                gas gas_remaining wei
                               args cd[100]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3392 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3392] == mem[_3392 + 12 len 20]
                        require ext_code.size(mem[_3392 + 12 len 20])
                        call mem[_3392 + 12 len 20].0xfeec756c with:
                             gas gas_remaining wei
                            args msg.sender
                else:
                    _2965 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _2665 + 128
                    _3217 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _3217:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_2965 + 32 len mem[_2965]])
                            _3289 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3217 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3289 + 32 len mem[_3289]])
                            continue 
                        _3246 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_2965 + 32 len mem[_2965]])
                        mem[mem[64] + 64] = _3246
                        _3286 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _3217 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_3286 + 32 len mem[_3286]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[100]
                    require ext_code.size(stor6[cd[68]].field_0)
                    call stor6[cd[68]].field_0.0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == cd[68]:
                        mem[mem[64] + 4] = cd[100]
                        require ext_code.size(stor3)
                        staticcall stor3.0x24ebafb3 with:
                                gas gas_remaining wei
                               args cd[100]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3393 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3393] == mem[_3393 + 12 len 20]
                        require ext_code.size(mem[_3393 + 12 len 20])
                        call mem[_3393 + 12 len 20].0xfeec756c with:
                             gas gas_remaining wei
                            args msg.sender
            else:
                if block.timestamp < sub_e1ac7084:
                    revert with 0, 'Rescue portal closed.'
                if cd[68] >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6[cd[68]].field_0)
                staticcall stor6[cd[68]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2417 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2417] <= 0:
                    revert with 0, 'None remain.'
                if 1 and stor2[1][Mask(248, 8, cd[4])]:
                    revert with 0, 'Redeemed.'
                mem[0] = cd[4] / 256
                mem[32] = sha3(1, 2)
                stor2[1][Mask(248, 8, cd[4])] = 1
                mem[mem[64] + 32] = cd[4]
                _2667 = mem[96]
                mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 64] = cd[68]
                mem[mem[64] + mem[96] + 96] = cd[100]
                if ceil32(mem[96]) <= mem[96]:
                    _2955 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _2667 + 128
                    _3218 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _3218:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_2955 + 32 len mem[_2955]])
                            _3295 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3218 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3295 + 32 len mem[_3295]])
                            continue 
                        _3251 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_2955 + 32 len mem[_2955]])
                        mem[mem[64] + 64] = _3251
                        _3292 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _3218 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_3292 + 32 len mem[_3292]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[100]
                    require ext_code.size(stor6[cd[68]].field_0)
                    call stor6[cd[68]].field_0.0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == cd[68]:
                        mem[mem[64] + 4] = cd[100]
                        require ext_code.size(stor3)
                        staticcall stor3.0x24ebafb3 with:
                                gas gas_remaining wei
                               args cd[100]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3394 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3394] == mem[_3394 + 12 len 20]
                        require ext_code.size(mem[_3394 + 12 len 20])
                        call mem[_3394 + 12 len 20].0xfeec756c with:
                             gas gas_remaining wei
                            args msg.sender
                else:
                    _2969 = mem[64]
                    mem[mem[64]] = mem[96] + 96
                    mem[64] = mem[64] + _2667 + 128
                    _3219 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                    idx = 0
                    s = cd[4]
                    t = 0
                    while uint16(idx) < _3219:
                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 97]:
                            revert with 0, 50
                        if 1 == bool(s):
                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                            mem[mem[64] + 64] = t + sha3(mem[_2969 + 32 len mem[_2969]])
                            _3301 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _3219 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_3301 + 32 len mem[_3301]])
                            continue 
                        _3256 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 129]
                        mem[mem[64] + 32] = t + sha3(mem[_2969 + 32 len mem[_2969]])
                        mem[mem[64] + 64] = _3256
                        _3298 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        _3219 = mem[ceil32(ceil32(('cd', 36).length)) + 97]
                        idx = uint16(idx) + 1
                        s = s / 2
                        t = sha3(mem[_3298 + 32 len mem[_3298]])
                        continue 
                    mem[0] = 1
                    mem[32] = 1
                    if t != stor1[1]:
                        revert with 0, 'Unproven.'
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[100]
                    require ext_code.size(stor6[cd[68]].field_0)
                    call stor6[cd[68]].field_0.0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == cd[68]:
                        mem[mem[64] + 4] = cd[100]
                        require ext_code.size(stor3)
                        staticcall stor3.0x24ebafb3 with:
                                gas gas_remaining wei
                               args cd[100]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3395 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3395] == mem[_3395 + 12 len 20]
                        require ext_code.size(mem[_3395 + 12 len 20])
                        call mem[_3395 + 12 len 20].0xfeec756c with:
                             gas gas_remaining wei
                            args msg.sender
    emit 0xc4feb85e: cd[100], msg.sender, stor6[cd[68]].field_0
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
        emit 0x87cabd40: msg.value, msg.sender
    else:
        if unknown_0xa424fc36(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd5556544(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xed7b6163(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xed7b6163(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if stor7.length:
                            mem[160] = address(stor7.field_0)
                            if (32 * stor7.length) + 32 > 64:
                                mem[192] = address(stor7.field_256)
                                idx = 192
                                s = 1
                                while (32 * stor7.length) + 128 > idx:
                                    mem[idx + 32] = stor7[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        mem[(32 * stor7.length) + 160] = 32
                        mem[(32 * stor7.length) + 192] = stor7.length
                        idx = 0
                        s = (32 * stor7.length) + 224
                        t = 160
                        while idx < stor7.length:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from (32 * stor7.length) + 160
                           len (96 * stor7.length) + 64
                    if unknown_0xee9cf84e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return bool(1 << uint8(cd[4]) and stor2[2][Mask(248, 8, cd[4])])
                    if unknown_0xef9b218b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == bool(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(sub_baafbcfcAddress)
                        call sub_baafbcfcAddress.0xef9b218b with:
                             gas gas_remaining wei
                            args bool(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xf0e6219d(?????):
                            require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(cd[4]):
                                revert with 0, 'Ownable: new owner is the zero address'
                            owner = address(cd[4])
                            emit OwnershipTransferred(owner, address(cd[4]));
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if stor6.length:
                                if (32 * stor6.length) + 32 > 64:
                                    idx = 192
                                    s = 1
                                    while (32 * stor6.length) + 128 > idx:
                                        mem[idx + 32] = stor6[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                            if cd[4] >= stor6.length:
                                revert with 0, 'Invalid token index.'
                            require cd[4] < stor6.length
                            stor6[cd[4]].field_0 = 0
                if unknown_0xd5556544(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return offset
                if uint32(call.func_hash) >> 224 != unknown_0xdcaec295(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xde342620(?????):
                        if unknown_0xe1046852(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            return bool(1 << uint8(cd[4]) and stor2[0][Mask(248, 8, cd[4])])
                        require unknown_0xe1ac7084(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_e1ac7084
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if stor6.length:
                        if (32 * stor6.length) + 32 > 64:
                            idx = 192
                            s = 1
                            while (32 * stor6.length) + 128 > idx:
                                mem[idx + 32] = stor6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                    if cd[4] >= stor6.length:
                        revert with 0, 'Invalid token index.'
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).supportsInterface(bytes4 arg1) with:
                            gas gas_remaining wei
                           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    if cd[4] >= stor6.length:
                        revert with 0, 50
                    stor6[cd[4]].field_0 = address(cd[36])
                require not msg.value
                require calldata.size - 4 >= 160
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 36).length
                require cd[36] + ('cd', 36).length + 36 <= calldata.size
                mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + 160] = 0
                require cd[132] <= test266151307()
                require cd[132] + 35 < calldata.size
                if ('cd', 132).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 132).length) + 130 < 129 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 130 > test266151307():
                    revert with 0, 65
                mem[ceil32(ceil32(('cd', 36).length)) + 129] = ('cd', 132).length
                require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
                idx = cd[132] + 36
                s = ceil32(ceil32(('cd', 36).length)) + 161
                while idx < cd[132] + (32 * ('cd', 132).length) + 36:
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 130] = stor6.length
                if not stor6.length:
                    if cd[68] >= stor6.length:
                        revert with 0, 'Invalid token index.'
                    if cd[68] >= stor6.length:
                        revert with 0, 50
                    if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 174 len 20]:
                        revert with 0, 'Invalid token address.'
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194] = cd[4]
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 226 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 132).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 226] = cd[68]
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 258] = cd[100]
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162] = ('cd', 36).length + 96
                    mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 290
                    if ceil32(('cd', 36).length) <= ('cd', 36).length:
                        idx = 0
                        s = cd[4]
                        t = 0
                        while uint16(idx) < ('cd', 132).length:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162]])
                                _6282 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_6282 + 32 len mem[_6282]])
                                continue 
                            _6085 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                            mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162]])
                            mem[mem[64] + 64] = _6085
                            _6279 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_6279 + 32 len mem[_6279]])
                            continue 
                    else:
                        idx = 0
                        s = cd[4]
                        t = 0
                        while uint16(idx) < ('cd', 132).length:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162]])
                                _6288 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_6288 + 32 len mem[_6288]])
                                continue 
                            _6090 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                            mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162]])
                            mem[mem[64] + 64] = _6090
                            _6285 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_6285 + 32 len mem[_6285]])
                            continue 
                else:
                    mem[0] = 6
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 162] = address(stor6.field_0)
                    if (32 * stor6.length) + 32 <= 64:
                        if cd[68] >= stor6.length:
                            revert with 0, 'Invalid token index.'
                        if cd[68] >= stor6.length:
                            revert with 0, 50
                        if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 174 len 20]:
                            revert with 0, 'Invalid token address.'
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194] = cd[4]
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 226 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 132).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 226] = cd[68]
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 258] = cd[100]
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162] = ('cd', 36).length + 96
                        mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 290
                        if ceil32(('cd', 36).length) <= ('cd', 36).length:
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < ('cd', 132).length:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162]])
                                    _6295 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_6295 + 32 len mem[_6295]])
                                    continue 
                                _6096 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162]])
                                mem[mem[64] + 64] = _6096
                                _6292 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_6292 + 32 len mem[_6292]])
                                continue 
                        else:
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < ('cd', 132).length:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162]])
                                    _6301 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_6301 + 32 len mem[_6301]])
                                    continue 
                                _6101 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162]])
                                mem[mem[64] + 64] = _6101
                                _6298 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_6298 + 32 len mem[_6298]])
                                continue 
                    else:
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 194] = address(stor6.field_256)
                        idx = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 194
                        s = 1
                        while ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130 > idx:
                            mem[idx + 32] = stor6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if cd[68] >= stor6.length:
                            revert with 0, 'Invalid token index.'
                        if cd[68] >= stor6.length:
                            revert with 0, 50
                        if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 174 len 20]:
                            revert with 0, 'Invalid token address.'
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194] = cd[4]
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 226 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 132).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 226] = cd[68]
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 258] = cd[100]
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162] = ('cd', 36).length + 96
                        mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + ('cd', 36).length + 290
                        if ceil32(('cd', 36).length) <= ('cd', 36).length:
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < ('cd', 132).length:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162]])
                                    _11816 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_11816 + 32 len mem[_11816]])
                                    continue 
                                _11732 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162]])
                                mem[mem[64] + 64] = _11732
                                _11813 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_11813 + 32 len mem[_11813]])
                                continue 
                        else:
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < ('cd', 132).length:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162]])
                                    _11822 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_11822 + 32 len mem[_11822]])
                                    continue 
                                _11737 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162]])
                                mem[mem[64] + 64] = _11737
                                _11819 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_11819 + 32 len mem[_11819]])
                                continue 
                return (t == stor1[1])
            if unknown_0xbc935be5(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xa424fc36(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    if ('cd', 36).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 36).length
                    require cd[36] + ('cd', 36).length + 36 <= calldata.size
                    mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[('cd', 36).length + 160] = 0
                    require cd[68] <= test266151307()
                    require cd[68] + 35 < calldata.size
                    if ('cd', 68).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 68).length) + 130 < 129 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130 > test266151307():
                        revert with 0, 65
                    mem[ceil32(ceil32(('cd', 36).length)) + 129] = ('cd', 68).length
                    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                    idx = cd[68] + 36
                    s = ceil32(ceil32(('cd', 36).length)) + 161
                    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130] = stor6.length
                    if not stor6.length:
                        if 0 >= stor6.length:
                            revert with 0, 'Invalid token index.'
                        if 0 >= stor6.length:
                            revert with 0, 50
                        if not mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 174 len 20]:
                            revert with 0, 'Invalid token address.'
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194] = cd[4]
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 226 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 68).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 226] = 0
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 258] = 0
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162] = ('cd', 36).length + 96
                        mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 290
                        if ceil32(('cd', 36).length) <= ('cd', 36).length:
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < ('cd', 68).length:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162]])
                                    _6194 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_6194 + 32 len mem[_6194]])
                                    continue 
                                _6013 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162]])
                                mem[mem[64] + 64] = _6013
                                _6191 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_6191 + 32 len mem[_6191]])
                                continue 
                        else:
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < ('cd', 68).length:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162]])
                                    _6200 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_6200 + 32 len mem[_6200]])
                                    continue 
                                _6018 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162]])
                                mem[mem[64] + 64] = _6018
                                _6197 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_6197 + 32 len mem[_6197]])
                                continue 
                    else:
                        mem[0] = 6
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 162] = address(stor6.field_0)
                        if (32 * stor6.length) + 32 <= 64:
                            if 0 >= stor6.length:
                                revert with 0, 'Invalid token index.'
                            if 0 >= stor6.length:
                                revert with 0, 50
                            if not address(stor6.field_0):
                                revert with 0, 'Invalid token address.'
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194] = cd[4]
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 226 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 68).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 226] = 0
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 258] = 0
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162] = ('cd', 36).length + 96
                            mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 290
                            if ceil32(('cd', 36).length) <= ('cd', 36).length:
                                idx = 0
                                s = cd[4]
                                t = 0
                                while uint16(idx) < ('cd', 68).length:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162]])
                                        _6207 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_6207 + 32 len mem[_6207]])
                                        continue 
                                    _6024 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162]])
                                    mem[mem[64] + 64] = _6024
                                    _6204 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_6204 + 32 len mem[_6204]])
                                    continue 
                            else:
                                idx = 0
                                s = cd[4]
                                t = 0
                                while uint16(idx) < ('cd', 68).length:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162]])
                                        _6213 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_6213 + 32 len mem[_6213]])
                                        continue 
                                    _6029 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162]])
                                    mem[mem[64] + 64] = _6029
                                    _6210 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_6210 + 32 len mem[_6210]])
                                    continue 
                        else:
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 194] = address(stor6.field_256)
                            idx = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 194
                            s = 1
                            while ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130 > idx:
                                mem[idx + 32] = stor6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 >= stor6.length:
                                revert with 0, 'Invalid token index.'
                            if 0 >= stor6.length:
                                revert with 0, 50
                            if not address(stor6.field_0):
                                revert with 0, 'Invalid token address.'
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194] = cd[4]
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 226 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 68).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 226] = 0
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 258] = 0
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162] = ('cd', 36).length + 96
                            mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + ('cd', 36).length + 290
                            if ceil32(('cd', 36).length) <= ('cd', 36).length:
                                idx = 0
                                s = cd[4]
                                t = 0
                                while uint16(idx) < ('cd', 68).length:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162]])
                                        _11776 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_11776 + 32 len mem[_11776]])
                                        continue 
                                    _11700 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162]])
                                    mem[mem[64] + 64] = _11700
                                    _11773 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_11773 + 32 len mem[_11773]])
                                    continue 
                            else:
                                idx = 0
                                s = cd[4]
                                t = 0
                                while uint16(idx) < ('cd', 68).length:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162]])
                                        _11782 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_11782 + 32 len mem[_11782]])
                                        continue 
                                    _11705 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162]])
                                    mem[mem[64] + 64] = _11705
                                    _11779 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_11779 + 32 len mem[_11779]])
                                    continue 
                else:
                    if unknown_0xae6ebbe3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[36] <= test266151307()
                        require cd[36] + 35 < calldata.size
                        if ('cd', 36).length > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = ('cd', 36).length
                        require cd[36] + ('cd', 36).length + 36 <= calldata.size
                        mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[('cd', 36).length + 160] = 0
                        require cd[68] <= test266151307()
                        require cd[68] + 35 < calldata.size
                        if ('cd', 68).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 68).length) + 130 < 129 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130 > test266151307():
                            revert with 0, 65
                        mem[ceil32(ceil32(('cd', 36).length)) + 129] = ('cd', 68).length
                        require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                        idx = cd[68] + 36
                        s = ceil32(ceil32(('cd', 36).length)) + 161
                        while idx < cd[68] + (32 * ('cd', 68).length) + 36:
                            mem[s] = cd[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 162] = cd[4]
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 68).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ('cd', 36).length + 194] = 0
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ('cd', 36).length + 226] = 0
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130] = ('cd', 36).length + 96
                        mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ('cd', 36).length + 258
                        if ceil32(('cd', 36).length) <= ('cd', 36).length:
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < ('cd', 68).length:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130]])
                                    _6219 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_6219 + 32 len mem[_6219]])
                                    continue 
                                _6034 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130]])
                                mem[mem[64] + 64] = _6034
                                _6216 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_6216 + 32 len mem[_6216]])
                                continue 
                        else:
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < ('cd', 68).length:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130]])
                                    _6225 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_6225 + 32 len mem[_6225]])
                                    continue 
                                _6039 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130]])
                                mem[mem[64] + 64] = _6039
                                _6222 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_6222 + 32 len mem[_6222]])
                                continue 
                        return (t == stor1[0])
                    if unknown_0xaf21b40c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_call.return_data[0]
                        stor6.length++
                        stor6[stor6.length].field_0 = address(cd[4])
                    if uint32(call.func_hash) >> 224 != unknown_0xb6f6f60f(?????):
                        require unknown_0xbaafbcfc(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_baafbcfcAddress
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    if ('cd', 36).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 36).length
                    require cd[36] + ('cd', 36).length + 36 <= calldata.size
                    mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[('cd', 36).length + 160] = 0
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    if ('cd', 100).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 100).length) + 130 < 129 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 130 > test266151307():
                        revert with 0, 65
                    mem[ceil32(ceil32(('cd', 36).length)) + 129] = ('cd', 100).length
                    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                    idx = cd[100] + 36
                    s = ceil32(ceil32(('cd', 36).length)) + 161
                    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 130] = stor6.length
                    if not stor6.length:
                        if cd[68] >= stor6.length:
                            revert with 0, 'Invalid token index.'
                        if cd[68] >= stor6.length:
                            revert with 0, 50
                        if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 174 len 20]:
                            revert with 0, 'Invalid token address.'
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194] = cd[4]
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 226 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 226] = cd[68]
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 258] = 0
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162] = ('cd', 36).length + 96
                        mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 290
                        if ceil32(('cd', 36).length) <= ('cd', 36).length:
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < ('cd', 100).length:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162]])
                                    _6231 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_6231 + 32 len mem[_6231]])
                                    continue 
                                _6044 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162]])
                                mem[mem[64] + 64] = _6044
                                _6228 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_6228 + 32 len mem[_6228]])
                                continue 
                        else:
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < ('cd', 100).length:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162]])
                                    _6237 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_6237 + 32 len mem[_6237]])
                                    continue 
                                _6049 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162]])
                                mem[mem[64] + 64] = _6049
                                _6234 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_6234 + 32 len mem[_6234]])
                                continue 
                    else:
                        mem[0] = 6
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 162] = address(stor6.field_0)
                        if (32 * stor6.length) + 32 <= 64:
                            if cd[68] >= stor6.length:
                                revert with 0, 'Invalid token index.'
                            if cd[68] >= stor6.length:
                                revert with 0, 50
                            if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 174 len 20]:
                                revert with 0, 'Invalid token address.'
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194] = cd[4]
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 226 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 226] = cd[68]
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 258] = 0
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162] = ('cd', 36).length + 96
                            mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 290
                            if ceil32(('cd', 36).length) <= ('cd', 36).length:
                                idx = 0
                                s = cd[4]
                                t = 0
                                while uint16(idx) < ('cd', 100).length:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162]])
                                        _6244 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_6244 + 32 len mem[_6244]])
                                        continue 
                                    _6055 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162]])
                                    mem[mem[64] + 64] = _6055
                                    _6241 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_6241 + 32 len mem[_6241]])
                                    continue 
                            else:
                                idx = 0
                                s = cd[4]
                                t = 0
                                while uint16(idx) < ('cd', 100).length:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162]])
                                        _6250 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_6250 + 32 len mem[_6250]])
                                        continue 
                                    _6060 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162]])
                                    mem[mem[64] + 64] = _6060
                                    _6247 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_6247 + 32 len mem[_6247]])
                                    continue 
                        else:
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 194] = address(stor6.field_256)
                            idx = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 194
                            s = 1
                            while ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130 > idx:
                                mem[idx + 32] = stor6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if cd[68] >= stor6.length:
                                revert with 0, 'Invalid token index.'
                            if cd[68] >= stor6.length:
                                revert with 0, 50
                            if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 174 len 20]:
                                revert with 0, 'Invalid token address.'
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194] = cd[4]
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 226 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 226] = cd[68]
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 258] = 0
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162] = ('cd', 36).length + 96
                            mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + ('cd', 36).length + 290
                            if ceil32(('cd', 36).length) <= ('cd', 36).length:
                                idx = 0
                                s = cd[4]
                                t = 0
                                while uint16(idx) < ('cd', 100).length:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162]])
                                        _11788 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_11788 + 32 len mem[_11788]])
                                        continue 
                                    _11710 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162]])
                                    mem[mem[64] + 64] = _11710
                                    _11785 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_11785 + 32 len mem[_11785]])
                                    continue 
                            else:
                                idx = 0
                                s = cd[4]
                                t = 0
                                while uint16(idx) < ('cd', 100).length:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162]])
                                        _11794 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_11794 + 32 len mem[_11794]])
                                        continue 
                                    _11715 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 194 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162]])
                                    mem[mem[64] + 64] = _11715
                                    _11791 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_11791 + 32 len mem[_11791]])
                                    continue 
                return (t == stor1[1])
            if uint32(call.func_hash) >> 224 != unknown_0xbc935be5(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xbcbd6e9c(?????):
                    if unknown_0xc6f339aa(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] < 4
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if cd[4] > 3:
                            revert with 0, 33
                        stor1[cd[4]] = cd[36]
                    else:
                        if unknown_0xc7631f1b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == uint8(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            uint8(stor9.field_0) = uint8(cd[4])
                        else:
                            require unknown_0xd086acc6(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == uint8(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            uint8(stor9.field_8) = uint8(cd[4])
                else:
                    require not msg.value
                    require calldata.size - 4 >= 160
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    if ('cd', 36).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 36).length
                    require cd[36] + ('cd', 36).length + 36 <= calldata.size
                    mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[('cd', 36).length + 160] = 0
                    require cd[132] <= test266151307()
                    require cd[132] + 35 < calldata.size
                    if ('cd', 132).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 132).length) + 130 < 129 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 130 > test266151307():
                        revert with 0, 65
                    mem[ceil32(ceil32(('cd', 36).length)) + 129] = ('cd', 132).length
                    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
                    idx = cd[132] + 36
                    s = ceil32(ceil32(('cd', 36).length)) + 161
                    while idx < cd[132] + (32 * ('cd', 132).length) + 36:
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if not uint8(stor9.field_16):
                        revert with 0, 'Portalarc is disabled.'
                    mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor7.length) + 162
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 130] = stor7.length
                    if not stor7.length:
                        if cd[100] >= stor7.length:
                            revert with 0, 'Invalid token index.'
                        if cd[100] >= stor7.length:
                            revert with 0, 50
                        if not mem[(32 * cd[100]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 174 len 20]:
                            revert with 0, 'Invalid token address.'
                        idx = 0
                        s = 0
                        while idx < stor5.length:
                            mem[0] = 5
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor5[idx].field_0)
                            staticcall stor5[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3506 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_3506] <= 0:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[_3506] > 0
                                continue 
                            if 1 and stor2[2][Mask(248, 8, cd[4])]:
                                revert with 0, 'Redeemed.'
                            mem[0] = cd[4] / 256
                            mem[32] = sha3(2, 2)
                            stor2[2][Mask(248, 8, cd[4])] = 1
                            _4124 = mem[64]
                            mem[mem[64] + 32] = cd[4]
                            _4142 = mem[128]
                            idx = 0
                            while idx < _4142:
                                mem[idx + _4124 + 64] = mem[idx + 160]
                                idx = idx + 32
                                continue 
                            mem[_4124 + _4142 + 64] = cd[68]
                            mem[_4124 + _4142 + 96] = cd[100]
                            if ceil32(_4142) <= _4142:
                                _6080 = mem[64]
                                mem[mem[64]] = _4124 + _4142 + -mem[64] + 96
                                mem[64] = _4124 + _4142 + 128
                                _8670 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = 0
                                s = cd[4]
                                t = sha3(mem[_6080 + 32 len mem[_6080]])
                                while uint16(idx) < _8670:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t
                                        _9344 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        _8670 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_9344 + 32 len mem[_9344]])
                                        continue 
                                    _9028 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t
                                    mem[mem[64] + 64] = _9028
                                    _9341 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _8670 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_9341 + 32 len mem[_9341]])
                                    continue 
                                mem[32] = 1
                                if t != stor1[2]:
                                    revert with 0, 'Unproven.'
                                if not cd[100]:
                                    if cd[68] > eth.balance(this.address):
                                        revert with 0, 'Not enough arc liquidity.'
                                    call msg.sender with:
                                       value cd[68] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Transfer failed.'
                                else:
                                    if cd[100] >= stor7.length:
                                        revert with 0, 50
                                    mem[0] = 7
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor7[cd[100]].field_0)
                                    staticcall stor7[cd[100]].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9748 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9748] < cd[68]:
                                        revert with 0, 'Not enough tokens.'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[68]
                                    require ext_code.size(stor7[cd[100]].field_0)
                                    call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[68]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10004 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_10004] == bool(mem[_10004])
                            else:
                                _6275 = mem[64]
                                mem[mem[64]] = _4124 + _4142 + -mem[64] + 96
                                mem[64] = _4124 + _4142 + 128
                                _8671 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = 0
                                s = cd[4]
                                t = sha3(mem[_6275 + 32 len mem[_6275]])
                                while uint16(idx) < _8671:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t
                                        _9350 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        _8671 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_9350 + 32 len mem[_9350]])
                                        continue 
                                    _9033 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t
                                    mem[mem[64] + 64] = _9033
                                    _9347 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _8671 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_9347 + 32 len mem[_9347]])
                                    continue 
                                mem[32] = 1
                                if t != stor1[2]:
                                    revert with 0, 'Unproven.'
                                if not cd[100]:
                                    if cd[68] > eth.balance(this.address):
                                        revert with 0, 'Not enough arc liquidity.'
                                    call msg.sender with:
                                       value cd[68] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Transfer failed.'
                                else:
                                    if cd[100] >= stor7.length:
                                        revert with 0, 50
                                    mem[0] = 7
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor7[cd[100]].field_0)
                                    staticcall stor7[cd[100]].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9749 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9749] < cd[68]:
                                        revert with 0, 'Not enough tokens.'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[68]
                                    require ext_code.size(stor7[cd[100]].field_0)
                                    call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[68]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10005 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_10005] == bool(mem[_10005])
                        if not s:
                            revert with 0, 'You cannot be trusted.'
                        if 1 and stor2[2][Mask(248, 8, cd[4])]:
                            revert with 0, 'Redeemed.'
                        mem[0] = cd[4] / 256
                        mem[32] = sha3(2, 2)
                        stor2[2][Mask(248, 8, cd[4])] = 1
                        mem[mem[64] + 32] = cd[4]
                        _4006 = mem[128]
                        mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        mem[mem[64] + mem[128] + 64] = cd[68]
                        mem[mem[64] + mem[128] + 96] = cd[100]
                        if ceil32(mem[128]) <= mem[128]:
                            _6077 = mem[64]
                            mem[mem[64]] = mem[128] + 96
                            mem[64] = mem[64] + _4006 + 128
                            _8668 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < _8668:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[_6077 + 32 len mem[_6077]])
                                    _9332 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _8668 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_9332 + 32 len mem[_9332]])
                                    continue 
                                _9018 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[_6077 + 32 len mem[_6077]])
                                mem[mem[64] + 64] = _9018
                                _9329 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _8668 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_9329 + 32 len mem[_9329]])
                                continue 
                            mem[32] = 1
                            if t != stor1[2]:
                                revert with 0, 'Unproven.'
                            if not cd[100]:
                                if cd[68] > eth.balance(this.address):
                                    revert with 0, 'Not enough arc liquidity.'
                                call msg.sender with:
                                   value cd[68] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Transfer failed.'
                            else:
                                if cd[100] >= stor7.length:
                                    revert with 0, 50
                                mem[0] = 7
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor7[cd[100]].field_0)
                                staticcall stor7[cd[100]].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9746 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_9746] < cd[68]:
                                    revert with 0, 'Not enough tokens.'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = cd[68]
                                require ext_code.size(stor7[cd[100]].field_0)
                                call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, cd[68]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10002 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_10002] == bool(mem[_10002])
                        else:
                            _6271 = mem[64]
                            mem[mem[64]] = mem[128] + 96
                            mem[64] = mem[64] + _4006 + 128
                            _8669 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < _8669:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[_6271 + 32 len mem[_6271]])
                                    _9338 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _8669 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_9338 + 32 len mem[_9338]])
                                    continue 
                                _9023 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[_6271 + 32 len mem[_6271]])
                                mem[mem[64] + 64] = _9023
                                _9335 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _8669 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_9335 + 32 len mem[_9335]])
                                continue 
                            mem[32] = 1
                            if t != stor1[2]:
                                revert with 0, 'Unproven.'
                            if not cd[100]:
                                if cd[68] > eth.balance(this.address):
                                    revert with 0, 'Not enough arc liquidity.'
                                call msg.sender with:
                                   value cd[68] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Transfer failed.'
                            else:
                                if cd[100] >= stor7.length:
                                    revert with 0, 50
                                mem[0] = 7
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor7[cd[100]].field_0)
                                staticcall stor7[cd[100]].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9747 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_9747] < cd[68]:
                                    revert with 0, 'Not enough tokens.'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = cd[68]
                                require ext_code.size(stor7[cd[100]].field_0)
                                call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, cd[68]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10003 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_10003] == bool(mem[_10003])
                    else:
                        mem[0] = 7
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 162] = address(stor7.field_0)
                        idx = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 162
                        s = 0
                        while ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor7.length) + 130 > idx:
                            mem[idx + 32] = stor7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if cd[100] >= stor7.length:
                            revert with 0, 'Invalid token index.'
                        if cd[100] >= stor7.length:
                            revert with 0, 50
                        if not mem[(32 * cd[100]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 174 len 20]:
                            revert with 0, 'Invalid token address.'
                        idx = 0
                        s = 0
                        while idx < stor5.length:
                            mem[0] = 5
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor5[idx].field_0)
                            staticcall stor5[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9354 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_9354] <= 0:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[_9354] > 0
                                continue 
                            if 1 and stor2[2][Mask(248, 8, cd[4])]:
                                revert with 0, 'Redeemed.'
                            mem[0] = cd[4] / 256
                            mem[32] = sha3(2, 2)
                            stor2[2][Mask(248, 8, cd[4])] = 1
                            _10372 = mem[64]
                            mem[mem[64] + 32] = cd[4]
                            _10409 = mem[128]
                            idx = 0
                            while idx < _10409:
                                mem[idx + _10372 + 64] = mem[idx + 160]
                                idx = idx + 32
                                continue 
                            mem[_10372 + _10409 + 64] = cd[68]
                            mem[_10372 + _10409 + 96] = cd[100]
                            if ceil32(_10409) <= _10409:
                                _11728 = mem[64]
                                mem[mem[64]] = _10372 + _10409 + -mem[64] + 96
                                mem[64] = _10372 + _10409 + 128
                                _12675 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = 0
                                s = cd[4]
                                t = sha3(mem[_11728 + 32 len mem[_11728]])
                                while uint16(idx) < _12675:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t
                                        _12980 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        _12675 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_12980 + 32 len mem[_12980]])
                                        continue 
                                    _12836 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t
                                    mem[mem[64] + 64] = _12836
                                    _12977 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _12675 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_12977 + 32 len mem[_12977]])
                                    continue 
                                mem[32] = 1
                                if t != stor1[2]:
                                    revert with 0, 'Unproven.'
                                if not cd[100]:
                                    if cd[68] > eth.balance(this.address):
                                        revert with 0, 'Not enough arc liquidity.'
                                    call msg.sender with:
                                       value cd[68] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Transfer failed.'
                                else:
                                    if cd[100] >= stor7.length:
                                        revert with 0, 50
                                    mem[0] = 7
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor7[cd[100]].field_0)
                                    staticcall stor7[cd[100]].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13127 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_13127] < cd[68]:
                                        revert with 0, 'Not enough tokens.'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[68]
                                    require ext_code.size(stor7[cd[100]].field_0)
                                    call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[68]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13243 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_13243] == bool(mem[_13243])
                            else:
                                _11810 = mem[64]
                                mem[mem[64]] = _10372 + _10409 + -mem[64] + 96
                                mem[64] = _10372 + _10409 + 128
                                _12676 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = 0
                                s = cd[4]
                                t = sha3(mem[_11810 + 32 len mem[_11810]])
                                while uint16(idx) < _12676:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t
                                        _12986 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        _12676 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_12986 + 32 len mem[_12986]])
                                        continue 
                                    _12841 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t
                                    mem[mem[64] + 64] = _12841
                                    _12983 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _12676 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_12983 + 32 len mem[_12983]])
                                    continue 
                                mem[32] = 1
                                if t != stor1[2]:
                                    revert with 0, 'Unproven.'
                                if not cd[100]:
                                    if cd[68] > eth.balance(this.address):
                                        revert with 0, 'Not enough arc liquidity.'
                                    call msg.sender with:
                                       value cd[68] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Transfer failed.'
                                else:
                                    if cd[100] >= stor7.length:
                                        revert with 0, 50
                                    mem[0] = 7
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor7[cd[100]].field_0)
                                    staticcall stor7[cd[100]].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13128 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_13128] < cd[68]:
                                        revert with 0, 'Not enough tokens.'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[68]
                                    require ext_code.size(stor7[cd[100]].field_0)
                                    call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[68]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13244 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_13244] == bool(mem[_13244])
                        if not s:
                            revert with 0, 'You cannot be trusted.'
                        if 1 and stor2[2][Mask(248, 8, cd[4])]:
                            revert with 0, 'Redeemed.'
                        mem[0] = cd[4] / 256
                        mem[32] = sha3(2, 2)
                        stor2[2][Mask(248, 8, cd[4])] = 1
                        mem[mem[64] + 32] = cd[4]
                        _10079 = mem[128]
                        mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        mem[mem[64] + mem[128] + 64] = cd[68]
                        mem[mem[64] + mem[128] + 96] = cd[100]
                        if ceil32(mem[128]) <= mem[128]:
                            _11725 = mem[64]
                            mem[mem[64]] = mem[128] + 96
                            mem[64] = mem[64] + _10079 + 128
                            _12673 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < _12673:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[_11725 + 32 len mem[_11725]])
                                    _12968 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _12673 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_12968 + 32 len mem[_12968]])
                                    continue 
                                _12826 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[_11725 + 32 len mem[_11725]])
                                mem[mem[64] + 64] = _12826
                                _12965 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _12673 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_12965 + 32 len mem[_12965]])
                                continue 
                            mem[32] = 1
                            if t != stor1[2]:
                                revert with 0, 'Unproven.'
                            if not cd[100]:
                                if cd[68] > eth.balance(this.address):
                                    revert with 0, 'Not enough arc liquidity.'
                                call msg.sender with:
                                   value cd[68] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Transfer failed.'
                            else:
                                if cd[100] >= stor7.length:
                                    revert with 0, 50
                                mem[0] = 7
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor7[cd[100]].field_0)
                                staticcall stor7[cd[100]].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13125 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_13125] < cd[68]:
                                    revert with 0, 'Not enough tokens.'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = cd[68]
                                require ext_code.size(stor7[cd[100]].field_0)
                                call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, cd[68]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13241 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_13241] == bool(mem[_13241])
                        else:
                            _11806 = mem[64]
                            mem[mem[64]] = mem[128] + 96
                            mem[64] = mem[64] + _10079 + 128
                            _12674 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < _12674:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[_11806 + 32 len mem[_11806]])
                                    _12974 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _12674 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_12974 + 32 len mem[_12974]])
                                    continue 
                                _12831 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[_11806 + 32 len mem[_11806]])
                                mem[mem[64] + 64] = _12831
                                _12971 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _12674 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_12971 + 32 len mem[_12971]])
                                continue 
                            mem[32] = 1
                            if t != stor1[2]:
                                revert with 0, 'Unproven.'
                            if not cd[100]:
                                if cd[68] > eth.balance(this.address):
                                    revert with 0, 'Not enough arc liquidity.'
                                call msg.sender with:
                                   value cd[68] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Transfer failed.'
                            else:
                                if cd[100] >= stor7.length:
                                    revert with 0, 50
                                mem[0] = 7
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor7[cd[100]].field_0)
                                staticcall stor7[cd[100]].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13126 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_13126] < cd[68]:
                                    revert with 0, 'Not enough tokens.'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = cd[68]
                                require ext_code.size(stor7[cd[100]].field_0)
                                call stor7[cd[100]].field_0.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, cd[68]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13242 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_13242] == bool(mem[_13242])
            else:
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 36).length
                require cd[36] + ('cd', 36).length + 36 <= calldata.size
                mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + 160] = 0
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                if ('cd', 68).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 68).length) + 130 < 129 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130 > test266151307():
                    revert with 0, 65
                mem[ceil32(ceil32(('cd', 36).length)) + 129] = ('cd', 68).length
                require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                idx = cd[68] + 36
                s = ceil32(ceil32(('cd', 36).length)) + 161
                while idx < cd[68] + (32 * ('cd', 68).length) + 36:
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if not uint8(stor9.field_16):
                    revert with 0, 'Portalarc is disabled.'
                mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 162
                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130] = stor6.length
                if not stor6.length:
                    if 0 >= stor6.length:
                        revert with 0, 'Invalid token index.'
                    if 0 >= stor6.length:
                        revert with 0, 50
                    if not mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 174 len 20]:
                        revert with 0, 'Invalid token address.'
                    idx = 0
                    s = 0
                    while idx < stor5.length:
                        mem[0] = 5
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor5[idx].field_0)
                        staticcall stor5[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3501 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3501] <= 0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_3501] > 0
                            continue 
                        if block.timestamp < sub_e1ac7084:
                            revert with 0, 'Rescue portal closed.'
                        if 0 >= stor6.length:
                            revert with 0, 50
                        mem[0] = 6
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(stor6.field_0))
                        staticcall address(stor6.field_0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3952 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3983 = mem[_3952]
                        if mem[_3952] <= 0:
                            revert with 0, 'None remain.'
                        if 1 and stor2[1][Mask(248, 8, cd[4])]:
                            revert with 0, 'Redeemed.'
                        mem[0] = cd[4] / 256
                        mem[32] = sha3(1, 2)
                        stor2[1][Mask(248, 8, cd[4])] = 1
                        _4381 = mem[64]
                        mem[mem[64] + 32] = cd[4]
                        _4478 = mem[128]
                        idx = 0
                        while idx < _4478:
                            mem[idx + _4381 + 64] = mem[idx + 160]
                            idx = idx + 32
                            continue 
                        mem[_4381 + _4478 + 64] = 0
                        mem[_4381 + _4478 + 96] = 0
                        if ceil32(_4478) <= _4478:
                            _6067 = mem[64]
                            mem[mem[64]] = _4381 + _4478 + -mem[64] + 96
                            mem[64] = _4381 + _4478 + 128
                            _8662 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                            idx = 0
                            s = cd[4]
                            t = sha3(mem[_6067 + 32 len mem[_6067]])
                            while uint16(idx) < _8662:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t
                                    _9293 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _8662 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_9293 + 32 len mem[_9293]])
                                    continue 
                                _8988 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t
                                mem[mem[64] + 64] = _8988
                                _9290 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _8662 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_9290 + 32 len mem[_9290]])
                                continue 
                            mem[0] = 1
                            mem[32] = 1
                            if t != stor1[1]:
                                revert with 0, 'Unproven.'
                            if block.number < 1:
                                revert with 0, 17
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            mem[mem[64] + 84] = block.hash(block.number - 1)
                            _9838 = mem[64]
                            mem[mem[64]] = 84
                            mem[64] = mem[64] + 116
                            if not _3983:
                                revert with 0, 18
                            require ext_code.size(address(stor6.field_0))
                            staticcall address(stor6.field_0).0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(this.address), sha3(mem[_9838 + 32 len mem[_9838]]) % _3983
                        else:
                            _6258 = mem[64]
                            mem[mem[64]] = _4381 + _4478 + -mem[64] + 96
                            mem[64] = _4381 + _4478 + 128
                            _8663 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                            idx = 0
                            s = cd[4]
                            t = sha3(mem[_6258 + 32 len mem[_6258]])
                            while uint16(idx) < _8663:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t
                                    _9299 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _8663 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_9299 + 32 len mem[_9299]])
                                    continue 
                                _8993 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t
                                mem[mem[64] + 64] = _8993
                                _9296 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _8663 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_9296 + 32 len mem[_9296]])
                                continue 
                            mem[0] = 1
                            mem[32] = 1
                            if t != stor1[1]:
                                revert with 0, 'Unproven.'
                            if block.number < 1:
                                revert with 0, 17
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            mem[mem[64] + 84] = block.hash(block.number - 1)
                            _9841 = mem[64]
                            mem[mem[64]] = 84
                            mem[64] = mem[64] + 116
                            if not _3983:
                                revert with 0, 18
                            require ext_code.size(address(stor6.field_0))
                            staticcall address(stor6.field_0).0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(this.address), sha3(mem[_9841 + 32 len mem[_9841]]) % _3983
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor6.field_0))
                        call address(stor6.field_0).0x42842e0e with:
                             gas gas_remaining wei
                            args this.address, msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor3)
                        staticcall stor3.0x24ebafb3 with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xfeec756c with:
                             gas gas_remaining wei
                            args msg.sender
                        emit 0xc4feb85e: ext_call.return_data[0], msg.sender, address(stor6.field_0)
                    if not s:
                        revert with 0, 'You cannot be trusted.'
                    if block.timestamp < sub_e1ac7084:
                        revert with 0, 'Rescue portal closed.'
                    if 0 >= stor6.length:
                        revert with 0, 50
                    mem[0] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(stor6.field_0))
                    staticcall address(stor6.field_0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3631 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3790 = mem[_3631]
                    if mem[_3631] <= 0:
                        revert with 0, 'None remain.'
                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                        revert with 0, 'Redeemed.'
                    mem[0] = cd[4] / 256
                    mem[32] = sha3(1, 2)
                    stor2[1][Mask(248, 8, cd[4])] = 1
                    mem[mem[64] + 32] = cd[4]
                    _4151 = mem[128]
                    mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                    mem[mem[64] + mem[128] + 64] = 0
                    mem[mem[64] + mem[128] + 96] = 0
                    if ceil32(mem[128]) <= mem[128]:
                        _6064 = mem[64]
                        mem[mem[64]] = mem[128] + 96
                        mem[64] = mem[64] + _4151 + 128
                        _8660 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                        idx = 0
                        s = cd[4]
                        t = 0
                        while uint16(idx) < _8660:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 64] = t + sha3(mem[_6064 + 32 len mem[_6064]])
                                _9281 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _8660 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_9281 + 32 len mem[_9281]])
                                continue 
                            _8978 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                            mem[mem[64] + 32] = t + sha3(mem[_6064 + 32 len mem[_6064]])
                            mem[mem[64] + 64] = _8978
                            _9278 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _8660 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_9278 + 32 len mem[_9278]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        if block.number < 1:
                            revert with 0, 17
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        mem[mem[64] + 84] = block.hash(block.number - 1)
                        _9832 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        if not _3790:
                            revert with 0, 18
                        require ext_code.size(address(stor6.field_0))
                        staticcall address(stor6.field_0).0x2f745c59 with:
                                gas gas_remaining wei
                               args address(this.address), sha3(mem[_9832 + 32 len mem[_9832]]) % _3790
                    else:
                        _6254 = mem[64]
                        mem[mem[64]] = mem[128] + 96
                        mem[64] = mem[64] + _4151 + 128
                        _8661 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                        idx = 0
                        s = cd[4]
                        t = 0
                        while uint16(idx) < _8661:
                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                revert with 0, 50
                            if 1 == bool(s):
                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 64] = t + sha3(mem[_6254 + 32 len mem[_6254]])
                                _9287 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _8661 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_9287 + 32 len mem[_9287]])
                                continue 
                            _8983 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                            mem[mem[64] + 32] = t + sha3(mem[_6254 + 32 len mem[_6254]])
                            mem[mem[64] + 64] = _8983
                            _9284 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if uint16(idx) == 65535:
                                revert with 0, 17
                            _8661 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                            idx = uint16(idx) + 1
                            s = s / 2
                            t = sha3(mem[_9284 + 32 len mem[_9284]])
                            continue 
                        mem[0] = 1
                        mem[32] = 1
                        if t != stor1[1]:
                            revert with 0, 'Unproven.'
                        if block.number < 1:
                            revert with 0, 17
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        mem[mem[64] + 84] = block.hash(block.number - 1)
                        _9835 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        if not _3790:
                            revert with 0, 18
                        require ext_code.size(address(stor6.field_0))
                        staticcall address(stor6.field_0).0x2f745c59 with:
                                gas gas_remaining wei
                               args address(this.address), sha3(mem[_9835 + 32 len mem[_9835]]) % _3790
                else:
                    mem[0] = 6
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 162] = address(stor6.field_0)
                    if (32 * stor6.length) + 32 <= 64:
                        if 0 >= stor6.length:
                            revert with 0, 'Invalid token index.'
                        if 0 >= stor6.length:
                            revert with 0, 50
                        if not address(stor6.field_0):
                            revert with 0, 'Invalid token address.'
                        idx = 0
                        s = 0
                        while idx < stor5.length:
                            mem[0] = 5
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor5[idx].field_0)
                            staticcall stor5[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3504 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_3504] <= 0:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[_3504] > 0
                                continue 
                            if block.timestamp < sub_e1ac7084:
                                revert with 0, 'Rescue portal closed.'
                            if 0 >= stor6.length:
                                revert with 0, 50
                            mem[0] = 6
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(stor6.field_0))
                            staticcall address(stor6.field_0).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3953 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3985 = mem[_3953]
                            if mem[_3953] <= 0:
                                revert with 0, 'None remain.'
                            if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                revert with 0, 'Redeemed.'
                            mem[0] = cd[4] / 256
                            mem[32] = sha3(1, 2)
                            stor2[1][Mask(248, 8, cd[4])] = 1
                            _4384 = mem[64]
                            mem[mem[64] + 32] = cd[4]
                            _4486 = mem[128]
                            idx = 0
                            while idx < _4486:
                                mem[idx + _4384 + 64] = mem[idx + 160]
                                idx = idx + 32
                                continue 
                            mem[_4384 + _4486 + 64] = 0
                            mem[_4384 + _4486 + 96] = 0
                            if ceil32(_4486) <= _4486:
                                _6074 = mem[64]
                                mem[mem[64]] = _4384 + _4486 + -mem[64] + 96
                                mem[64] = _4384 + _4486 + 128
                                _8666 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = 0
                                s = cd[4]
                                t = sha3(mem[_6074 + 32 len mem[_6074]])
                                while uint16(idx) < _8666:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t
                                        _9320 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        _8666 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_9320 + 32 len mem[_9320]])
                                        continue 
                                    _9008 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t
                                    mem[mem[64] + 64] = _9008
                                    _9317 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _8666 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_9317 + 32 len mem[_9317]])
                                    continue 
                                mem[0] = 1
                                mem[32] = 1
                                if t != stor1[1]:
                                    revert with 0, 'Unproven.'
                                if block.number < 1:
                                    revert with 0, 17
                                mem[mem[64] + 32] = block.timestamp
                                mem[mem[64] + 64] = address(msg.sender)
                                mem[mem[64] + 84] = block.hash(block.number - 1)
                                _9852 = mem[64]
                                mem[mem[64]] = 84
                                mem[64] = mem[64] + 116
                                if not _3985:
                                    revert with 0, 18
                                require ext_code.size(address(stor6.field_0))
                                staticcall address(stor6.field_0).0x2f745c59 with:
                                        gas gas_remaining wei
                                       args address(this.address), sha3(mem[_9852 + 32 len mem[_9852]]) % _3985
                            else:
                                _6267 = mem[64]
                                mem[mem[64]] = _4384 + _4486 + -mem[64] + 96
                                mem[64] = _4384 + _4486 + 128
                                _8667 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = 0
                                s = cd[4]
                                t = sha3(mem[_6267 + 32 len mem[_6267]])
                                while uint16(idx) < _8667:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t
                                        _9326 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        _8667 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_9326 + 32 len mem[_9326]])
                                        continue 
                                    _9013 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t
                                    mem[mem[64] + 64] = _9013
                                    _9323 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _8667 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_9323 + 32 len mem[_9323]])
                                    continue 
                                mem[0] = 1
                                mem[32] = 1
                                if t != stor1[1]:
                                    revert with 0, 'Unproven.'
                                if block.number < 1:
                                    revert with 0, 17
                                mem[mem[64] + 32] = block.timestamp
                                mem[mem[64] + 64] = address(msg.sender)
                                mem[mem[64] + 84] = block.hash(block.number - 1)
                                _9855 = mem[64]
                                mem[mem[64]] = 84
                                mem[64] = mem[64] + 116
                                if not _3985:
                                    revert with 0, 18
                                require ext_code.size(address(stor6.field_0))
                                staticcall address(stor6.field_0).0x2f745c59 with:
                                        gas gas_remaining wei
                                       args address(this.address), sha3(mem[_9855 + 32 len mem[_9855]]) % _3985
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor6.field_0))
                            call address(stor6.field_0).0x42842e0e with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor3)
                            staticcall stor3.0x24ebafb3 with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xfeec756c with:
                                 gas gas_remaining wei
                                args msg.sender
                            emit 0xc4feb85e: ext_call.return_data[0], msg.sender, address(stor6.field_0)
                        if not s:
                            revert with 0, 'You cannot be trusted.'
                        if block.timestamp < sub_e1ac7084:
                            revert with 0, 'Rescue portal closed.'
                        if 0 >= stor6.length:
                            revert with 0, 50
                        mem[0] = 6
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(stor6.field_0))
                        staticcall address(stor6.field_0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3632 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3791 = mem[_3632]
                        if mem[_3632] <= 0:
                            revert with 0, 'None remain.'
                        if 1 and stor2[1][Mask(248, 8, cd[4])]:
                            revert with 0, 'Redeemed.'
                        mem[0] = cd[4] / 256
                        mem[32] = sha3(1, 2)
                        stor2[1][Mask(248, 8, cd[4])] = 1
                        mem[mem[64] + 32] = cd[4]
                        _4152 = mem[128]
                        mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        mem[mem[64] + mem[128] + 64] = 0
                        mem[mem[64] + mem[128] + 96] = 0
                        if ceil32(mem[128]) <= mem[128]:
                            _6071 = mem[64]
                            mem[mem[64]] = mem[128] + 96
                            mem[64] = mem[64] + _4152 + 128
                            _8664 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < _8664:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[_6071 + 32 len mem[_6071]])
                                    _9308 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _8664 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_9308 + 32 len mem[_9308]])
                                    continue 
                                _8998 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[_6071 + 32 len mem[_6071]])
                                mem[mem[64] + 64] = _8998
                                _9305 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _8664 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_9305 + 32 len mem[_9305]])
                                continue 
                            mem[0] = 1
                            mem[32] = 1
                            if t != stor1[1]:
                                revert with 0, 'Unproven.'
                            if block.number < 1:
                                revert with 0, 17
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            mem[mem[64] + 84] = block.hash(block.number - 1)
                            _9846 = mem[64]
                            mem[mem[64]] = 84
                            mem[64] = mem[64] + 116
                            if not _3791:
                                revert with 0, 18
                            require ext_code.size(address(stor6.field_0))
                            staticcall address(stor6.field_0).0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(this.address), sha3(mem[_9846 + 32 len mem[_9846]]) % _3791
                        else:
                            _6263 = mem[64]
                            mem[mem[64]] = mem[128] + 96
                            mem[64] = mem[64] + _4152 + 128
                            _8665 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < _8665:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[_6263 + 32 len mem[_6263]])
                                    _9314 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _8665 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_9314 + 32 len mem[_9314]])
                                    continue 
                                _9003 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[_6263 + 32 len mem[_6263]])
                                mem[mem[64] + 64] = _9003
                                _9311 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _8665 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_9311 + 32 len mem[_9311]])
                                continue 
                            mem[0] = 1
                            mem[32] = 1
                            if t != stor1[1]:
                                revert with 0, 'Unproven.'
                            if block.number < 1:
                                revert with 0, 17
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            mem[mem[64] + 84] = block.hash(block.number - 1)
                            _9849 = mem[64]
                            mem[mem[64]] = 84
                            mem[64] = mem[64] + 116
                            if not _3791:
                                revert with 0, 18
                            require ext_code.size(address(stor6.field_0))
                            staticcall address(stor6.field_0).0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(this.address), sha3(mem[_9849 + 32 len mem[_9849]]) % _3791
                    else:
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 194] = address(stor6.field_256)
                        idx = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 194
                        s = 1
                        while ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + (32 * stor6.length) + 130 > idx:
                            mem[idx + 32] = stor6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if 0 >= stor6.length:
                            revert with 0, 'Invalid token index.'
                        if 0 >= stor6.length:
                            revert with 0, 50
                        if not address(stor6.field_0):
                            revert with 0, 'Invalid token address.'
                        idx = 0
                        s = 0
                        while idx < stor5.length:
                            mem[0] = 5
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor5[idx].field_0)
                            staticcall stor5[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9304 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_9304] <= 0:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[_9304] > 0
                                continue 
                            if block.timestamp < sub_e1ac7084:
                                revert with 0, 'Rescue portal closed.'
                            if 0 >= stor6.length:
                                revert with 0, 50
                            mem[0] = 6
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(stor6.field_0))
                            staticcall address(stor6.field_0).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9922 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10001 = mem[_9922]
                            if mem[_9922] <= 0:
                                revert with 0, 'None remain.'
                            if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                revert with 0, 'Redeemed.'
                            mem[0] = cd[4] / 256
                            mem[32] = sha3(1, 2)
                            stor2[1][Mask(248, 8, cd[4])] = 1
                            _10648 = mem[64]
                            mem[mem[64] + 32] = cd[4]
                            _10716 = mem[128]
                            idx = 0
                            while idx < _10716:
                                mem[idx + _10648 + 64] = mem[idx + 160]
                                idx = idx + 32
                                continue 
                            mem[_10648 + _10716 + 64] = 0
                            mem[_10648 + _10716 + 96] = 0
                            if ceil32(_10716) <= _10716:
                                _11722 = mem[64]
                                mem[mem[64]] = _10648 + _10716 + -mem[64] + 96
                                mem[64] = _10648 + _10716 + 128
                                _12671 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = 0
                                s = cd[4]
                                t = sha3(mem[_11722 + 32 len mem[_11722]])
                                while uint16(idx) < _12671:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t
                                        _12956 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        _12671 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_12956 + 32 len mem[_12956]])
                                        continue 
                                    _12816 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t
                                    mem[mem[64] + 64] = _12816
                                    _12953 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _12671 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_12953 + 32 len mem[_12953]])
                                    continue 
                                mem[0] = 1
                                mem[32] = 1
                                if t != stor1[1]:
                                    revert with 0, 'Unproven.'
                                if block.number < 1:
                                    revert with 0, 17
                                mem[mem[64] + 32] = block.timestamp
                                mem[mem[64] + 64] = address(msg.sender)
                                mem[mem[64] + 84] = block.hash(block.number - 1)
                                _13167 = mem[64]
                                mem[mem[64]] = 84
                                mem[64] = mem[64] + 116
                                if not _10001:
                                    revert with 0, 18
                                require ext_code.size(address(stor6.field_0))
                                staticcall address(stor6.field_0).0x2f745c59 with:
                                        gas gas_remaining wei
                                       args address(this.address), sha3(mem[_13167 + 32 len mem[_13167]]) % _10001
                            else:
                                _11802 = mem[64]
                                mem[mem[64]] = _10648 + _10716 + -mem[64] + 96
                                mem[64] = _10648 + _10716 + 128
                                _12672 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = 0
                                s = cd[4]
                                t = sha3(mem[_11802 + 32 len mem[_11802]])
                                while uint16(idx) < _12672:
                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        revert with 0, 50
                                    if 1 == bool(s):
                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 64] = t
                                        _12962 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        _12672 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_12962 + 32 len mem[_12962]])
                                        continue 
                                    _12821 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 32] = t
                                    mem[mem[64] + 64] = _12821
                                    _12959 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _12672 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_12959 + 32 len mem[_12959]])
                                    continue 
                                mem[0] = 1
                                mem[32] = 1
                                if t != stor1[1]:
                                    revert with 0, 'Unproven.'
                                if block.number < 1:
                                    revert with 0, 17
                                mem[mem[64] + 32] = block.timestamp
                                mem[mem[64] + 64] = address(msg.sender)
                                mem[mem[64] + 84] = block.hash(block.number - 1)
                                _13170 = mem[64]
                                mem[mem[64]] = 84
                                mem[64] = mem[64] + 116
                                if not _10001:
                                    revert with 0, 18
                                require ext_code.size(address(stor6.field_0))
                                staticcall address(stor6.field_0).0x2f745c59 with:
                                        gas gas_remaining wei
                                       args address(this.address), sha3(mem[_13170 + 32 len mem[_13170]]) % _10001
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor6.field_0))
                            call address(stor6.field_0).0x42842e0e with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor3)
                            staticcall stor3.0x24ebafb3 with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xfeec756c with:
                                 gas gas_remaining wei
                                args msg.sender
                            emit 0xc4feb85e: ext_call.return_data[0], msg.sender, address(stor6.field_0)
                        if not s:
                            revert with 0, 'You cannot be trusted.'
                        if block.timestamp < sub_e1ac7084:
                            revert with 0, 'Rescue portal closed.'
                        if 0 >= stor6.length:
                            revert with 0, 50
                        mem[0] = 6
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(stor6.field_0))
                        staticcall address(stor6.field_0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9537 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9599 = mem[_9537]
                        if mem[_9537] <= 0:
                            revert with 0, 'None remain.'
                        if 1 and stor2[1][Mask(248, 8, cd[4])]:
                            revert with 0, 'Redeemed.'
                        mem[0] = cd[4] / 256
                        mem[32] = sha3(1, 2)
                        stor2[1][Mask(248, 8, cd[4])] = 1
                        mem[mem[64] + 32] = cd[4]
                        _10422 = mem[128]
                        mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        mem[mem[64] + mem[128] + 64] = 0
                        mem[mem[64] + mem[128] + 96] = 0
                        if ceil32(mem[128]) <= mem[128]:
                            _11719 = mem[64]
                            mem[mem[64]] = mem[128] + 96
                            mem[64] = mem[64] + _10422 + 128
                            _12669 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < _12669:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[_11719 + 32 len mem[_11719]])
                                    _12944 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _12669 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_12944 + 32 len mem[_12944]])
                                    continue 
                                _12806 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[_11719 + 32 len mem[_11719]])
                                mem[mem[64] + 64] = _12806
                                _12941 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _12669 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_12941 + 32 len mem[_12941]])
                                continue 
                            mem[0] = 1
                            mem[32] = 1
                            if t != stor1[1]:
                                revert with 0, 'Unproven.'
                            if block.number < 1:
                                revert with 0, 17
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            mem[mem[64] + 84] = block.hash(block.number - 1)
                            _13161 = mem[64]
                            mem[mem[64]] = 84
                            mem[64] = mem[64] + 116
                            if not _9599:
                                revert with 0, 18
                            require ext_code.size(address(stor6.field_0))
                            staticcall address(stor6.field_0).0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(this.address), sha3(mem[_13161 + 32 len mem[_13161]]) % _9599
                        else:
                            _11798 = mem[64]
                            mem[mem[64]] = mem[128] + 96
                            mem[64] = mem[64] + _10422 + 128
                            _12670 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                            idx = 0
                            s = cd[4]
                            t = 0
                            while uint16(idx) < _12670:
                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                    revert with 0, 50
                                if 1 == bool(s):
                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                    mem[mem[64] + 64] = t + sha3(mem[_11798 + 32 len mem[_11798]])
                                    _12950 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[64] = mem[64] + 96
                                    if uint16(idx) == 65535:
                                        revert with 0, 17
                                    _12670 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = uint16(idx) + 1
                                    s = s / 2
                                    t = sha3(mem[_12950 + 32 len mem[_12950]])
                                    continue 
                                _12811 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                mem[mem[64] + 32] = t + sha3(mem[_11798 + 32 len mem[_11798]])
                                mem[mem[64] + 64] = _12811
                                _12947 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                _12670 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                idx = uint16(idx) + 1
                                s = s / 2
                                t = sha3(mem[_12947 + 32 len mem[_12947]])
                                continue 
                            mem[0] = 1
                            mem[32] = 1
                            if t != stor1[1]:
                                revert with 0, 'Unproven.'
                            if block.number < 1:
                                revert with 0, 17
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            mem[mem[64] + 84] = block.hash(block.number - 1)
                            _13164 = mem[64]
                            mem[mem[64]] = 84
                            mem[64] = mem[64] + 116
                            if not _9599:
                                revert with 0, 18
                            require ext_code.size(address(stor6.field_0))
                            staticcall address(stor6.field_0).0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(this.address), sha3(mem[_13164 + 32 len mem[_13164]]) % _9599
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6.field_0))
                call address(stor6.field_0).0x42842e0e with:
                     gas gas_remaining wei
                    args this.address, msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor3)
                staticcall stor3.0x24ebafb3 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xfeec756c with:
                     gas gas_remaining wei
                    args msg.sender
                emit 0xc4feb85e: ext_call.return_data[0], msg.sender, address(stor6.field_0)
        else:
            if unknown_0x4131c8d6(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x807f5a3a(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x4131c8d6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] < 4
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        idx = 0
                        while idx < 256:
                            if cd[4] > 3:
                                revert with 0, 33
                            mem[0] = idx
                            mem[32] = sha3(cd[4], 2)
                            stor2[cd[4]][idx] = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    if unknown_0x509e3c22(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return bool(1 << uint8(cd[4]) and stor2[1][Mask(248, 8, cd[4])])
                    if uint32(call.func_hash) >> 224 != unknown_0x66b9d3e0(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x6a4acb3a(?????):
                            require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            owner = 0
                            emit OwnershipTransferred(owner, 0);
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stor7.length++
                            stor7[stor7.length].field_0 = address(cd[4])
                    require not msg.value
                    mem[64] = (32 * stor6.length) + 160
                    mem[128] = stor6.length
                    if not stor6.length:
                        mem[(32 * stor6.length) + 160] = 32
                        mem[(32 * stor6.length) + 192] = stor6.length
                        idx = 0
                        s = (32 * stor6.length) + 224
                        t = 160
                        while idx < stor6.length:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from (32 * stor6.length) + 160
                           len (96 * stor6.length) + 64
                    mem[160] = address(stor6.field_0)
                    idx = 160
                    s = 0
                    while (32 * stor6.length) + 128 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(32 * stor6.length) + 160] = 32
                    mem[(32 * stor6.length) + 192] = stor6.length
                    idx = 0
                    s = mem[64] + 64
                    t = 160
                    while idx < stor6.length:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (64 * stor6.length) + -mem[64] + 224
                if unknown_0x807f5a3a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if stor7.length:
                        idx = 160
                        s = 0
                        while (32 * stor7.length) + 128 > idx:
                            mem[idx + 32] = stor7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if cd[4] >= stor7.length:
                        revert with 0, 'Invalid token index.'
                    require cd[4] > 0
                    require cd[4] < stor7.length
                    stor7[cd[4]].field_0 = 0
                else:
                    if unknown_0x89476069(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit 0x86ba4ab4: ext_call.return_data[0], msg.sender, address(cd[4])
                    else:
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return owner
                        if unknown_0x8e40c7e8(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if stor5.length:
                                mem[160] = address(stor5.field_0)
                                if (32 * stor5.length) + 32 > 64:
                                    mem[192] = address(stor5.field_256)
                                    idx = 192
                                    s = 1
                                    while (32 * stor5.length) + 128 > idx:
                                        mem[idx + 32] = stor5[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                            mem[(32 * stor5.length) + 160] = 32
                            mem[(32 * stor5.length) + 192] = stor5.length
                            idx = 0
                            s = (32 * stor5.length) + 224
                            t = 160
                            while idx < stor5.length:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from (32 * stor5.length) + 160
                               len (96 * stor5.length) + 64
                        require unknown_0x96ad8ed3(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == address(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if stor7.length:
                            if (32 * stor7.length) + 32 > 64:
                                idx = 192
                                s = 1
                                while (32 * stor7.length) + 128 > idx:
                                    mem[idx + 32] = stor7[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        if cd[4] >= stor7.length:
                            revert with 0, 'Invalid token index.'
                        require cd[4] > 0
                        if cd[4] >= stor7.length:
                            revert with 0, 50
                        stor7[cd[4]].field_0 = address(cd[36])
            else:
                if unknown_0x23b94806(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x014dea4d(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x02502468(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x10e77a6a(?????):
                                if uint32(call.func_hash) >> 224 != unknown_0x150b7a02(?????):
                                    require unknown_0x238dafe0(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    return bool(uint8(stor9.field_16))
                                require not msg.value
                                require calldata.size - 4 >= 128
                                require cd[4] == address(cd[4])
                                require cd[36] == address(cd[36])
                                require cd[100] <= test266151307()
                                require calldata.size > cd[100] + 35
                                if ('cd', 100).length > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(('cd', 100).length)) + 129 < 128 or ceil32(ceil32(('cd', 100).length)) + 129 > test266151307():
                                    revert with 0, 65
                                require cd[100] + ('cd', 100).length + 36 <= calldata.size
                                return 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require calldata.size > cd[4] + 35
                            if ('cd', 4).length > test266151307():
                                revert with 0, 65
                            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                revert with 0, 65
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            s = 160
                            idx = cd[4] + 36
                            while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                                require cd[idx] == address(cd[idx])
                                mem[s] = cd[idx]
                                s = s + 32
                                idx = idx + 32
                                continue 
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stor5.length = ('cd', 4).length
                            if not ('cd', 4).length:
                                idx = 0
                                while stor5.length > idx:
                                    stor5[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 160
                                while (32 * ('cd', 4).length) + 160 > idx:
                                    stor5[s].field_0 = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                                while stor5.length > idx:
                                    stor5[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 160
                            require cd[36] <= test266151307()
                            require cd[36] + 35 < calldata.size
                            if ('cd', 36).length > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                                revert with 0, 65
                            mem[128] = ('cd', 36).length
                            require cd[36] + ('cd', 36).length + 36 <= calldata.size
                            mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                            mem[('cd', 36).length + 160] = 0
                            require cd[132] <= test266151307()
                            require cd[132] + 35 < calldata.size
                            if ('cd', 132).length > test266151307():
                                revert with 0, 65
                            if ceil32(32 * ('cd', 132).length) + 130 < 129 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 130 > test266151307():
                                revert with 0, 65
                            mem[ceil32(ceil32(('cd', 36).length)) + 129] = ('cd', 132).length
                            require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
                            idx = cd[132] + 36
                            s = ceil32(ceil32(('cd', 36).length)) + 161
                            while idx < cd[132] + (32 * ('cd', 132).length) + 36:
                                mem[s] = cd[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            if cd[68] <= 0:
                                revert with 0, 'Invalid token.'
                            if not uint8(stor9.field_16):
                                revert with 0, 'Portalarc is disabled.'
                            mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 162
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 130] = stor6.length
                            if not stor6.length:
                                if cd[68] >= stor6.length:
                                    revert with 0, 'Invalid token index.'
                                if cd[68] >= stor6.length:
                                    revert with 0, 50
                                if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 174 len 20]:
                                    revert with 0, 'Invalid token address.'
                                idx = 0
                                s = 0
                                while idx < stor5.length:
                                    mem[0] = 5
                                    mem[mem[64] + 4] = msg.sender
                                    require ext_code.size(stor5[idx].field_0)
                                    staticcall stor5[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3463 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_3463] <= 0:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = mem[_3463] > 0
                                        continue 
                                    if cd[68]:
                                        if cd[68] >= stor6.length:
                                            revert with 0, 50
                                        mem[0] = 6
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3932 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_3932] <= 0:
                                            revert with 0, 'None remain.'
                                        if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                            revert with 0, 'Redeemed.'
                                        mem[0] = cd[4] / 256
                                        mem[32] = sha3(1, 2)
                                        stor2[1][Mask(248, 8, cd[4])] = 1
                                        _4315 = mem[64]
                                        mem[mem[64] + 32] = cd[4]
                                        _4366 = mem[128]
                                        idx = 0
                                        while idx < _4366:
                                            mem[idx + _4315 + 64] = mem[idx + 160]
                                            idx = idx + 32
                                            continue 
                                        mem[_4315 + _4366 + 64] = cd[68]
                                        mem[_4315 + _4366 + 96] = cd[100]
                                        if ceil32(_4366) <= _4366:
                                            _5977 = mem[64]
                                            mem[mem[64]] = _4315 + _4366 + -mem[64] + 96
                                            mem[64] = _4315 + _4366 + 128
                                            _8644 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = sha3(mem[_5977 + 32 len mem[_5977]])
                                            while uint16(idx) < _8644:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t
                                                    _9169 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8644 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9169 + 32 len mem[_9169]])
                                                    continue 
                                                _8888 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t
                                                mem[mem[64] + 64] = _8888
                                                _9166 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8644 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9166 + 32 len mem[_9166]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = cd[100]
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            call stor6[cd[68]].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, cd[100]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 == cd[68]:
                                                mem[mem[64] + 4] = cd[100]
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x24ebafb3 with:
                                                        gas gas_remaining wei
                                                       args cd[100]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9809 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9809] == mem[_9809 + 12 len 20]
                                                require ext_code.size(mem[_9809 + 12 len 20])
                                                call mem[_9809 + 12 len 20].0xfeec756c with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                        else:
                                            _6147 = mem[64]
                                            mem[mem[64]] = _4315 + _4366 + -mem[64] + 96
                                            mem[64] = _4315 + _4366 + 128
                                            _8645 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = sha3(mem[_6147 + 32 len mem[_6147]])
                                            while uint16(idx) < _8645:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t
                                                    _9175 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8645 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9175 + 32 len mem[_9175]])
                                                    continue 
                                                _8893 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t
                                                mem[mem[64] + 64] = _8893
                                                _9172 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8645 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9172 + 32 len mem[_9172]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = cd[100]
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            call stor6[cd[68]].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, cd[100]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 == cd[68]:
                                                mem[mem[64] + 4] = cd[100]
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x24ebafb3 with:
                                                        gas gas_remaining wei
                                                       args cd[100]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9810 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9810] == mem[_9810 + 12 len 20]
                                                require ext_code.size(mem[_9810 + 12 len 20])
                                                call mem[_9810 + 12 len 20].0xfeec756c with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                    else:
                                        if block.timestamp < sub_e1ac7084:
                                            revert with 0, 'Rescue portal closed.'
                                        if cd[68] >= stor6.length:
                                            revert with 0, 50
                                        mem[0] = 6
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3948 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_3948] <= 0:
                                            revert with 0, 'None remain.'
                                        if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                            revert with 0, 'Redeemed.'
                                        mem[0] = cd[4] / 256
                                        mem[32] = sha3(1, 2)
                                        stor2[1][Mask(248, 8, cd[4])] = 1
                                        _4367 = mem[64]
                                        mem[mem[64] + 32] = cd[4]
                                        _4451 = mem[128]
                                        idx = 0
                                        while idx < _4451:
                                            mem[idx + _4367 + 64] = mem[idx + 160]
                                            idx = idx + 32
                                            continue 
                                        mem[_4367 + _4451 + 64] = cd[68]
                                        mem[_4367 + _4451 + 96] = cd[100]
                                        if ceil32(_4451) <= _4451:
                                            _5980 = mem[64]
                                            mem[mem[64]] = _4367 + _4451 + -mem[64] + 96
                                            mem[64] = _4367 + _4451 + 128
                                            _8646 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = sha3(mem[_5980 + 32 len mem[_5980]])
                                            while uint16(idx) < _8646:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t
                                                    _9181 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8646 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9181 + 32 len mem[_9181]])
                                                    continue 
                                                _8898 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t
                                                mem[mem[64] + 64] = _8898
                                                _9178 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8646 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9178 + 32 len mem[_9178]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = cd[100]
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            call stor6[cd[68]].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, cd[100]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 == cd[68]:
                                                mem[mem[64] + 4] = cd[100]
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x24ebafb3 with:
                                                        gas gas_remaining wei
                                                       args cd[100]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9811 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9811] == mem[_9811 + 12 len 20]
                                                require ext_code.size(mem[_9811 + 12 len 20])
                                                call mem[_9811 + 12 len 20].0xfeec756c with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                        else:
                                            _6151 = mem[64]
                                            mem[mem[64]] = _4367 + _4451 + -mem[64] + 96
                                            mem[64] = _4367 + _4451 + 128
                                            _8647 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = sha3(mem[_6151 + 32 len mem[_6151]])
                                            while uint16(idx) < _8647:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t
                                                    _9187 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8647 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9187 + 32 len mem[_9187]])
                                                    continue 
                                                _8903 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t
                                                mem[mem[64] + 64] = _8903
                                                _9184 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8647 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9184 + 32 len mem[_9184]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = cd[100]
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            call stor6[cd[68]].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, cd[100]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 == cd[68]:
                                                mem[mem[64] + 4] = cd[100]
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x24ebafb3 with:
                                                        gas gas_remaining wei
                                                       args cd[100]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9812 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9812] == mem[_9812 + 12 len 20]
                                                require ext_code.size(mem[_9812 + 12 len 20])
                                                call mem[_9812 + 12 len 20].0xfeec756c with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                    emit 0xc4feb85e: cd[100], msg.sender, stor6[cd[68]].field_0
                                if not s:
                                    revert with 0, 'You cannot be trusted.'
                                if cd[68]:
                                    if cd[68] >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6[cd[68]].field_0)
                                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3559 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_3559] <= 0:
                                        revert with 0, 'None remain.'
                                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                        revert with 0, 'Redeemed.'
                                    mem[0] = cd[4] / 256
                                    mem[32] = sha3(1, 2)
                                    stor2[1][Mask(248, 8, cd[4])] = 1
                                    mem[mem[64] + 32] = cd[4]
                                    _4129 = mem[128]
                                    mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                    mem[mem[64] + mem[128] + 64] = cd[68]
                                    mem[mem[64] + mem[128] + 96] = cd[100]
                                    if ceil32(mem[128]) <= mem[128]:
                                        _5971 = mem[64]
                                        mem[mem[64]] = mem[128] + 96
                                        mem[64] = mem[64] + _4129 + 128
                                        _8640 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = 0
                                        while uint16(idx) < _8640:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t + sha3(mem[_5971 + 32 len mem[_5971]])
                                                _9145 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8640 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9145 + 32 len mem[_9145]])
                                                continue 
                                            _8868 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t + sha3(mem[_5971 + 32 len mem[_5971]])
                                            mem[mem[64] + 64] = _8868
                                            _9142 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8640 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9142 + 32 len mem[_9142]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = cd[100]
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        call stor6[cd[68]].field_0.0x42842e0e with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender, cd[100]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if 0 == cd[68]:
                                            mem[mem[64] + 4] = cd[100]
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x24ebafb3 with:
                                                    gas gas_remaining wei
                                                   args cd[100]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9805 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9805] == mem[_9805 + 12 len 20]
                                            require ext_code.size(mem[_9805 + 12 len 20])
                                            call mem[_9805 + 12 len 20].0xfeec756c with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                    else:
                                        _6139 = mem[64]
                                        mem[mem[64]] = mem[128] + 96
                                        mem[64] = mem[64] + _4129 + 128
                                        _8641 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = 0
                                        while uint16(idx) < _8641:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t + sha3(mem[_6139 + 32 len mem[_6139]])
                                                _9151 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8641 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9151 + 32 len mem[_9151]])
                                                continue 
                                            _8873 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t + sha3(mem[_6139 + 32 len mem[_6139]])
                                            mem[mem[64] + 64] = _8873
                                            _9148 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8641 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9148 + 32 len mem[_9148]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = cd[100]
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        call stor6[cd[68]].field_0.0x42842e0e with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender, cd[100]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if 0 == cd[68]:
                                            mem[mem[64] + 4] = cd[100]
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x24ebafb3 with:
                                                    gas gas_remaining wei
                                                   args cd[100]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9806 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9806] == mem[_9806 + 12 len 20]
                                            require ext_code.size(mem[_9806 + 12 len 20])
                                            call mem[_9806 + 12 len 20].0xfeec756c with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                else:
                                    if block.timestamp < sub_e1ac7084:
                                        revert with 0, 'Rescue portal closed.'
                                    if cd[68] >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6[cd[68]].field_0)
                                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3586 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_3586] <= 0:
                                        revert with 0, 'None remain.'
                                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                        revert with 0, 'Redeemed.'
                                    mem[0] = cd[4] / 256
                                    mem[32] = sha3(1, 2)
                                    stor2[1][Mask(248, 8, cd[4])] = 1
                                    mem[mem[64] + 32] = cd[4]
                                    _4147 = mem[128]
                                    mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                    mem[mem[64] + mem[128] + 64] = cd[68]
                                    mem[mem[64] + mem[128] + 96] = cd[100]
                                    if ceil32(mem[128]) <= mem[128]:
                                        _5974 = mem[64]
                                        mem[mem[64]] = mem[128] + 96
                                        mem[64] = mem[64] + _4147 + 128
                                        _8642 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = 0
                                        while uint16(idx) < _8642:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t + sha3(mem[_5974 + 32 len mem[_5974]])
                                                _9157 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8642 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9157 + 32 len mem[_9157]])
                                                continue 
                                            _8878 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t + sha3(mem[_5974 + 32 len mem[_5974]])
                                            mem[mem[64] + 64] = _8878
                                            _9154 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8642 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9154 + 32 len mem[_9154]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = cd[100]
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        call stor6[cd[68]].field_0.0x42842e0e with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender, cd[100]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if 0 == cd[68]:
                                            mem[mem[64] + 4] = cd[100]
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x24ebafb3 with:
                                                    gas gas_remaining wei
                                                   args cd[100]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9807 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9807] == mem[_9807 + 12 len 20]
                                            require ext_code.size(mem[_9807 + 12 len 20])
                                            call mem[_9807 + 12 len 20].0xfeec756c with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                    else:
                                        _6143 = mem[64]
                                        mem[mem[64]] = mem[128] + 96
                                        mem[64] = mem[64] + _4147 + 128
                                        _8643 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = 0
                                        while uint16(idx) < _8643:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t + sha3(mem[_6143 + 32 len mem[_6143]])
                                                _9163 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8643 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9163 + 32 len mem[_9163]])
                                                continue 
                                            _8883 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t + sha3(mem[_6143 + 32 len mem[_6143]])
                                            mem[mem[64] + 64] = _8883
                                            _9160 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8643 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9160 + 32 len mem[_9160]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = cd[100]
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        call stor6[cd[68]].field_0.0x42842e0e with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender, cd[100]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if 0 == cd[68]:
                                            mem[mem[64] + 4] = cd[100]
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x24ebafb3 with:
                                                    gas gas_remaining wei
                                                   args cd[100]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9808 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9808] == mem[_9808 + 12 len 20]
                                            require ext_code.size(mem[_9808 + 12 len 20])
                                            call mem[_9808 + 12 len 20].0xfeec756c with:
                                                 gas gas_remaining wei
                                                args msg.sender
                            else:
                                mem[0] = 6
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 162] = address(stor6.field_0)
                                if (32 * stor6.length) + 32 <= 64:
                                    if cd[68] >= stor6.length:
                                        revert with 0, 'Invalid token index.'
                                    if cd[68] >= stor6.length:
                                        revert with 0, 50
                                    if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 174 len 20]:
                                        revert with 0, 'Invalid token address.'
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length:
                                        mem[0] = 5
                                        mem[mem[64] + 4] = msg.sender
                                        require ext_code.size(stor5[idx].field_0)
                                        staticcall stor5[idx].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args msg.sender
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3469 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_3469] <= 0:
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = mem[_3469] > 0
                                            continue 
                                        if cd[68]:
                                            if cd[68] >= stor6.length:
                                                revert with 0, 50
                                            mem[0] = 6
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3934 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_3934] <= 0:
                                                revert with 0, 'None remain.'
                                            if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                                revert with 0, 'Redeemed.'
                                            mem[0] = cd[4] / 256
                                            mem[32] = sha3(1, 2)
                                            stor2[1][Mask(248, 8, cd[4])] = 1
                                            _4320 = mem[64]
                                            mem[mem[64] + 32] = cd[4]
                                            _4377 = mem[128]
                                            idx = 0
                                            while idx < _4377:
                                                mem[idx + _4320 + 64] = mem[idx + 160]
                                                idx = idx + 32
                                                continue 
                                            mem[_4320 + _4377 + 64] = cd[68]
                                            mem[_4320 + _4377 + 96] = cd[100]
                                            if ceil32(_4377) <= _4377:
                                                _5990 = mem[64]
                                                mem[mem[64]] = _4320 + _4377 + -mem[64] + 96
                                                mem[64] = _4320 + _4377 + 128
                                                _8652 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = 0
                                                s = cd[4]
                                                t = sha3(mem[_5990 + 32 len mem[_5990]])
                                                while uint16(idx) < _8652:
                                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                        revert with 0, 50
                                                    if 1 == bool(s):
                                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                        mem[mem[64] + 64] = t
                                                        _9223 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[64] = mem[64] + 96
                                                        if uint16(idx) == 65535:
                                                            revert with 0, 17
                                                        _8652 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                        idx = uint16(idx) + 1
                                                        s = s / 2
                                                        t = sha3(mem[_9223 + 32 len mem[_9223]])
                                                        continue 
                                                    _8928 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 32] = t
                                                    mem[mem[64] + 64] = _8928
                                                    _9220 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8652 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9220 + 32 len mem[_9220]])
                                                    continue 
                                                mem[0] = 1
                                                mem[32] = 1
                                                if t != stor1[1]:
                                                    revert with 0, 'Unproven.'
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = cd[100]
                                                require ext_code.size(stor6[cd[68]].field_0)
                                                call stor6[cd[68]].field_0.0x42842e0e with:
                                                     gas gas_remaining wei
                                                    args this.address, msg.sender, cd[100]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if 0 == cd[68]:
                                                    mem[mem[64] + 4] = cd[100]
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x24ebafb3 with:
                                                            gas gas_remaining wei
                                                           args cd[100]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9822 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_9822] == mem[_9822 + 12 len 20]
                                                    require ext_code.size(mem[_9822 + 12 len 20])
                                                    call mem[_9822 + 12 len 20].0xfeec756c with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                            else:
                                                _6164 = mem[64]
                                                mem[mem[64]] = _4320 + _4377 + -mem[64] + 96
                                                mem[64] = _4320 + _4377 + 128
                                                _8653 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = 0
                                                s = cd[4]
                                                t = sha3(mem[_6164 + 32 len mem[_6164]])
                                                while uint16(idx) < _8653:
                                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                        revert with 0, 50
                                                    if 1 == bool(s):
                                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                        mem[mem[64] + 64] = t
                                                        _9229 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[64] = mem[64] + 96
                                                        if uint16(idx) == 65535:
                                                            revert with 0, 17
                                                        _8653 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                        idx = uint16(idx) + 1
                                                        s = s / 2
                                                        t = sha3(mem[_9229 + 32 len mem[_9229]])
                                                        continue 
                                                    _8933 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 32] = t
                                                    mem[mem[64] + 64] = _8933
                                                    _9226 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8653 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9226 + 32 len mem[_9226]])
                                                    continue 
                                                mem[0] = 1
                                                mem[32] = 1
                                                if t != stor1[1]:
                                                    revert with 0, 'Unproven.'
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = cd[100]
                                                require ext_code.size(stor6[cd[68]].field_0)
                                                call stor6[cd[68]].field_0.0x42842e0e with:
                                                     gas gas_remaining wei
                                                    args this.address, msg.sender, cd[100]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if 0 == cd[68]:
                                                    mem[mem[64] + 4] = cd[100]
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x24ebafb3 with:
                                                            gas gas_remaining wei
                                                           args cd[100]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9823 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_9823] == mem[_9823 + 12 len 20]
                                                    require ext_code.size(mem[_9823 + 12 len 20])
                                                    call mem[_9823 + 12 len 20].0xfeec756c with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                        else:
                                            if block.timestamp < sub_e1ac7084:
                                                revert with 0, 'Rescue portal closed.'
                                            if cd[68] >= stor6.length:
                                                revert with 0, 50
                                            mem[0] = 6
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3949 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_3949] <= 0:
                                                revert with 0, 'None remain.'
                                            if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                                revert with 0, 'Redeemed.'
                                            mem[0] = cd[4] / 256
                                            mem[32] = sha3(1, 2)
                                            stor2[1][Mask(248, 8, cd[4])] = 1
                                            _4378 = mem[64]
                                            mem[mem[64] + 32] = cd[4]
                                            _4470 = mem[128]
                                            idx = 0
                                            while idx < _4470:
                                                mem[idx + _4378 + 64] = mem[idx + 160]
                                                idx = idx + 32
                                                continue 
                                            mem[_4378 + _4470 + 64] = cd[68]
                                            mem[_4378 + _4470 + 96] = cd[100]
                                            if ceil32(_4470) <= _4470:
                                                _5993 = mem[64]
                                                mem[mem[64]] = _4378 + _4470 + -mem[64] + 96
                                                mem[64] = _4378 + _4470 + 128
                                                _8654 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = 0
                                                s = cd[4]
                                                t = sha3(mem[_5993 + 32 len mem[_5993]])
                                                while uint16(idx) < _8654:
                                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                        revert with 0, 50
                                                    if 1 == bool(s):
                                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                        mem[mem[64] + 64] = t
                                                        _9235 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[64] = mem[64] + 96
                                                        if uint16(idx) == 65535:
                                                            revert with 0, 17
                                                        _8654 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                        idx = uint16(idx) + 1
                                                        s = s / 2
                                                        t = sha3(mem[_9235 + 32 len mem[_9235]])
                                                        continue 
                                                    _8938 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 32] = t
                                                    mem[mem[64] + 64] = _8938
                                                    _9232 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8654 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9232 + 32 len mem[_9232]])
                                                    continue 
                                                mem[0] = 1
                                                mem[32] = 1
                                                if t != stor1[1]:
                                                    revert with 0, 'Unproven.'
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = cd[100]
                                                require ext_code.size(stor6[cd[68]].field_0)
                                                call stor6[cd[68]].field_0.0x42842e0e with:
                                                     gas gas_remaining wei
                                                    args this.address, msg.sender, cd[100]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if 0 == cd[68]:
                                                    mem[mem[64] + 4] = cd[100]
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x24ebafb3 with:
                                                            gas gas_remaining wei
                                                           args cd[100]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9824 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_9824] == mem[_9824 + 12 len 20]
                                                    require ext_code.size(mem[_9824 + 12 len 20])
                                                    call mem[_9824 + 12 len 20].0xfeec756c with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                            else:
                                                _6168 = mem[64]
                                                mem[mem[64]] = _4378 + _4470 + -mem[64] + 96
                                                mem[64] = _4378 + _4470 + 128
                                                _8655 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = 0
                                                s = cd[4]
                                                t = sha3(mem[_6168 + 32 len mem[_6168]])
                                                while uint16(idx) < _8655:
                                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                        revert with 0, 50
                                                    if 1 == bool(s):
                                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                        mem[mem[64] + 64] = t
                                                        _9241 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[64] = mem[64] + 96
                                                        if uint16(idx) == 65535:
                                                            revert with 0, 17
                                                        _8655 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                        idx = uint16(idx) + 1
                                                        s = s / 2
                                                        t = sha3(mem[_9241 + 32 len mem[_9241]])
                                                        continue 
                                                    _8943 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 32] = t
                                                    mem[mem[64] + 64] = _8943
                                                    _9238 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8655 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9238 + 32 len mem[_9238]])
                                                    continue 
                                                mem[0] = 1
                                                mem[32] = 1
                                                if t != stor1[1]:
                                                    revert with 0, 'Unproven.'
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = cd[100]
                                                require ext_code.size(stor6[cd[68]].field_0)
                                                call stor6[cd[68]].field_0.0x42842e0e with:
                                                     gas gas_remaining wei
                                                    args this.address, msg.sender, cd[100]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if 0 == cd[68]:
                                                    mem[mem[64] + 4] = cd[100]
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x24ebafb3 with:
                                                            gas gas_remaining wei
                                                           args cd[100]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9825 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_9825] == mem[_9825 + 12 len 20]
                                                    require ext_code.size(mem[_9825 + 12 len 20])
                                                    call mem[_9825 + 12 len 20].0xfeec756c with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                        emit 0xc4feb85e: cd[100], msg.sender, stor6[cd[68]].field_0
                                    if not s:
                                        revert with 0, 'You cannot be trusted.'
                                    if cd[68]:
                                        if cd[68] >= stor6.length:
                                            revert with 0, 50
                                        mem[0] = 6
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3561 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_3561] <= 0:
                                            revert with 0, 'None remain.'
                                        if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                            revert with 0, 'Redeemed.'
                                        mem[0] = cd[4] / 256
                                        mem[32] = sha3(1, 2)
                                        stor2[1][Mask(248, 8, cd[4])] = 1
                                        mem[mem[64] + 32] = cd[4]
                                        _4131 = mem[128]
                                        mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                        mem[mem[64] + mem[128] + 64] = cd[68]
                                        mem[mem[64] + mem[128] + 96] = cd[100]
                                        if ceil32(mem[128]) <= mem[128]:
                                            _5984 = mem[64]
                                            mem[mem[64]] = mem[128] + 96
                                            mem[64] = mem[64] + _4131 + 128
                                            _8648 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = 0
                                            while uint16(idx) < _8648:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t + sha3(mem[_5984 + 32 len mem[_5984]])
                                                    _9199 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8648 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9199 + 32 len mem[_9199]])
                                                    continue 
                                                _8908 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t + sha3(mem[_5984 + 32 len mem[_5984]])
                                                mem[mem[64] + 64] = _8908
                                                _9196 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8648 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9196 + 32 len mem[_9196]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = cd[100]
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            call stor6[cd[68]].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, cd[100]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 == cd[68]:
                                                mem[mem[64] + 4] = cd[100]
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x24ebafb3 with:
                                                        gas gas_remaining wei
                                                       args cd[100]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9818 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9818] == mem[_9818 + 12 len 20]
                                                require ext_code.size(mem[_9818 + 12 len 20])
                                                call mem[_9818 + 12 len 20].0xfeec756c with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                        else:
                                            _6156 = mem[64]
                                            mem[mem[64]] = mem[128] + 96
                                            mem[64] = mem[64] + _4131 + 128
                                            _8649 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = 0
                                            while uint16(idx) < _8649:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t + sha3(mem[_6156 + 32 len mem[_6156]])
                                                    _9205 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8649 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9205 + 32 len mem[_9205]])
                                                    continue 
                                                _8913 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t + sha3(mem[_6156 + 32 len mem[_6156]])
                                                mem[mem[64] + 64] = _8913
                                                _9202 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8649 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9202 + 32 len mem[_9202]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = cd[100]
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            call stor6[cd[68]].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, cd[100]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 == cd[68]:
                                                mem[mem[64] + 4] = cd[100]
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x24ebafb3 with:
                                                        gas gas_remaining wei
                                                       args cd[100]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9819 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9819] == mem[_9819 + 12 len 20]
                                                require ext_code.size(mem[_9819 + 12 len 20])
                                                call mem[_9819 + 12 len 20].0xfeec756c with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                    else:
                                        if block.timestamp < sub_e1ac7084:
                                            revert with 0, 'Rescue portal closed.'
                                        if cd[68] >= stor6.length:
                                            revert with 0, 50
                                        mem[0] = 6
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3587 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_3587] <= 0:
                                            revert with 0, 'None remain.'
                                        if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                            revert with 0, 'Redeemed.'
                                        mem[0] = cd[4] / 256
                                        mem[32] = sha3(1, 2)
                                        stor2[1][Mask(248, 8, cd[4])] = 1
                                        mem[mem[64] + 32] = cd[4]
                                        _4149 = mem[128]
                                        mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                        mem[mem[64] + mem[128] + 64] = cd[68]
                                        mem[mem[64] + mem[128] + 96] = cd[100]
                                        if ceil32(mem[128]) <= mem[128]:
                                            _5987 = mem[64]
                                            mem[mem[64]] = mem[128] + 96
                                            mem[64] = mem[64] + _4149 + 128
                                            _8650 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = 0
                                            while uint16(idx) < _8650:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t + sha3(mem[_5987 + 32 len mem[_5987]])
                                                    _9211 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8650 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9211 + 32 len mem[_9211]])
                                                    continue 
                                                _8918 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t + sha3(mem[_5987 + 32 len mem[_5987]])
                                                mem[mem[64] + 64] = _8918
                                                _9208 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8650 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9208 + 32 len mem[_9208]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = cd[100]
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            call stor6[cd[68]].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, cd[100]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 == cd[68]:
                                                mem[mem[64] + 4] = cd[100]
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x24ebafb3 with:
                                                        gas gas_remaining wei
                                                       args cd[100]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9820 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9820] == mem[_9820 + 12 len 20]
                                                require ext_code.size(mem[_9820 + 12 len 20])
                                                call mem[_9820 + 12 len 20].0xfeec756c with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                        else:
                                            _6160 = mem[64]
                                            mem[mem[64]] = mem[128] + 96
                                            mem[64] = mem[64] + _4149 + 128
                                            _8651 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = 0
                                            while uint16(idx) < _8651:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t + sha3(mem[_6160 + 32 len mem[_6160]])
                                                    _9217 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8651 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9217 + 32 len mem[_9217]])
                                                    continue 
                                                _8923 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t + sha3(mem[_6160 + 32 len mem[_6160]])
                                                mem[mem[64] + 64] = _8923
                                                _9214 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8651 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9214 + 32 len mem[_9214]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = cd[100]
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            call stor6[cd[68]].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, cd[100]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 == cd[68]:
                                                mem[mem[64] + 4] = cd[100]
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x24ebafb3 with:
                                                        gas gas_remaining wei
                                                       args cd[100]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9821 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9821] == mem[_9821 + 12 len 20]
                                                require ext_code.size(mem[_9821 + 12 len 20])
                                                call mem[_9821 + 12 len 20].0xfeec756c with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                else:
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 194] = address(stor6.field_256)
                                    idx = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 194
                                    s = 1
                                    while ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + (32 * stor6.length) + 130 > idx:
                                        mem[idx + 32] = stor6[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if cd[68] >= stor6.length:
                                        revert with 0, 'Invalid token index.'
                                    if cd[68] >= stor6.length:
                                        revert with 0, 50
                                    if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 174 len 20]:
                                        revert with 0, 'Invalid token address.'
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length:
                                        mem[0] = 5
                                        mem[mem[64] + 4] = msg.sender
                                        require ext_code.size(stor5[idx].field_0)
                                        staticcall stor5[idx].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args msg.sender
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9195 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9195] <= 0:
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = mem[_9195] > 0
                                            continue 
                                        if cd[68]:
                                            if cd[68] >= stor6.length:
                                                revert with 0, 50
                                            mem[0] = 6
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9907 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_9907] <= 0:
                                                revert with 0, 'None remain.'
                                            if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                                revert with 0, 'Redeemed.'
                                            mem[0] = cd[4] / 256
                                            mem[32] = sha3(1, 2)
                                            stor2[1][Mask(248, 8, cd[4])] = 1
                                            _10599 = mem[64]
                                            mem[mem[64] + 32] = cd[4]
                                            _10640 = mem[128]
                                            idx = 0
                                            while idx < _10640:
                                                mem[idx + _10599 + 64] = mem[idx + 160]
                                                idx = idx + 32
                                                continue 
                                            mem[_10599 + _10640 + 64] = cd[68]
                                            mem[_10599 + _10640 + 96] = cd[100]
                                            if ceil32(_10640) <= _10640:
                                                _11693 = mem[64]
                                                mem[mem[64]] = _10599 + _10640 + -mem[64] + 96
                                                mem[64] = _10599 + _10640 + 128
                                                _12665 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = 0
                                                s = cd[4]
                                                t = sha3(mem[_11693 + 32 len mem[_11693]])
                                                while uint16(idx) < _12665:
                                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                        revert with 0, 50
                                                    if 1 == bool(s):
                                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                        mem[mem[64] + 64] = t
                                                        _12920 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[64] = mem[64] + 96
                                                        if uint16(idx) == 65535:
                                                            revert with 0, 17
                                                        _12665 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                        idx = uint16(idx) + 1
                                                        s = s / 2
                                                        t = sha3(mem[_12920 + 32 len mem[_12920]])
                                                        continue 
                                                    _12786 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 32] = t
                                                    mem[mem[64] + 64] = _12786
                                                    _12917 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _12665 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_12917 + 32 len mem[_12917]])
                                                    continue 
                                                mem[0] = 1
                                                mem[32] = 1
                                                if t != stor1[1]:
                                                    revert with 0, 'Unproven.'
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = cd[100]
                                                require ext_code.size(stor6[cd[68]].field_0)
                                                call stor6[cd[68]].field_0.0x42842e0e with:
                                                     gas gas_remaining wei
                                                    args this.address, msg.sender, cd[100]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if 0 == cd[68]:
                                                    mem[mem[64] + 4] = cd[100]
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x24ebafb3 with:
                                                            gas gas_remaining wei
                                                           args cd[100]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _13157 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_13157] == mem[_13157 + 12 len 20]
                                                    require ext_code.size(mem[_13157 + 12 len 20])
                                                    call mem[_13157 + 12 len 20].0xfeec756c with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                            else:
                                                _11766 = mem[64]
                                                mem[mem[64]] = _10599 + _10640 + -mem[64] + 96
                                                mem[64] = _10599 + _10640 + 128
                                                _12666 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = 0
                                                s = cd[4]
                                                t = sha3(mem[_11766 + 32 len mem[_11766]])
                                                while uint16(idx) < _12666:
                                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                        revert with 0, 50
                                                    if 1 == bool(s):
                                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                        mem[mem[64] + 64] = t
                                                        _12926 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[64] = mem[64] + 96
                                                        if uint16(idx) == 65535:
                                                            revert with 0, 17
                                                        _12666 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                        idx = uint16(idx) + 1
                                                        s = s / 2
                                                        t = sha3(mem[_12926 + 32 len mem[_12926]])
                                                        continue 
                                                    _12791 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 32] = t
                                                    mem[mem[64] + 64] = _12791
                                                    _12923 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _12666 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_12923 + 32 len mem[_12923]])
                                                    continue 
                                                mem[0] = 1
                                                mem[32] = 1
                                                if t != stor1[1]:
                                                    revert with 0, 'Unproven.'
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = cd[100]
                                                require ext_code.size(stor6[cd[68]].field_0)
                                                call stor6[cd[68]].field_0.0x42842e0e with:
                                                     gas gas_remaining wei
                                                    args this.address, msg.sender, cd[100]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if 0 == cd[68]:
                                                    mem[mem[64] + 4] = cd[100]
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x24ebafb3 with:
                                                            gas gas_remaining wei
                                                           args cd[100]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _13158 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_13158] == mem[_13158 + 12 len 20]
                                                    require ext_code.size(mem[_13158 + 12 len 20])
                                                    call mem[_13158 + 12 len 20].0xfeec756c with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                        else:
                                            if block.timestamp < sub_e1ac7084:
                                                revert with 0, 'Rescue portal closed.'
                                            if cd[68] >= stor6.length:
                                                revert with 0, 50
                                            mem[0] = 6
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9921 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_9921] <= 0:
                                                revert with 0, 'None remain.'
                                            if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                                revert with 0, 'Redeemed.'
                                            mem[0] = cd[4] / 256
                                            mem[32] = sha3(1, 2)
                                            stor2[1][Mask(248, 8, cd[4])] = 1
                                            _10641 = mem[64]
                                            mem[mem[64] + 32] = cd[4]
                                            _10696 = mem[128]
                                            idx = 0
                                            while idx < _10696:
                                                mem[idx + _10641 + 64] = mem[idx + 160]
                                                idx = idx + 32
                                                continue 
                                            mem[_10641 + _10696 + 64] = cd[68]
                                            mem[_10641 + _10696 + 96] = cd[100]
                                            if ceil32(_10696) <= _10696:
                                                _11696 = mem[64]
                                                mem[mem[64]] = _10641 + _10696 + -mem[64] + 96
                                                mem[64] = _10641 + _10696 + 128
                                                _12667 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = 0
                                                s = cd[4]
                                                t = sha3(mem[_11696 + 32 len mem[_11696]])
                                                while uint16(idx) < _12667:
                                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                        revert with 0, 50
                                                    if 1 == bool(s):
                                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                        mem[mem[64] + 64] = t
                                                        _12932 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[64] = mem[64] + 96
                                                        if uint16(idx) == 65535:
                                                            revert with 0, 17
                                                        _12667 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                        idx = uint16(idx) + 1
                                                        s = s / 2
                                                        t = sha3(mem[_12932 + 32 len mem[_12932]])
                                                        continue 
                                                    _12796 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 32] = t
                                                    mem[mem[64] + 64] = _12796
                                                    _12929 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _12667 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_12929 + 32 len mem[_12929]])
                                                    continue 
                                                mem[0] = 1
                                                mem[32] = 1
                                                if t != stor1[1]:
                                                    revert with 0, 'Unproven.'
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = cd[100]
                                                require ext_code.size(stor6[cd[68]].field_0)
                                                call stor6[cd[68]].field_0.0x42842e0e with:
                                                     gas gas_remaining wei
                                                    args this.address, msg.sender, cd[100]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if 0 == cd[68]:
                                                    mem[mem[64] + 4] = cd[100]
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x24ebafb3 with:
                                                            gas gas_remaining wei
                                                           args cd[100]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _13159 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_13159] == mem[_13159 + 12 len 20]
                                                    require ext_code.size(mem[_13159 + 12 len 20])
                                                    call mem[_13159 + 12 len 20].0xfeec756c with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                            else:
                                                _11770 = mem[64]
                                                mem[mem[64]] = _10641 + _10696 + -mem[64] + 96
                                                mem[64] = _10641 + _10696 + 128
                                                _12668 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = 0
                                                s = cd[4]
                                                t = sha3(mem[_11770 + 32 len mem[_11770]])
                                                while uint16(idx) < _12668:
                                                    if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                        revert with 0, 50
                                                    if 1 == bool(s):
                                                        mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                        mem[mem[64] + 64] = t
                                                        _12938 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[64] = mem[64] + 96
                                                        if uint16(idx) == 65535:
                                                            revert with 0, 17
                                                        _12668 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                        idx = uint16(idx) + 1
                                                        s = s / 2
                                                        t = sha3(mem[_12938 + 32 len mem[_12938]])
                                                        continue 
                                                    _12801 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 32] = t
                                                    mem[mem[64] + 64] = _12801
                                                    _12935 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _12668 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_12935 + 32 len mem[_12935]])
                                                    continue 
                                                mem[0] = 1
                                                mem[32] = 1
                                                if t != stor1[1]:
                                                    revert with 0, 'Unproven.'
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = cd[100]
                                                require ext_code.size(stor6[cd[68]].field_0)
                                                call stor6[cd[68]].field_0.0x42842e0e with:
                                                     gas gas_remaining wei
                                                    args this.address, msg.sender, cd[100]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if 0 == cd[68]:
                                                    mem[mem[64] + 4] = cd[100]
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x24ebafb3 with:
                                                            gas gas_remaining wei
                                                           args cd[100]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _13160 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_13160] == mem[_13160 + 12 len 20]
                                                    require ext_code.size(mem[_13160 + 12 len 20])
                                                    call mem[_13160 + 12 len 20].0xfeec756c with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                        emit 0xc4feb85e: cd[100], msg.sender, stor6[cd[68]].field_0
                                    if not s:
                                        revert with 0, 'You cannot be trusted.'
                                    if cd[68]:
                                        if cd[68] >= stor6.length:
                                            revert with 0, 50
                                        mem[0] = 6
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9453 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9453] <= 0:
                                            revert with 0, 'None remain.'
                                        if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                            revert with 0, 'Redeemed.'
                                        mem[0] = cd[4] / 256
                                        mem[32] = sha3(1, 2)
                                        stor2[1][Mask(248, 8, cd[4])] = 1
                                        mem[mem[64] + 32] = cd[4]
                                        _10391 = mem[128]
                                        mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                        mem[mem[64] + mem[128] + 64] = cd[68]
                                        mem[mem[64] + mem[128] + 96] = cd[100]
                                        if ceil32(mem[128]) <= mem[128]:
                                            _11687 = mem[64]
                                            mem[mem[64]] = mem[128] + 96
                                            mem[64] = mem[64] + _10391 + 128
                                            _12661 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = 0
                                            while uint16(idx) < _12661:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t + sha3(mem[_11687 + 32 len mem[_11687]])
                                                    _12896 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _12661 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_12896 + 32 len mem[_12896]])
                                                    continue 
                                                _12766 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t + sha3(mem[_11687 + 32 len mem[_11687]])
                                                mem[mem[64] + 64] = _12766
                                                _12893 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _12661 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_12893 + 32 len mem[_12893]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = cd[100]
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            call stor6[cd[68]].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, cd[100]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 == cd[68]:
                                                mem[mem[64] + 4] = cd[100]
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x24ebafb3 with:
                                                        gas gas_remaining wei
                                                       args cd[100]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _13153 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_13153] == mem[_13153 + 12 len 20]
                                                require ext_code.size(mem[_13153 + 12 len 20])
                                                call mem[_13153 + 12 len 20].0xfeec756c with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                        else:
                                            _11758 = mem[64]
                                            mem[mem[64]] = mem[128] + 96
                                            mem[64] = mem[64] + _10391 + 128
                                            _12662 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = 0
                                            while uint16(idx) < _12662:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t + sha3(mem[_11758 + 32 len mem[_11758]])
                                                    _12902 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _12662 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_12902 + 32 len mem[_12902]])
                                                    continue 
                                                _12771 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t + sha3(mem[_11758 + 32 len mem[_11758]])
                                                mem[mem[64] + 64] = _12771
                                                _12899 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _12662 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_12899 + 32 len mem[_12899]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = cd[100]
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            call stor6[cd[68]].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, cd[100]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 == cd[68]:
                                                mem[mem[64] + 4] = cd[100]
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x24ebafb3 with:
                                                        gas gas_remaining wei
                                                       args cd[100]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _13154 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_13154] == mem[_13154 + 12 len 20]
                                                require ext_code.size(mem[_13154 + 12 len 20])
                                                call mem[_13154 + 12 len 20].0xfeec756c with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                    else:
                                        if block.timestamp < sub_e1ac7084:
                                            revert with 0, 'Rescue portal closed.'
                                        if cd[68] >= stor6.length:
                                            revert with 0, 50
                                        mem[0] = 6
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9504 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9504] <= 0:
                                            revert with 0, 'None remain.'
                                        if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                            revert with 0, 'Redeemed.'
                                        mem[0] = cd[4] / 256
                                        mem[32] = sha3(1, 2)
                                        stor2[1][Mask(248, 8, cd[4])] = 1
                                        mem[mem[64] + 32] = cd[4]
                                        _10412 = mem[128]
                                        mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                        mem[mem[64] + mem[128] + 64] = cd[68]
                                        mem[mem[64] + mem[128] + 96] = cd[100]
                                        if ceil32(mem[128]) <= mem[128]:
                                            _11690 = mem[64]
                                            mem[mem[64]] = mem[128] + 96
                                            mem[64] = mem[64] + _10412 + 128
                                            _12663 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = 0
                                            while uint16(idx) < _12663:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t + sha3(mem[_11690 + 32 len mem[_11690]])
                                                    _12908 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _12663 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_12908 + 32 len mem[_12908]])
                                                    continue 
                                                _12776 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t + sha3(mem[_11690 + 32 len mem[_11690]])
                                                mem[mem[64] + 64] = _12776
                                                _12905 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _12663 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_12905 + 32 len mem[_12905]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = cd[100]
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            call stor6[cd[68]].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, cd[100]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 == cd[68]:
                                                mem[mem[64] + 4] = cd[100]
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x24ebafb3 with:
                                                        gas gas_remaining wei
                                                       args cd[100]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _13155 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_13155] == mem[_13155 + 12 len 20]
                                                require ext_code.size(mem[_13155 + 12 len 20])
                                                call mem[_13155 + 12 len 20].0xfeec756c with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                        else:
                                            _11762 = mem[64]
                                            mem[mem[64]] = mem[128] + 96
                                            mem[64] = mem[64] + _10412 + 128
                                            _12664 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = 0
                                            while uint16(idx) < _12664:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t + sha3(mem[_11762 + 32 len mem[_11762]])
                                                    _12914 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _12664 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_12914 + 32 len mem[_12914]])
                                                    continue 
                                                _12781 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t + sha3(mem[_11762 + 32 len mem[_11762]])
                                                mem[mem[64] + 64] = _12781
                                                _12911 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _12664 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_12911 + 32 len mem[_12911]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = cd[100]
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            call stor6[cd[68]].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, cd[100]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 == cd[68]:
                                                mem[mem[64] + 4] = cd[100]
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x24ebafb3 with:
                                                        gas gas_remaining wei
                                                       args cd[100]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _13156 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_13156] == mem[_13156 + 12 len 20]
                                                require ext_code.size(mem[_13156 + 12 len 20])
                                                call mem[_13156 + 12 len 20].0xfeec756c with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                            emit 0xc4feb85e: cd[100], msg.sender, stor6[cd[68]].field_0
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[36] <= test266151307()
                        require cd[36] + 35 < calldata.size
                        if ('cd', 36).length > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = ('cd', 36).length
                        require cd[36] + ('cd', 36).length + 36 <= calldata.size
                        mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[('cd', 36).length + 160] = 0
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        if ('cd', 100).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 100).length) + 130 < 129 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 130 > test266151307():
                            revert with 0, 65
                        mem[ceil32(ceil32(('cd', 36).length)) + 129] = ('cd', 100).length
                        require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                        idx = cd[100] + 36
                        s = ceil32(ceil32(('cd', 36).length)) + 161
                        while idx < cd[100] + (32 * ('cd', 100).length) + 36:
                            mem[s] = cd[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if cd[68] <= 0:
                            revert with 0, 'Invalid token.'
                        if not uint8(stor9.field_16):
                            revert with 0, 'Portalarc is disabled.'
                        mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 162
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 130] = stor6.length
                        if not stor6.length:
                            if cd[68] >= stor6.length:
                                revert with 0, 'Invalid token index.'
                            if cd[68] >= stor6.length:
                                revert with 0, 50
                            if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 174 len 20]:
                                revert with 0, 'Invalid token address.'
                            idx = 0
                            s = 0
                            while idx < stor5.length:
                                mem[0] = 5
                                mem[mem[64] + 4] = msg.sender
                                require ext_code.size(stor5[idx].field_0)
                                staticcall stor5[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3451 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_3451] <= 0:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = mem[_3451] > 0
                                    continue 
                                if cd[68]:
                                    if cd[68] >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6[cd[68]].field_0)
                                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3928 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3955 = mem[_3928]
                                    if mem[_3928] <= 0:
                                        revert with 0, 'None remain.'
                                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                        revert with 0, 'Redeemed.'
                                    mem[0] = cd[4] / 256
                                    mem[32] = sha3(1, 2)
                                    stor2[1][Mask(248, 8, cd[4])] = 1
                                    _4305 = mem[64]
                                    mem[mem[64] + 32] = cd[4]
                                    _4344 = mem[128]
                                    idx = 0
                                    while idx < _4344:
                                        mem[idx + _4305 + 64] = mem[idx + 160]
                                        idx = idx + 32
                                        continue 
                                    mem[_4305 + _4344 + 64] = cd[68]
                                    mem[_4305 + _4344 + 96] = 0
                                    if ceil32(_4344) <= _4344:
                                        _5952 = mem[64]
                                        mem[mem[64]] = _4305 + _4344 + -mem[64] + 96
                                        mem[64] = _4305 + _4344 + 128
                                        _8628 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = sha3(mem[_5952 + 32 len mem[_5952]])
                                        while uint16(idx) < _8628:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t
                                                _9067 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8628 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9067 + 32 len mem[_9067]])
                                                continue 
                                            _8808 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t
                                            mem[mem[64] + 64] = _8808
                                            _9064 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8628 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9064 + 32 len mem[_9064]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        if block.number < 1:
                                            revert with 0, 17
                                        mem[mem[64] + 32] = block.timestamp
                                        mem[mem[64] + 64] = address(msg.sender)
                                        mem[mem[64] + 84] = block.hash(block.number - 1)
                                        _9764 = mem[64]
                                        mem[mem[64]] = 84
                                        mem[64] = mem[64] + 116
                                        if not _3955:
                                            revert with 0, 18
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                gas gas_remaining wei
                                               args address(this.address), sha3(mem[_9764 + 32 len mem[_9764]]) % _3955
                                    else:
                                        _6114 = mem[64]
                                        mem[mem[64]] = _4305 + _4344 + -mem[64] + 96
                                        mem[64] = _4305 + _4344 + 128
                                        _8629 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = sha3(mem[_6114 + 32 len mem[_6114]])
                                        while uint16(idx) < _8629:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t
                                                _9073 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8629 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9073 + 32 len mem[_9073]])
                                                continue 
                                            _8813 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t
                                            mem[mem[64] + 64] = _8813
                                            _9070 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8629 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9070 + 32 len mem[_9070]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        if block.number < 1:
                                            revert with 0, 17
                                        mem[mem[64] + 32] = block.timestamp
                                        mem[mem[64] + 64] = address(msg.sender)
                                        mem[mem[64] + 84] = block.hash(block.number - 1)
                                        _9767 = mem[64]
                                        mem[mem[64]] = 84
                                        mem[64] = mem[64] + 116
                                        if not _3955:
                                            revert with 0, 18
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                gas gas_remaining wei
                                               args address(this.address), sha3(mem[_9767 + 32 len mem[_9767]]) % _3955
                                else:
                                    if block.timestamp < sub_e1ac7084:
                                        revert with 0, 'Rescue portal closed.'
                                    if cd[68] >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6[cd[68]].field_0)
                                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3946 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3969 = mem[_3946]
                                    if mem[_3946] <= 0:
                                        revert with 0, 'None remain.'
                                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                        revert with 0, 'Redeemed.'
                                    mem[0] = cd[4] / 256
                                    mem[32] = sha3(1, 2)
                                    stor2[1][Mask(248, 8, cd[4])] = 1
                                    _4345 = mem[64]
                                    mem[mem[64] + 32] = cd[4]
                                    _4413 = mem[128]
                                    idx = 0
                                    while idx < _4413:
                                        mem[idx + _4345 + 64] = mem[idx + 160]
                                        idx = idx + 32
                                        continue 
                                    mem[_4345 + _4413 + 64] = cd[68]
                                    mem[_4345 + _4413 + 96] = 0
                                    if ceil32(_4413) <= _4413:
                                        _5955 = mem[64]
                                        mem[mem[64]] = _4345 + _4413 + -mem[64] + 96
                                        mem[64] = _4345 + _4413 + 128
                                        _8630 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = sha3(mem[_5955 + 32 len mem[_5955]])
                                        while uint16(idx) < _8630:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t
                                                _9079 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8630 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9079 + 32 len mem[_9079]])
                                                continue 
                                            _8818 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t
                                            mem[mem[64] + 64] = _8818
                                            _9076 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8630 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9076 + 32 len mem[_9076]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        if block.number < 1:
                                            revert with 0, 17
                                        mem[mem[64] + 32] = block.timestamp
                                        mem[mem[64] + 64] = address(msg.sender)
                                        mem[mem[64] + 84] = block.hash(block.number - 1)
                                        _9770 = mem[64]
                                        mem[mem[64]] = 84
                                        mem[64] = mem[64] + 116
                                        if not _3969:
                                            revert with 0, 18
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                gas gas_remaining wei
                                               args address(this.address), sha3(mem[_9770 + 32 len mem[_9770]]) % _3969
                                    else:
                                        _6118 = mem[64]
                                        mem[mem[64]] = _4345 + _4413 + -mem[64] + 96
                                        mem[64] = _4345 + _4413 + 128
                                        _8631 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = sha3(mem[_6118 + 32 len mem[_6118]])
                                        while uint16(idx) < _8631:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t
                                                _9085 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8631 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9085 + 32 len mem[_9085]])
                                                continue 
                                            _8823 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t
                                            mem[mem[64] + 64] = _8823
                                            _9082 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8631 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9082 + 32 len mem[_9082]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        if block.number < 1:
                                            revert with 0, 17
                                        mem[mem[64] + 32] = block.timestamp
                                        mem[mem[64] + 64] = address(msg.sender)
                                        mem[mem[64] + 84] = block.hash(block.number - 1)
                                        _9773 = mem[64]
                                        mem[mem[64]] = 84
                                        mem[64] = mem[64] + 116
                                        if not _3969:
                                            revert with 0, 18
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                gas gas_remaining wei
                                               args address(this.address), sha3(mem[_9773 + 32 len mem[_9773]]) % _3969
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor6[cd[68]].field_0)
                                call stor6[cd[68]].field_0.0x42842e0e with:
                                     gas gas_remaining wei
                                    args this.address, msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 == cd[68]:
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x24ebafb3 with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xfeec756c with:
                                         gas gas_remaining wei
                                        args msg.sender
                                emit 0xc4feb85e: ext_call.return_data[0], msg.sender, stor6[cd[68]].field_0
                            if not s:
                                revert with 0, 'You cannot be trusted.'
                            if cd[68]:
                                if cd[68] >= stor6.length:
                                    revert with 0, 50
                                mem[0] = 6
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6[cd[68]].field_0)
                                staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3555 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3648 = mem[_3555]
                                if mem[_3555] <= 0:
                                    revert with 0, 'None remain.'
                                if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                    revert with 0, 'Redeemed.'
                                mem[0] = cd[4] / 256
                                mem[32] = sha3(1, 2)
                                stor2[1][Mask(248, 8, cd[4])] = 1
                                mem[mem[64] + 32] = cd[4]
                                _4125 = mem[128]
                                mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                mem[mem[64] + mem[128] + 64] = cd[68]
                                mem[mem[64] + mem[128] + 96] = 0
                                if ceil32(mem[128]) <= mem[128]:
                                    _5946 = mem[64]
                                    mem[mem[64]] = mem[128] + 96
                                    mem[64] = mem[64] + _4125 + 128
                                    _8624 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = 0
                                    s = cd[4]
                                    t = 0
                                    while uint16(idx) < _8624:
                                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                            revert with 0, 50
                                        if 1 == bool(s):
                                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 64] = t + sha3(mem[_5946 + 32 len mem[_5946]])
                                            _9043 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8624 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9043 + 32 len mem[_9043]])
                                            continue 
                                        _8788 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 32] = t + sha3(mem[_5946 + 32 len mem[_5946]])
                                        mem[mem[64] + 64] = _8788
                                        _9040 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        _8624 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_9040 + 32 len mem[_9040]])
                                        continue 
                                    mem[0] = 1
                                    mem[32] = 1
                                    if t != stor1[1]:
                                        revert with 0, 'Unproven.'
                                    if block.number < 1:
                                        revert with 0, 17
                                    mem[mem[64] + 32] = block.timestamp
                                    mem[mem[64] + 64] = address(msg.sender)
                                    mem[mem[64] + 84] = block.hash(block.number - 1)
                                    _9752 = mem[64]
                                    mem[mem[64]] = 84
                                    mem[64] = mem[64] + 116
                                    if not _3648:
                                        revert with 0, 18
                                    require ext_code.size(stor6[cd[68]].field_0)
                                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                            gas gas_remaining wei
                                           args address(this.address), sha3(mem[_9752 + 32 len mem[_9752]]) % _3648
                                else:
                                    _6106 = mem[64]
                                    mem[mem[64]] = mem[128] + 96
                                    mem[64] = mem[64] + _4125 + 128
                                    _8625 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = 0
                                    s = cd[4]
                                    t = 0
                                    while uint16(idx) < _8625:
                                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                            revert with 0, 50
                                        if 1 == bool(s):
                                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 64] = t + sha3(mem[_6106 + 32 len mem[_6106]])
                                            _9049 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8625 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9049 + 32 len mem[_9049]])
                                            continue 
                                        _8793 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 32] = t + sha3(mem[_6106 + 32 len mem[_6106]])
                                        mem[mem[64] + 64] = _8793
                                        _9046 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        _8625 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_9046 + 32 len mem[_9046]])
                                        continue 
                                    mem[0] = 1
                                    mem[32] = 1
                                    if t != stor1[1]:
                                        revert with 0, 'Unproven.'
                                    if block.number < 1:
                                        revert with 0, 17
                                    mem[mem[64] + 32] = block.timestamp
                                    mem[mem[64] + 64] = address(msg.sender)
                                    mem[mem[64] + 84] = block.hash(block.number - 1)
                                    _9755 = mem[64]
                                    mem[mem[64]] = 84
                                    mem[64] = mem[64] + 116
                                    if not _3648:
                                        revert with 0, 18
                                    require ext_code.size(stor6[cd[68]].field_0)
                                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                            gas gas_remaining wei
                                           args address(this.address), sha3(mem[_9755 + 32 len mem[_9755]]) % _3648
                            else:
                                if block.timestamp < sub_e1ac7084:
                                    revert with 0, 'Rescue portal closed.'
                                if cd[68] >= stor6.length:
                                    revert with 0, 50
                                mem[0] = 6
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6[cd[68]].field_0)
                                staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3584 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3744 = mem[_3584]
                                if mem[_3584] <= 0:
                                    revert with 0, 'None remain.'
                                if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                    revert with 0, 'Redeemed.'
                                mem[0] = cd[4] / 256
                                mem[32] = sha3(1, 2)
                                stor2[1][Mask(248, 8, cd[4])] = 1
                                mem[mem[64] + 32] = cd[4]
                                _4143 = mem[128]
                                mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                mem[mem[64] + mem[128] + 64] = cd[68]
                                mem[mem[64] + mem[128] + 96] = 0
                                if ceil32(mem[128]) <= mem[128]:
                                    _5949 = mem[64]
                                    mem[mem[64]] = mem[128] + 96
                                    mem[64] = mem[64] + _4143 + 128
                                    _8626 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = 0
                                    s = cd[4]
                                    t = 0
                                    while uint16(idx) < _8626:
                                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                            revert with 0, 50
                                        if 1 == bool(s):
                                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 64] = t + sha3(mem[_5949 + 32 len mem[_5949]])
                                            _9055 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8626 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9055 + 32 len mem[_9055]])
                                            continue 
                                        _8798 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 32] = t + sha3(mem[_5949 + 32 len mem[_5949]])
                                        mem[mem[64] + 64] = _8798
                                        _9052 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        _8626 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_9052 + 32 len mem[_9052]])
                                        continue 
                                    mem[0] = 1
                                    mem[32] = 1
                                    if t != stor1[1]:
                                        revert with 0, 'Unproven.'
                                    if block.number < 1:
                                        revert with 0, 17
                                    mem[mem[64] + 32] = block.timestamp
                                    mem[mem[64] + 64] = address(msg.sender)
                                    mem[mem[64] + 84] = block.hash(block.number - 1)
                                    _9758 = mem[64]
                                    mem[mem[64]] = 84
                                    mem[64] = mem[64] + 116
                                    if not _3744:
                                        revert with 0, 18
                                    require ext_code.size(stor6[cd[68]].field_0)
                                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                            gas gas_remaining wei
                                           args address(this.address), sha3(mem[_9758 + 32 len mem[_9758]]) % _3744
                                else:
                                    _6110 = mem[64]
                                    mem[mem[64]] = mem[128] + 96
                                    mem[64] = mem[64] + _4143 + 128
                                    _8627 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    idx = 0
                                    s = cd[4]
                                    t = 0
                                    while uint16(idx) < _8627:
                                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                            revert with 0, 50
                                        if 1 == bool(s):
                                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 64] = t + sha3(mem[_6110 + 32 len mem[_6110]])
                                            _9061 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8627 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9061 + 32 len mem[_9061]])
                                            continue 
                                        _8803 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 32] = t + sha3(mem[_6110 + 32 len mem[_6110]])
                                        mem[mem[64] + 64] = _8803
                                        _9058 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        _8627 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_9058 + 32 len mem[_9058]])
                                        continue 
                                    mem[0] = 1
                                    mem[32] = 1
                                    if t != stor1[1]:
                                        revert with 0, 'Unproven.'
                                    if block.number < 1:
                                        revert with 0, 17
                                    mem[mem[64] + 32] = block.timestamp
                                    mem[mem[64] + 64] = address(msg.sender)
                                    mem[mem[64] + 84] = block.hash(block.number - 1)
                                    _9761 = mem[64]
                                    mem[mem[64]] = 84
                                    mem[64] = mem[64] + 116
                                    if not _3744:
                                        revert with 0, 18
                                    require ext_code.size(stor6[cd[68]].field_0)
                                    staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                            gas gas_remaining wei
                                           args address(this.address), sha3(mem[_9761 + 32 len mem[_9761]]) % _3744
                        else:
                            mem[0] = 6
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 162] = address(stor6.field_0)
                            if (32 * stor6.length) + 32 <= 64:
                                if cd[68] >= stor6.length:
                                    revert with 0, 'Invalid token index.'
                                if cd[68] >= stor6.length:
                                    revert with 0, 50
                                if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 174 len 20]:
                                    revert with 0, 'Invalid token address.'
                                idx = 0
                                s = 0
                                while idx < stor5.length:
                                    mem[0] = 5
                                    mem[mem[64] + 4] = msg.sender
                                    require ext_code.size(stor5[idx].field_0)
                                    staticcall stor5[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3457 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_3457] <= 0:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = mem[_3457] > 0
                                        continue 
                                    if cd[68]:
                                        if cd[68] >= stor6.length:
                                            revert with 0, 50
                                        mem[0] = 6
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3930 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3957 = mem[_3930]
                                        if mem[_3930] <= 0:
                                            revert with 0, 'None remain.'
                                        if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                            revert with 0, 'Redeemed.'
                                        mem[0] = cd[4] / 256
                                        mem[32] = sha3(1, 2)
                                        stor2[1][Mask(248, 8, cd[4])] = 1
                                        _4310 = mem[64]
                                        mem[mem[64] + 32] = cd[4]
                                        _4355 = mem[128]
                                        idx = 0
                                        while idx < _4355:
                                            mem[idx + _4310 + 64] = mem[idx + 160]
                                            idx = idx + 32
                                            continue 
                                        mem[_4310 + _4355 + 64] = cd[68]
                                        mem[_4310 + _4355 + 96] = 0
                                        if ceil32(_4355) <= _4355:
                                            _5965 = mem[64]
                                            mem[mem[64]] = _4310 + _4355 + -mem[64] + 96
                                            mem[64] = _4310 + _4355 + 128
                                            _8636 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = sha3(mem[_5965 + 32 len mem[_5965]])
                                            while uint16(idx) < _8636:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t
                                                    _9121 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8636 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9121 + 32 len mem[_9121]])
                                                    continue 
                                                _8848 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t
                                                mem[mem[64] + 64] = _8848
                                                _9118 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8636 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9118 + 32 len mem[_9118]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            if block.number < 1:
                                                revert with 0, 17
                                            mem[mem[64] + 32] = block.timestamp
                                            mem[mem[64] + 64] = address(msg.sender)
                                            mem[mem[64] + 84] = block.hash(block.number - 1)
                                            _9793 = mem[64]
                                            mem[mem[64]] = 84
                                            mem[64] = mem[64] + 116
                                            if not _3957:
                                                revert with 0, 18
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                    gas gas_remaining wei
                                                   args address(this.address), sha3(mem[_9793 + 32 len mem[_9793]]) % _3957
                                        else:
                                            _6131 = mem[64]
                                            mem[mem[64]] = _4310 + _4355 + -mem[64] + 96
                                            mem[64] = _4310 + _4355 + 128
                                            _8637 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = sha3(mem[_6131 + 32 len mem[_6131]])
                                            while uint16(idx) < _8637:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t
                                                    _9127 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8637 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9127 + 32 len mem[_9127]])
                                                    continue 
                                                _8853 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t
                                                mem[mem[64] + 64] = _8853
                                                _9124 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8637 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9124 + 32 len mem[_9124]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            if block.number < 1:
                                                revert with 0, 17
                                            mem[mem[64] + 32] = block.timestamp
                                            mem[mem[64] + 64] = address(msg.sender)
                                            mem[mem[64] + 84] = block.hash(block.number - 1)
                                            _9796 = mem[64]
                                            mem[mem[64]] = 84
                                            mem[64] = mem[64] + 116
                                            if not _3957:
                                                revert with 0, 18
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                    gas gas_remaining wei
                                                   args address(this.address), sha3(mem[_9796 + 32 len mem[_9796]]) % _3957
                                    else:
                                        if block.timestamp < sub_e1ac7084:
                                            revert with 0, 'Rescue portal closed.'
                                        if cd[68] >= stor6.length:
                                            revert with 0, 50
                                        mem[0] = 6
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3947 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3971 = mem[_3947]
                                        if mem[_3947] <= 0:
                                            revert with 0, 'None remain.'
                                        if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                            revert with 0, 'Redeemed.'
                                        mem[0] = cd[4] / 256
                                        mem[32] = sha3(1, 2)
                                        stor2[1][Mask(248, 8, cd[4])] = 1
                                        _4356 = mem[64]
                                        mem[mem[64] + 32] = cd[4]
                                        _4432 = mem[128]
                                        idx = 0
                                        while idx < _4432:
                                            mem[idx + _4356 + 64] = mem[idx + 160]
                                            idx = idx + 32
                                            continue 
                                        mem[_4356 + _4432 + 64] = cd[68]
                                        mem[_4356 + _4432 + 96] = 0
                                        if ceil32(_4432) <= _4432:
                                            _5968 = mem[64]
                                            mem[mem[64]] = _4356 + _4432 + -mem[64] + 96
                                            mem[64] = _4356 + _4432 + 128
                                            _8638 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = sha3(mem[_5968 + 32 len mem[_5968]])
                                            while uint16(idx) < _8638:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t
                                                    _9133 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8638 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9133 + 32 len mem[_9133]])
                                                    continue 
                                                _8858 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t
                                                mem[mem[64] + 64] = _8858
                                                _9130 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8638 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9130 + 32 len mem[_9130]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            if block.number < 1:
                                                revert with 0, 17
                                            mem[mem[64] + 32] = block.timestamp
                                            mem[mem[64] + 64] = address(msg.sender)
                                            mem[mem[64] + 84] = block.hash(block.number - 1)
                                            _9799 = mem[64]
                                            mem[mem[64]] = 84
                                            mem[64] = mem[64] + 116
                                            if not _3971:
                                                revert with 0, 18
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                    gas gas_remaining wei
                                                   args address(this.address), sha3(mem[_9799 + 32 len mem[_9799]]) % _3971
                                        else:
                                            _6135 = mem[64]
                                            mem[mem[64]] = _4356 + _4432 + -mem[64] + 96
                                            mem[64] = _4356 + _4432 + 128
                                            _8639 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = sha3(mem[_6135 + 32 len mem[_6135]])
                                            while uint16(idx) < _8639:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t
                                                    _9139 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8639 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9139 + 32 len mem[_9139]])
                                                    continue 
                                                _8863 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t
                                                mem[mem[64] + 64] = _8863
                                                _9136 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8639 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9136 + 32 len mem[_9136]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            if block.number < 1:
                                                revert with 0, 17
                                            mem[mem[64] + 32] = block.timestamp
                                            mem[mem[64] + 64] = address(msg.sender)
                                            mem[mem[64] + 84] = block.hash(block.number - 1)
                                            _9802 = mem[64]
                                            mem[mem[64]] = 84
                                            mem[64] = mem[64] + 116
                                            if not _3971:
                                                revert with 0, 18
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                    gas gas_remaining wei
                                                   args address(this.address), sha3(mem[_9802 + 32 len mem[_9802]]) % _3971
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor6[cd[68]].field_0)
                                    call stor6[cd[68]].field_0.0x42842e0e with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 == cd[68]:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x24ebafb3 with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xfeec756c with:
                                             gas gas_remaining wei
                                            args msg.sender
                                    emit 0xc4feb85e: ext_call.return_data[0], msg.sender, stor6[cd[68]].field_0
                                if not s:
                                    revert with 0, 'You cannot be trusted.'
                                if cd[68]:
                                    if cd[68] >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6[cd[68]].field_0)
                                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3557 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3649 = mem[_3557]
                                    if mem[_3557] <= 0:
                                        revert with 0, 'None remain.'
                                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                        revert with 0, 'Redeemed.'
                                    mem[0] = cd[4] / 256
                                    mem[32] = sha3(1, 2)
                                    stor2[1][Mask(248, 8, cd[4])] = 1
                                    mem[mem[64] + 32] = cd[4]
                                    _4127 = mem[128]
                                    mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                    mem[mem[64] + mem[128] + 64] = cd[68]
                                    mem[mem[64] + mem[128] + 96] = 0
                                    if ceil32(mem[128]) <= mem[128]:
                                        _5959 = mem[64]
                                        mem[mem[64]] = mem[128] + 96
                                        mem[64] = mem[64] + _4127 + 128
                                        _8632 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = 0
                                        while uint16(idx) < _8632:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t + sha3(mem[_5959 + 32 len mem[_5959]])
                                                _9097 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8632 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9097 + 32 len mem[_9097]])
                                                continue 
                                            _8828 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t + sha3(mem[_5959 + 32 len mem[_5959]])
                                            mem[mem[64] + 64] = _8828
                                            _9094 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8632 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9094 + 32 len mem[_9094]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        if block.number < 1:
                                            revert with 0, 17
                                        mem[mem[64] + 32] = block.timestamp
                                        mem[mem[64] + 64] = address(msg.sender)
                                        mem[mem[64] + 84] = block.hash(block.number - 1)
                                        _9781 = mem[64]
                                        mem[mem[64]] = 84
                                        mem[64] = mem[64] + 116
                                        if not _3649:
                                            revert with 0, 18
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                gas gas_remaining wei
                                               args address(this.address), sha3(mem[_9781 + 32 len mem[_9781]]) % _3649
                                    else:
                                        _6123 = mem[64]
                                        mem[mem[64]] = mem[128] + 96
                                        mem[64] = mem[64] + _4127 + 128
                                        _8633 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = 0
                                        while uint16(idx) < _8633:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t + sha3(mem[_6123 + 32 len mem[_6123]])
                                                _9103 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8633 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9103 + 32 len mem[_9103]])
                                                continue 
                                            _8833 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t + sha3(mem[_6123 + 32 len mem[_6123]])
                                            mem[mem[64] + 64] = _8833
                                            _9100 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8633 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9100 + 32 len mem[_9100]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        if block.number < 1:
                                            revert with 0, 17
                                        mem[mem[64] + 32] = block.timestamp
                                        mem[mem[64] + 64] = address(msg.sender)
                                        mem[mem[64] + 84] = block.hash(block.number - 1)
                                        _9784 = mem[64]
                                        mem[mem[64]] = 84
                                        mem[64] = mem[64] + 116
                                        if not _3649:
                                            revert with 0, 18
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                gas gas_remaining wei
                                               args address(this.address), sha3(mem[_9784 + 32 len mem[_9784]]) % _3649
                                else:
                                    if block.timestamp < sub_e1ac7084:
                                        revert with 0, 'Rescue portal closed.'
                                    if cd[68] >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6[cd[68]].field_0)
                                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3585 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3745 = mem[_3585]
                                    if mem[_3585] <= 0:
                                        revert with 0, 'None remain.'
                                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                        revert with 0, 'Redeemed.'
                                    mem[0] = cd[4] / 256
                                    mem[32] = sha3(1, 2)
                                    stor2[1][Mask(248, 8, cd[4])] = 1
                                    mem[mem[64] + 32] = cd[4]
                                    _4145 = mem[128]
                                    mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                    mem[mem[64] + mem[128] + 64] = cd[68]
                                    mem[mem[64] + mem[128] + 96] = 0
                                    if ceil32(mem[128]) <= mem[128]:
                                        _5962 = mem[64]
                                        mem[mem[64]] = mem[128] + 96
                                        mem[64] = mem[64] + _4145 + 128
                                        _8634 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = 0
                                        while uint16(idx) < _8634:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t + sha3(mem[_5962 + 32 len mem[_5962]])
                                                _9109 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8634 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9109 + 32 len mem[_9109]])
                                                continue 
                                            _8838 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t + sha3(mem[_5962 + 32 len mem[_5962]])
                                            mem[mem[64] + 64] = _8838
                                            _9106 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8634 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9106 + 32 len mem[_9106]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        if block.number < 1:
                                            revert with 0, 17
                                        mem[mem[64] + 32] = block.timestamp
                                        mem[mem[64] + 64] = address(msg.sender)
                                        mem[mem[64] + 84] = block.hash(block.number - 1)
                                        _9787 = mem[64]
                                        mem[mem[64]] = 84
                                        mem[64] = mem[64] + 116
                                        if not _3745:
                                            revert with 0, 18
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                gas gas_remaining wei
                                               args address(this.address), sha3(mem[_9787 + 32 len mem[_9787]]) % _3745
                                    else:
                                        _6127 = mem[64]
                                        mem[mem[64]] = mem[128] + 96
                                        mem[64] = mem[64] + _4145 + 128
                                        _8635 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = 0
                                        while uint16(idx) < _8635:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t + sha3(mem[_6127 + 32 len mem[_6127]])
                                                _9115 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8635 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9115 + 32 len mem[_9115]])
                                                continue 
                                            _8843 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t + sha3(mem[_6127 + 32 len mem[_6127]])
                                            mem[mem[64] + 64] = _8843
                                            _9112 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8635 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9112 + 32 len mem[_9112]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        if block.number < 1:
                                            revert with 0, 17
                                        mem[mem[64] + 32] = block.timestamp
                                        mem[mem[64] + 64] = address(msg.sender)
                                        mem[mem[64] + 84] = block.hash(block.number - 1)
                                        _9790 = mem[64]
                                        mem[mem[64]] = 84
                                        mem[64] = mem[64] + 116
                                        if not _3745:
                                            revert with 0, 18
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                gas gas_remaining wei
                                               args address(this.address), sha3(mem[_9790 + 32 len mem[_9790]]) % _3745
                            else:
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 194] = address(stor6.field_256)
                                idx = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 194
                                s = 1
                                while ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * stor6.length) + 130 > idx:
                                    mem[idx + 32] = stor6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if cd[68] >= stor6.length:
                                    revert with 0, 'Invalid token index.'
                                if cd[68] >= stor6.length:
                                    revert with 0, 50
                                if not mem[(32 * cd[68]) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 174 len 20]:
                                    revert with 0, 'Invalid token address.'
                                idx = 0
                                s = 0
                                while idx < stor5.length:
                                    mem[0] = 5
                                    mem[mem[64] + 4] = msg.sender
                                    require ext_code.size(stor5[idx].field_0)
                                    staticcall stor5[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9093 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9093] <= 0:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = mem[_9093] > 0
                                        continue 
                                    if cd[68]:
                                        if cd[68] >= stor6.length:
                                            revert with 0, 50
                                        mem[0] = 6
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9897 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _9952 = mem[_9897]
                                        if mem[_9897] <= 0:
                                            revert with 0, 'None remain.'
                                        if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                            revert with 0, 'Redeemed.'
                                        mem[0] = cd[4] / 256
                                        mem[32] = sha3(1, 2)
                                        stor2[1][Mask(248, 8, cd[4])] = 1
                                        _10586 = mem[64]
                                        mem[mem[64] + 32] = cd[4]
                                        _10629 = mem[128]
                                        idx = 0
                                        while idx < _10629:
                                            mem[idx + _10586 + 64] = mem[idx + 160]
                                            idx = idx + 32
                                            continue 
                                        mem[_10586 + _10629 + 64] = cd[68]
                                        mem[_10586 + _10629 + 96] = 0
                                        if ceil32(_10629) <= _10629:
                                            _11681 = mem[64]
                                            mem[mem[64]] = _10586 + _10629 + -mem[64] + 96
                                            mem[64] = _10586 + _10629 + 128
                                            _12657 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = sha3(mem[_11681 + 32 len mem[_11681]])
                                            while uint16(idx) < _12657:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t
                                                    _12872 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _12657 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_12872 + 32 len mem[_12872]])
                                                    continue 
                                                _12746 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t
                                                mem[mem[64] + 64] = _12746
                                                _12869 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _12657 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_12869 + 32 len mem[_12869]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            if block.number < 1:
                                                revert with 0, 17
                                            mem[mem[64] + 32] = block.timestamp
                                            mem[mem[64] + 64] = address(msg.sender)
                                            mem[mem[64] + 84] = block.hash(block.number - 1)
                                            _13141 = mem[64]
                                            mem[mem[64]] = 84
                                            mem[64] = mem[64] + 116
                                            if not _9952:
                                                revert with 0, 18
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                    gas gas_remaining wei
                                                   args address(this.address), sha3(mem[_13141 + 32 len mem[_13141]]) % _9952
                                        else:
                                            _11750 = mem[64]
                                            mem[mem[64]] = _10586 + _10629 + -mem[64] + 96
                                            mem[64] = _10586 + _10629 + 128
                                            _12658 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = sha3(mem[_11750 + 32 len mem[_11750]])
                                            while uint16(idx) < _12658:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t
                                                    _12878 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _12658 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_12878 + 32 len mem[_12878]])
                                                    continue 
                                                _12751 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t
                                                mem[mem[64] + 64] = _12751
                                                _12875 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _12658 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_12875 + 32 len mem[_12875]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            if block.number < 1:
                                                revert with 0, 17
                                            mem[mem[64] + 32] = block.timestamp
                                            mem[mem[64] + 64] = address(msg.sender)
                                            mem[mem[64] + 84] = block.hash(block.number - 1)
                                            _13144 = mem[64]
                                            mem[mem[64]] = 84
                                            mem[64] = mem[64] + 116
                                            if not _9952:
                                                revert with 0, 18
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                    gas gas_remaining wei
                                                   args address(this.address), sha3(mem[_13144 + 32 len mem[_13144]]) % _9952
                                    else:
                                        if block.timestamp < sub_e1ac7084:
                                            revert with 0, 'Rescue portal closed.'
                                        if cd[68] >= stor6.length:
                                            revert with 0, 50
                                        mem[0] = 6
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9920 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _9997 = mem[_9920]
                                        if mem[_9920] <= 0:
                                            revert with 0, 'None remain.'
                                        if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                            revert with 0, 'Redeemed.'
                                        mem[0] = cd[4] / 256
                                        mem[32] = sha3(1, 2)
                                        stor2[1][Mask(248, 8, cd[4])] = 1
                                        _10630 = mem[64]
                                        mem[mem[64] + 32] = cd[4]
                                        _10677 = mem[128]
                                        idx = 0
                                        while idx < _10677:
                                            mem[idx + _10630 + 64] = mem[idx + 160]
                                            idx = idx + 32
                                            continue 
                                        mem[_10630 + _10677 + 64] = cd[68]
                                        mem[_10630 + _10677 + 96] = 0
                                        if ceil32(_10677) <= _10677:
                                            _11684 = mem[64]
                                            mem[mem[64]] = _10630 + _10677 + -mem[64] + 96
                                            mem[64] = _10630 + _10677 + 128
                                            _12659 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = sha3(mem[_11684 + 32 len mem[_11684]])
                                            while uint16(idx) < _12659:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t
                                                    _12884 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _12659 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_12884 + 32 len mem[_12884]])
                                                    continue 
                                                _12756 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t
                                                mem[mem[64] + 64] = _12756
                                                _12881 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _12659 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_12881 + 32 len mem[_12881]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            if block.number < 1:
                                                revert with 0, 17
                                            mem[mem[64] + 32] = block.timestamp
                                            mem[mem[64] + 64] = address(msg.sender)
                                            mem[mem[64] + 84] = block.hash(block.number - 1)
                                            _13147 = mem[64]
                                            mem[mem[64]] = 84
                                            mem[64] = mem[64] + 116
                                            if not _9997:
                                                revert with 0, 18
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                    gas gas_remaining wei
                                                   args address(this.address), sha3(mem[_13147 + 32 len mem[_13147]]) % _9997
                                        else:
                                            _11754 = mem[64]
                                            mem[mem[64]] = _10630 + _10677 + -mem[64] + 96
                                            mem[64] = _10630 + _10677 + 128
                                            _12660 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = sha3(mem[_11754 + 32 len mem[_11754]])
                                            while uint16(idx) < _12660:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t
                                                    _12890 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _12660 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_12890 + 32 len mem[_12890]])
                                                    continue 
                                                _12761 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t
                                                mem[mem[64] + 64] = _12761
                                                _12887 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _12660 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_12887 + 32 len mem[_12887]])
                                                continue 
                                            mem[0] = 1
                                            mem[32] = 1
                                            if t != stor1[1]:
                                                revert with 0, 'Unproven.'
                                            if block.number < 1:
                                                revert with 0, 17
                                            mem[mem[64] + 32] = block.timestamp
                                            mem[mem[64] + 64] = address(msg.sender)
                                            mem[mem[64] + 84] = block.hash(block.number - 1)
                                            _13150 = mem[64]
                                            mem[mem[64]] = 84
                                            mem[64] = mem[64] + 116
                                            if not _9997:
                                                revert with 0, 18
                                            require ext_code.size(stor6[cd[68]].field_0)
                                            staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                    gas gas_remaining wei
                                                   args address(this.address), sha3(mem[_13150 + 32 len mem[_13150]]) % _9997
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor6[cd[68]].field_0)
                                    call stor6[cd[68]].field_0.0x42842e0e with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 == cd[68]:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x24ebafb3 with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xfeec756c with:
                                             gas gas_remaining wei
                                            args msg.sender
                                    emit 0xc4feb85e: ext_call.return_data[0], msg.sender, stor6[cd[68]].field_0
                                if not s:
                                    revert with 0, 'You cannot be trusted.'
                                if cd[68]:
                                    if cd[68] >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6[cd[68]].field_0)
                                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9435 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9545 = mem[_9435]
                                    if mem[_9435] <= 0:
                                        revert with 0, 'None remain.'
                                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                        revert with 0, 'Redeemed.'
                                    mem[0] = cd[4] / 256
                                    mem[32] = sha3(1, 2)
                                    stor2[1][Mask(248, 8, cd[4])] = 1
                                    mem[mem[64] + 32] = cd[4]
                                    _10381 = mem[128]
                                    mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                    mem[mem[64] + mem[128] + 64] = cd[68]
                                    mem[mem[64] + mem[128] + 96] = 0
                                    if ceil32(mem[128]) <= mem[128]:
                                        _11675 = mem[64]
                                        mem[mem[64]] = mem[128] + 96
                                        mem[64] = mem[64] + _10381 + 128
                                        _12653 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = 0
                                        while uint16(idx) < _12653:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t + sha3(mem[_11675 + 32 len mem[_11675]])
                                                _12848 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _12653 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_12848 + 32 len mem[_12848]])
                                                continue 
                                            _12726 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t + sha3(mem[_11675 + 32 len mem[_11675]])
                                            mem[mem[64] + 64] = _12726
                                            _12845 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _12653 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_12845 + 32 len mem[_12845]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        if block.number < 1:
                                            revert with 0, 17
                                        mem[mem[64] + 32] = block.timestamp
                                        mem[mem[64] + 64] = address(msg.sender)
                                        mem[mem[64] + 84] = block.hash(block.number - 1)
                                        _13129 = mem[64]
                                        mem[mem[64]] = 84
                                        mem[64] = mem[64] + 116
                                        if not _9545:
                                            revert with 0, 18
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                gas gas_remaining wei
                                               args address(this.address), sha3(mem[_13129 + 32 len mem[_13129]]) % _9545
                                    else:
                                        _11742 = mem[64]
                                        mem[mem[64]] = mem[128] + 96
                                        mem[64] = mem[64] + _10381 + 128
                                        _12654 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = 0
                                        while uint16(idx) < _12654:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t + sha3(mem[_11742 + 32 len mem[_11742]])
                                                _12854 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _12654 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_12854 + 32 len mem[_12854]])
                                                continue 
                                            _12731 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t + sha3(mem[_11742 + 32 len mem[_11742]])
                                            mem[mem[64] + 64] = _12731
                                            _12851 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _12654 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_12851 + 32 len mem[_12851]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        if block.number < 1:
                                            revert with 0, 17
                                        mem[mem[64] + 32] = block.timestamp
                                        mem[mem[64] + 64] = address(msg.sender)
                                        mem[mem[64] + 84] = block.hash(block.number - 1)
                                        _13132 = mem[64]
                                        mem[mem[64]] = 84
                                        mem[64] = mem[64] + 116
                                        if not _9545:
                                            revert with 0, 18
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                gas gas_remaining wei
                                               args address(this.address), sha3(mem[_13132 + 32 len mem[_13132]]) % _9545
                                else:
                                    if block.timestamp < sub_e1ac7084:
                                        revert with 0, 'Rescue portal closed.'
                                    if cd[68] >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6[cd[68]].field_0)
                                    staticcall stor6[cd[68]].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9487 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9583 = mem[_9487]
                                    if mem[_9487] <= 0:
                                        revert with 0, 'None remain.'
                                    if 1 and stor2[1][Mask(248, 8, cd[4])]:
                                        revert with 0, 'Redeemed.'
                                    mem[0] = cd[4] / 256
                                    mem[32] = sha3(1, 2)
                                    stor2[1][Mask(248, 8, cd[4])] = 1
                                    mem[mem[64] + 32] = cd[4]
                                    _10410 = mem[128]
                                    mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                    mem[mem[64] + mem[128] + 64] = cd[68]
                                    mem[mem[64] + mem[128] + 96] = 0
                                    if ceil32(mem[128]) <= mem[128]:
                                        _11678 = mem[64]
                                        mem[mem[64]] = mem[128] + 96
                                        mem[64] = mem[64] + _10410 + 128
                                        _12655 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = 0
                                        while uint16(idx) < _12655:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t + sha3(mem[_11678 + 32 len mem[_11678]])
                                                _12860 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _12655 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_12860 + 32 len mem[_12860]])
                                                continue 
                                            _12736 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t + sha3(mem[_11678 + 32 len mem[_11678]])
                                            mem[mem[64] + 64] = _12736
                                            _12857 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _12655 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_12857 + 32 len mem[_12857]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        if block.number < 1:
                                            revert with 0, 17
                                        mem[mem[64] + 32] = block.timestamp
                                        mem[mem[64] + 64] = address(msg.sender)
                                        mem[mem[64] + 84] = block.hash(block.number - 1)
                                        _13135 = mem[64]
                                        mem[mem[64]] = 84
                                        mem[64] = mem[64] + 116
                                        if not _9583:
                                            revert with 0, 18
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                gas gas_remaining wei
                                               args address(this.address), sha3(mem[_13135 + 32 len mem[_13135]]) % _9583
                                    else:
                                        _11746 = mem[64]
                                        mem[mem[64]] = mem[128] + 96
                                        mem[64] = mem[64] + _10410 + 128
                                        _12656 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = 0
                                        while uint16(idx) < _12656:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t + sha3(mem[_11746 + 32 len mem[_11746]])
                                                _12866 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _12656 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_12866 + 32 len mem[_12866]])
                                                continue 
                                            _12741 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t + sha3(mem[_11746 + 32 len mem[_11746]])
                                            mem[mem[64] + 64] = _12741
                                            _12863 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _12656 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_12863 + 32 len mem[_12863]])
                                            continue 
                                        mem[0] = 1
                                        mem[32] = 1
                                        if t != stor1[1]:
                                            revert with 0, 'Unproven.'
                                        if block.number < 1:
                                            revert with 0, 17
                                        mem[mem[64] + 32] = block.timestamp
                                        mem[mem[64] + 64] = address(msg.sender)
                                        mem[mem[64] + 84] = block.hash(block.number - 1)
                                        _13138 = mem[64]
                                        mem[mem[64]] = 84
                                        mem[64] = mem[64] + 116
                                        if not _9583:
                                            revert with 0, 18
                                        require ext_code.size(stor6[cd[68]].field_0)
                                        staticcall stor6[cd[68]].field_0.0x2f745c59 with:
                                                gas gas_remaining wei
                                               args address(this.address), sha3(mem[_13138 + 32 len mem[_13138]]) % _9583
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor6[cd[68]].field_0)
                        call stor6[cd[68]].field_0.0x42842e0e with:
                             gas gas_remaining wei
                            args this.address, msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 == cd[68]:
                            require ext_code.size(stor3)
                            staticcall stor3.0x24ebafb3 with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xfeec756c with:
                                 gas gas_remaining wei
                                args msg.sender
                        emit 0xc4feb85e: ext_call.return_data[0], msg.sender, stor6[cd[68]].field_0
                else:
                    if unknown_0x23b94806(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == uint8(cd[4])
                        if not uint8(stor9.field_16):
                            revert with 0, 'Portalarc is disabled.'
                        idx = 0
                        while idx < uint8(cd[4]):
                            require ext_code.size(stor3)
                            staticcall stor3.mintPrice() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1783 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1783] <= eth.balance(this.address):
                                if stor8 == -1:
                                    revert with 0, 17
                                stor8++
                                mem[mem[64]] = 0xc4415ccf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 3
                                mem[mem[64] + 36] = stor3
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = stor8
                                mem[mem[64] + 132] = 1
                                require ext_code.size(sub_baafbcfcAddress)
                                call sub_baafbcfcAddress.0xc4415ccf with:
                                     gas gas_remaining wei
                                    args 3, stor3, address(this.address), stor8, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0x3ac3b033: this.address
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if unknown_0x328d8f72(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == bool(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            Mask(240, 0, stor9.field_16) = Mask(240, 0, bool(cd[4]))
                        else:
                            if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                call msg.sender with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Withrawal failed.'
                                emit 0x52538705: eth.balance(this.address), msg.sender
                            else:
                                if uint32(call.func_hash) >> 224 != unknown_0x3f21a946(?????):
                                    require unknown_0x40d1e145(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    require calldata.size - 4 >= 160
                                    require cd[36] <= test266151307()
                                    require cd[36] + 35 < calldata.size
                                    if ('cd', 36).length > test266151307():
                                        revert with 0, 65
                                    if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                                        revert with 0, 65
                                    mem[128] = ('cd', 36).length
                                    require cd[36] + ('cd', 36).length + 36 <= calldata.size
                                    mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                                    mem[('cd', 36).length + 160] = 0
                                    require cd[132] <= test266151307()
                                    require cd[132] + 35 < calldata.size
                                    if ('cd', 132).length > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * ('cd', 132).length) + 130 < 129 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 130 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 132).length) + 130
                                    mem[ceil32(ceil32(('cd', 36).length)) + 129] = ('cd', 132).length
                                    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
                                    idx = cd[132] + 36
                                    s = ceil32(ceil32(('cd', 36).length)) + 161
                                    while idx < cd[132] + (32 * ('cd', 132).length) + 36:
                                        mem[s] = cd[idx]
                                        idx = idx + 32
                                        s = s + 32
                                        continue 
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length:
                                        mem[0] = 5
                                        mem[mem[64] + 4] = msg.sender
                                        require ext_code.size(stor5[idx].field_0)
                                        staticcall stor5[idx].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args msg.sender
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3476 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_3476] <= 0:
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = mem[_3476] > 0
                                            continue 
                                        _3830 = mem[64]
                                        mem[mem[64] + 32] = cd[4]
                                        _3873 = mem[128]
                                        idx = 0
                                        while idx < _3873:
                                            mem[idx + _3830 + 64] = mem[idx + 160]
                                            idx = idx + 32
                                            continue 
                                        mem[_3830 + _3873 + 64] = cd[68]
                                        mem[_3830 + _3873 + 96] = cd[100]
                                        if ceil32(_3873) <= _3873:
                                            _6009 = mem[64]
                                            mem[mem[64]] = _3830 + _3873 + -mem[64] + 96
                                            mem[64] = _3830 + _3873 + 128
                                            _8658 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = sha3(mem[_6009 + 32 len mem[_6009]])
                                            while uint16(idx) < _8658:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t
                                                    _9261 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8658 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9261 + 32 len mem[_9261]])
                                                    continue 
                                                _8962 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t
                                                mem[mem[64] + 64] = _8962
                                                _9258 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8658 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9258 + 32 len mem[_9258]])
                                                continue 
                                        else:
                                            _6188 = mem[64]
                                            mem[mem[64]] = _3830 + _3873 + -mem[64] + 96
                                            mem[64] = _3830 + _3873 + 128
                                            _8659 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = 0
                                            s = cd[4]
                                            t = sha3(mem[_6188 + 32 len mem[_6188]])
                                            while uint16(idx) < _8659:
                                                if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    revert with 0, 50
                                                if 1 == bool(s):
                                                    mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                    mem[mem[64] + 64] = t
                                                    _9267 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[64] = mem[64] + 96
                                                    if uint16(idx) == 65535:
                                                        revert with 0, 17
                                                    _8659 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                    idx = uint16(idx) + 1
                                                    s = s / 2
                                                    t = sha3(mem[_9267 + 32 len mem[_9267]])
                                                    continue 
                                                _8967 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 32] = t
                                                mem[mem[64] + 64] = _8967
                                                _9264 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8659 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9264 + 32 len mem[_9264]])
                                                continue 
                                        return (t == stor1[2])
                                    if not s:
                                        revert with 0, 'You cannot be trusted.'
                                    mem[mem[64] + 32] = cd[4]
                                    _3474 = mem[128]
                                    mem[mem[64] + 64 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                    mem[mem[64] + mem[128] + 64] = cd[68]
                                    mem[mem[64] + mem[128] + 96] = cd[100]
                                    if ceil32(mem[128]) <= mem[128]:
                                        _6006 = mem[64]
                                        mem[mem[64]] = mem[128] + 96
                                        mem[64] = mem[64] + _3474 + 128
                                        _8656 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = 0
                                        while uint16(idx) < _8656:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t + sha3(mem[_6006 + 32 len mem[_6006]])
                                                _9249 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8656 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9249 + 32 len mem[_9249]])
                                                continue 
                                            _8952 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t + sha3(mem[_6006 + 32 len mem[_6006]])
                                            mem[mem[64] + 64] = _8952
                                            _9246 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8656 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9246 + 32 len mem[_9246]])
                                            continue 
                                    else:
                                        _6184 = mem[64]
                                        mem[mem[64]] = mem[128] + 96
                                        mem[64] = mem[64] + _3474 + 128
                                        _8657 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        idx = 0
                                        s = cd[4]
                                        t = 0
                                        while uint16(idx) < _8657:
                                            if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                revert with 0, 50
                                            if 1 == bool(s):
                                                mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                                mem[mem[64] + 64] = t + sha3(mem[_6184 + 32 len mem[_6184]])
                                                _9255 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[64] = mem[64] + 96
                                                if uint16(idx) == 65535:
                                                    revert with 0, 17
                                                _8657 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                idx = uint16(idx) + 1
                                                s = s / 2
                                                t = sha3(mem[_9255 + 32 len mem[_9255]])
                                                continue 
                                            _8957 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 32] = t + sha3(mem[_6184 + 32 len mem[_6184]])
                                            mem[mem[64] + 64] = _8957
                                            _9252 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            _8657 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_9252 + 32 len mem[_9252]])
                                            continue 
                                    return (t == stor1[2])
                                require not msg.value
                                require calldata.size - 4 >= 96
                                require cd[36] <= test266151307()
                                require cd[36] + 35 < calldata.size
                                if ('cd', 36).length > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                                    revert with 0, 65
                                mem[128] = ('cd', 36).length
                                require cd[36] + ('cd', 36).length + 36 <= calldata.size
                                mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                                mem[('cd', 36).length + 160] = 0
                                require cd[68] <= test266151307()
                                require cd[68] + 35 < calldata.size
                                if ('cd', 68).length > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * ('cd', 68).length) + 130 < 129 or ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130 > test266151307():
                                    revert with 0, 65
                                mem[ceil32(ceil32(('cd', 36).length)) + 129] = ('cd', 68).length
                                require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                                idx = cd[68] + 36
                                s = ceil32(ceil32(('cd', 36).length)) + 161
                                while idx < cd[68] + (32 * ('cd', 68).length) + 36:
                                    mem[s] = cd[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                                if not uint8(stor9.field_16):
                                    revert with 0, 'Portalarc is disabled.'
                                require ext_code.size(stor3)
                                staticcall stor3.mintPrice() with:
                                        gas gas_remaining wei
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 130] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > eth.balance(sub_baafbcfcAddress):
                                    revert with 0, 'Not enough beam liquidity.'
                                if 1 and stor2[0][Mask(248, 8, cd[4])]:
                                    revert with 0, 'Redeemed.'
                                mem[0] = cd[4] / 256
                                mem[32] = sha3(0, 2)
                                stor2[0][Mask(248, 8, cd[4])] = 1
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 162] = cd[4]
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 68).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + ('cd', 36).length + 194] = 0
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + ('cd', 36).length + 226] = 0
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 130] = ('cd', 36).length + 96
                                mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + ('cd', 36).length + 258
                                if ceil32(('cd', 36).length) <= ('cd', 36).length:
                                    idx = 0
                                    s = cd[4]
                                    t = 0
                                    while uint16(idx) < ('cd', 68).length:
                                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                            revert with 0, 50
                                        if 1 == bool(s):
                                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 130]])
                                            _6174 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_6174 + 32 len mem[_6174]])
                                            continue 
                                        _5997 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 130]])
                                        mem[mem[64] + 64] = _5997
                                        _6171 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_6171 + 32 len mem[_6171]])
                                        continue 
                                    mem[0] = 0
                                    mem[32] = 1
                                    if t != stor1[0]:
                                        revert with 0, 'Unproven.'
                                    idx = 2
                                    s = 0
                                    s = 0
                                    while idx < 42:
                                        if idx >= mem[128]:
                                            revert with 0, 50
                                        if 1 > !idx:
                                            revert with 0, 17
                                        if idx + 1 >= mem[128]:
                                            revert with 0, 50
                                        if idx > -3:
                                            revert with 0, 17
                                        idx = idx + 2
                                        s = uint8(mem[idx + 161]) >> 248
                                        s = uint8(mem[idx + 160]) >> 248
                                        continue 
                                    if not uint8(stor9.field_0):
                                        if not uint8(stor9.field_8):
                                            require ext_code.size(sub_baafbcfcAddress)
                                            call sub_baafbcfcAddress.0xc4415ccf with:
                                                 gas gas_remaining wei
                                                args 0, stor3, 0, cd[4], 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xb1264a80: cd[4], 1
                                            emit 0x0: cd[4], 1
                                        else:
                                            if block.number < 1:
                                                revert with 0, 17
                                            mem[mem[64] + 32] = block.timestamp
                                            mem[mem[64] + 64] = address(msg.sender)
                                            mem[mem[64] + 84] = block.hash(block.number - 1)
                                            _9726 = mem[64]
                                            mem[mem[64]] = 84
                                            mem[64] = mem[64] + 116
                                            if not uint8(stor9.field_8):
                                                revert with 0, 18
                                            require ext_code.size(sub_baafbcfcAddress)
                                            if not sha3(mem[_9726 + 32 len mem[_9726]]) % uint8(stor9.field_8):
                                                call sub_baafbcfcAddress.0xc4415ccf with:
                                                     gas gas_remaining wei
                                                    args 0, stor3, 0, cd[4], 2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xb1264a80: cd[4], 2
                                                emit 0x0: cd[4], 2
                                            else:
                                                call sub_baafbcfcAddress.0xc4415ccf with:
                                                     gas gas_remaining wei
                                                    args 0, stor3, 0, cd[4], 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xb1264a80: cd[4], 1
                                                emit 0x0: cd[4], 1
                                    else:
                                        require ext_code.size(stor3)
                                        staticcall stor3.maxSupply() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9399 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _9521 = mem[_9399]
                                        require mem[_9399] == mem[_9399 + 30 len 2]
                                        if mem[_9399 + 30 len 2] < offset:
                                            revert with 0, 17
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9916 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9916] >= uint32(uint16(_9521) - offset):
                                            if not uint8(stor9.field_8):
                                                require ext_code.size(sub_baafbcfcAddress)
                                                call sub_baafbcfcAddress.0xc4415ccf with:
                                                     gas gas_remaining wei
                                                    args 0, stor3, 0, cd[4], 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xb1264a80: cd[4], 1
                                                emit 0x0: cd[4], 1
                                            else:
                                                if block.number < 1:
                                                    revert with 0, 17
                                                mem[mem[64] + 32] = block.timestamp
                                                mem[mem[64] + 64] = address(msg.sender)
                                                mem[mem[64] + 84] = block.hash(block.number - 1)
                                                _10360 = mem[64]
                                                mem[mem[64]] = 84
                                                mem[64] = mem[64] + 116
                                                if not uint8(stor9.field_8):
                                                    revert with 0, 18
                                                require ext_code.size(sub_baafbcfcAddress)
                                                if not sha3(mem[_10360 + 32 len mem[_10360]]) % uint8(stor9.field_8):
                                                    call sub_baafbcfcAddress.0xc4415ccf with:
                                                         gas gas_remaining wei
                                                        args 0, stor3, 0, cd[4], 2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xb1264a80: cd[4], 2
                                                    emit 0x0: cd[4], 2
                                                else:
                                                    call sub_baafbcfcAddress.0xc4415ccf with:
                                                         gas gas_remaining wei
                                                        args 0, stor3, 0, cd[4], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xb1264a80: cd[4], 1
                                                    emit 0x0: cd[4], 1
                                        else:
                                            if block.number < 1:
                                                revert with 0, 17
                                            mem[mem[64] + 32] = block.timestamp
                                            mem[mem[64] + 64] = address(msg.sender)
                                            mem[mem[64] + 84] = block.hash(block.number - 1)
                                            _10254 = mem[64]
                                            mem[mem[64]] = 84
                                            mem[64] = mem[64] + 116
                                            if not uint8(stor9.field_0):
                                                revert with 0, 18
                                            if not sha3(mem[_10254 + 32 len mem[_10254]]) % uint8(stor9.field_0):
                                                require ext_code.size(stor3)
                                                staticcall stor3.mintPrice() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= eth.balance(this.address):
                                                    if stor8 == -1:
                                                        revert with 0, 17
                                                    stor8++
                                                    require ext_code.size(sub_baafbcfcAddress)
                                                    call sub_baafbcfcAddress.0xc4415ccf with:
                                                         gas gas_remaining wei
                                                        args 3, stor3, address(this.address), stor8, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0x3ac3b033 
                                                    emit 0x0 
                                            if not uint8(stor9.field_8):
                                                require ext_code.size(sub_baafbcfcAddress)
                                                call sub_baafbcfcAddress.0xc4415ccf with:
                                                     gas gas_remaining wei
                                                    args 0, stor3, 0, cd[4], 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xb1264a80: cd[4], 1
                                                emit 0x0: cd[4], 1
                                            else:
                                                if block.number < 1:
                                                    revert with 0, 17
                                                if not uint8(stor9.field_8):
                                                    revert with 0, 18
                                                require ext_code.size(sub_baafbcfcAddress)
                                                if not sha3(block.timestamp, msg.sender, block.hash(block.number - 1)) % uint8(stor9.field_8):
                                                    call sub_baafbcfcAddress.0xc4415ccf with:
                                                         gas gas_remaining wei
                                                        args 0, stor3, 0, cd[4], 2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xb1264a80: cd[4], 2
                                                    emit 0x0: cd[4], 2
                                                else:
                                                    call sub_baafbcfcAddress.0xc4415ccf with:
                                                         gas gas_remaining wei
                                                        args 0, stor3, 0, cd[4], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xb1264a80: cd[4], 1
                                                    emit 0x0: cd[4], 1
                                else:
                                    idx = 0
                                    s = cd[4]
                                    t = 0
                                    while uint16(idx) < ('cd', 68).length:
                                        if uint16(idx) >= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                            revert with 0, 50
                                        if 1 == bool(s):
                                            mem[mem[64] + 32] = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                            mem[mem[64] + 64] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 130]])
                                            _6180 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[64] = mem[64] + 96
                                            if uint16(idx) == 65535:
                                                revert with 0, 17
                                            idx = uint16(idx) + 1
                                            s = s / 2
                                            t = sha3(mem[_6180 + 32 len mem[_6180]])
                                            continue 
                                        _6002 = mem[(32 * uint16(idx)) + ceil32(ceil32(('cd', 36).length)) + 161]
                                        mem[mem[64] + 32] = t + sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 162 len mem[ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 130]])
                                        mem[mem[64] + 64] = _6002
                                        _6177 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[64] = mem[64] + 96
                                        if uint16(idx) == 65535:
                                            revert with 0, 17
                                        idx = uint16(idx) + 1
                                        s = s / 2
                                        t = sha3(mem[_6177 + 32 len mem[_6177]])
                                        continue 
                                    mem[0] = 0
                                    mem[32] = 1
                                    if t != stor1[0]:
                                        revert with 0, 'Unproven.'
                                    idx = 2
                                    s = 0
                                    s = 0
                                    while idx < 42:
                                        if idx >= mem[128]:
                                            revert with 0, 50
                                        if 1 > !idx:
                                            revert with 0, 17
                                        if idx + 1 >= mem[128]:
                                            revert with 0, 50
                                        if idx > -3:
                                            revert with 0, 17
                                        idx = idx + 2
                                        s = uint8(mem[idx + 161]) >> 248
                                        s = uint8(mem[idx + 160]) >> 248
                                        continue 
                                    if not uint8(stor9.field_0):
                                        if not uint8(stor9.field_8):
                                            require ext_code.size(sub_baafbcfcAddress)
                                            call sub_baafbcfcAddress.0xc4415ccf with:
                                                 gas gas_remaining wei
                                                args 0, stor3, 0, cd[4], 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xb1264a80: cd[4], 1
                                            emit 0x0: cd[4], 1
                                        else:
                                            if block.number < 1:
                                                revert with 0, 17
                                            mem[mem[64] + 32] = block.timestamp
                                            mem[mem[64] + 64] = address(msg.sender)
                                            mem[mem[64] + 84] = block.hash(block.number - 1)
                                            _9730 = mem[64]
                                            mem[mem[64]] = 84
                                            mem[64] = mem[64] + 116
                                            if not uint8(stor9.field_8):
                                                revert with 0, 18
                                            require ext_code.size(sub_baafbcfcAddress)
                                            if not sha3(mem[_9730 + 32 len mem[_9730]]) % uint8(stor9.field_8):
                                                call sub_baafbcfcAddress.0xc4415ccf with:
                                                     gas gas_remaining wei
                                                    args 0, stor3, 0, cd[4], 2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xb1264a80: cd[4], 2
                                                emit 0x0: cd[4], 2
                                            else:
                                                call sub_baafbcfcAddress.0xc4415ccf with:
                                                     gas gas_remaining wei
                                                    args 0, stor3, 0, cd[4], 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xb1264a80: cd[4], 1
                                                emit 0x0: cd[4], 1
                                    else:
                                        require ext_code.size(stor3)
                                        staticcall stor3.maxSupply() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9401 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _9522 = mem[_9401]
                                        require mem[_9401] == mem[_9401 + 30 len 2]
                                        if mem[_9401 + 30 len 2] < offset:
                                            revert with 0, 17
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9917 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9917] >= uint32(uint16(_9522) - offset):
                                            if not uint8(stor9.field_8):
                                                require ext_code.size(sub_baafbcfcAddress)
                                                call sub_baafbcfcAddress.0xc4415ccf with:
                                                     gas gas_remaining wei
                                                    args 0, stor3, 0, cd[4], 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xb1264a80: cd[4], 1
                                                emit 0x0: cd[4], 1
                                            else:
                                                if block.number < 1:
                                                    revert with 0, 17
                                                mem[mem[64] + 32] = block.timestamp
                                                mem[mem[64] + 64] = address(msg.sender)
                                                mem[mem[64] + 84] = block.hash(block.number - 1)
                                                _10366 = mem[64]
                                                mem[mem[64]] = 84
                                                mem[64] = mem[64] + 116
                                                if not uint8(stor9.field_8):
                                                    revert with 0, 18
                                                require ext_code.size(sub_baafbcfcAddress)
                                                if not sha3(mem[_10366 + 32 len mem[_10366]]) % uint8(stor9.field_8):
                                                    call sub_baafbcfcAddress.0xc4415ccf with:
                                                         gas gas_remaining wei
                                                        args 0, stor3, 0, cd[4], 2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xb1264a80: cd[4], 2
                                                    emit 0x0: cd[4], 2
                                                else:
                                                    call sub_baafbcfcAddress.0xc4415ccf with:
                                                         gas gas_remaining wei
                                                        args 0, stor3, 0, cd[4], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xb1264a80: cd[4], 1
                                                    emit 0x0: cd[4], 1
                                        else:
                                            if block.number < 1:
                                                revert with 0, 17
                                            mem[mem[64] + 32] = block.timestamp
                                            mem[mem[64] + 64] = address(msg.sender)
                                            mem[mem[64] + 84] = block.hash(block.number - 1)
                                            _10257 = mem[64]
                                            mem[mem[64]] = 84
                                            mem[64] = mem[64] + 116
                                            if not uint8(stor9.field_0):
                                                revert with 0, 18
                                            if not sha3(mem[_10257 + 32 len mem[_10257]]) % uint8(stor9.field_0):
                                                require ext_code.size(stor3)
                                                staticcall stor3.mintPrice() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= eth.balance(this.address):
                                                    if stor8 == -1:
                                                        revert with 0, 17
                                                    stor8++
                                                    require ext_code.size(sub_baafbcfcAddress)
                                                    call sub_baafbcfcAddress.0xc4415ccf with:
                                                         gas gas_remaining wei
                                                        args 3, stor3, address(this.address), stor8, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0x3ac3b033 
                                                    emit 0x0 
                                            if not uint8(stor9.field_8):
                                                require ext_code.size(sub_baafbcfcAddress)
                                                call sub_baafbcfcAddress.0xc4415ccf with:
                                                     gas gas_remaining wei
                                                    args 0, stor3, 0, cd[4], 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xb1264a80: cd[4], 1
                                                emit 0x0: cd[4], 1
                                            else:
                                                if block.number < 1:
                                                    revert with 0, 17
                                                if not uint8(stor9.field_8):
                                                    revert with 0, 18
                                                require ext_code.size(sub_baafbcfcAddress)
                                                if not sha3(block.timestamp, msg.sender, block.hash(block.number - 1)) % uint8(stor9.field_8):
                                                    call sub_baafbcfcAddress.0xc4415ccf with:
                                                         gas gas_remaining wei
                                                        args 0, stor3, 0, cd[4], 2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xb1264a80: cd[4], 2
                                                    emit 0x0: cd[4], 2
                                                else:
                                                    call sub_baafbcfcAddress.0xc4415ccf with:
                                                         gas gas_remaining wei
                                                        args 0, stor3, 0, cd[4], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xb1264a80: cd[4], 1
                                                    emit 0x0: cd[4], 1
}



}
