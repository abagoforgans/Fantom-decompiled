contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address libraryAddress;
uint256 price;
array of struct stor4;

function owner() {
    return owner
}

function price() {
    return price
}

function libraryAddress() {
    return libraryAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setLibraryAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    libraryAddress = arg1
}

function UpdatePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
    emit 0x5717503f: 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function Withdraw() {
    if eth.balance(this.address) <= 0:
        revert with 0, 'Address: insufficient balance'
    call stor1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function sub_7020bbe6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Address: insufficient balance'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_808860cc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[64] = (32 * stor4[address(arg1)].field_0) + 128
    mem[96] = stor4[address(arg1)].field_0
    if not stor4[address(arg1)].field_0:
        mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
        idx = 0
        s = 128
        t = (32 * stor4[address(arg1)].field_0) + 192
        while idx < stor4[address(arg1)].field_0:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor4[address(arg1)].field_0) + 128
           len (96 * stor4[address(arg1)].field_0) + 64
    mem[128] = stor4[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor4[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor4[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor4[address(arg1)].field_0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4[address(arg1)].field_0) + -mem[64] + 192
}

function sub_ffcdd420(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    if eth.balance(tx.origin) < price:
        revert with 0, 'Address: insufficient balance'
    call stor1 with:
       value price wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        mem[(32 * ('cd', 4).length) + 128] = 0xaa2f522000000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 4).length) + 132] = 64
        mem[(32 * ('cd', 4).length) + 196] = ('cd', 4).length
        idx = 0
        s = 128
        t = (32 * ('cd', 4).length) + 228
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * ('cd', 4).length) + 164] = cd[68]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0xaa2f5220 with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 4).length) + 132 len (96 * ('cd', 4).length) + 96]
    else:
        mem[(32 * ('cd', 4).length) + 128] = return_data.size
        mem[(32 * ('cd', 4).length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 129] = 0xaa2f522000000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 133] = 64
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 197] = ('cd', 4).length
        idx = 0
        s = 128
        t = (32 * ('cd', 4).length) + ceil32(return_data.size) + 229
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 165] = cd[68]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0xaa2f5220 with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 133 len (96 * ('cd', 4).length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf9fd22d6: 1
}

function sub_69407c82(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307() or ceil32(arg2.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if eth.balance(tx.origin) < price:
        revert with 0, 'Address: insufficient balance'
    call stor1 with:
       value price wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        create contract with 0 wei
                        code: 0, libraryAddress, 0x5af43d82803e903d91602b57fd5bf3
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x9ab8367e00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(create.new_address))
        call address(create.new_address) with:
           funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
             gas gas_remaining wei
            args address(this.address), msg.sender, 10000 * 10^18, 160, ceil32(arg2.length) + 192, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, arg1.length, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor4[address(msg.sender)].field_0++
        stor4[address(msg.sender)][stor4[address(msg.sender)].field_0].field_0 = address(create.new_address)
        emit 0x12c93300: Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, uint128(create.new_address) << 96
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = return_data.size
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        create contract with 0 wei
                        code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, libraryAddress, 0x5af43d82803e903d91602b57fd5bf3
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x9ab8367e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, 10000 * 10^18, 160, ceil32(arg2.length) + 192, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, arg1.length, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor4[address(msg.sender)].field_0++
        stor4[address(msg.sender)][stor4[address(msg.sender)].field_0].field_0 = address(create.new_address)
        emit 0x12c93300: address(create.new_address)
}



}
