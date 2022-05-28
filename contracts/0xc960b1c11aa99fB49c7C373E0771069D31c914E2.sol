contract main {




// =====================  Runtime code  =====================


address owner;
address sub_37f9e0deAddress;
address sub_9df6c44fAddress;
address sub_587173caAddress;
address sub_c4e3cc43Address;
address sub_b4993ecfAddress;
address sub_1a331eb1Address;
address sub_1206a69cAddress;
address sub_ea9abaeeAddress;
address sub_03737857Address;
address sub_2844be84Address;
address sub_3769ccffAddress;
uint256 stor12;
address sub_f6c6e5e8Address;
address sub_87ced3dcAddress;
address sub_f088996fAddress;
address sub_dbd33e45Address;
address sub_85b374c3Address;
address sub_1458100bAddress;
address sub_1e9b8c59Address;
address sub_33aa2191Address;
address sub_7abd5a1cAddress;
address sub_63f96cf4Address;
address zapAddress;

function sub_03737857(?) {
    return sub_03737857Address
}

function sub_1206a69c(?) {
    return sub_1206a69cAddress
}

function sub_1458100b(?) {
    return sub_1458100bAddress
}

function sub_1a331eb1(?) {
    return sub_1a331eb1Address
}

function sub_1e9b8c59(?) {
    return sub_1e9b8c59Address
}

function zap() {
    return zapAddress
}

function sub_2844be84(?) {
    return sub_2844be84Address
}

function sub_33aa2191(?) {
    return sub_33aa2191Address
}

function sub_3769ccff(?) {
    return sub_3769ccffAddress
}

function sub_37f9e0de(?) {
    return sub_37f9e0deAddress
}

function sub_587173ca(?) {
    return sub_587173caAddress
}

function sub_63f96cf4(?) {
    return sub_63f96cf4Address
}

function sub_7abd5a1c(?) {
    return sub_7abd5a1cAddress
}

function sub_85b374c3(?) {
    return sub_85b374c3Address
}

function sub_87ced3dc(?) {
    return sub_87ced3dcAddress
}

function owner() {
    return owner
}

function sub_9df6c44f(?) {
    return sub_9df6c44fAddress
}

function sub_b4993ecf(?) {
    return sub_b4993ecfAddress
}

function sub_c4e3cc43(?) {
    return sub_c4e3cc43Address
}

function sub_dbd33e45(?) {
    return sub_dbd33e45Address
}

function sub_ea9abaee(?) {
    return sub_ea9abaeeAddress
}

function sub_f088996f(?) {
    return sub_f088996fAddress
}

function sub_f6c6e5e8(?) {
    return sub_f6c6e5e8Address
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

function sub_b4f12e52(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f24666cc(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8fe6f47c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_85b374c3Address)
    call sub_85b374c3Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function unstakeAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_f088996fAddress)
    call sub_f088996fAddress.userInfo(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(sub_f088996fAddress)
    call sub_f088996fAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f088996fAddress)
    call sub_f088996fAddress.userInfo(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args 1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(sub_f088996fAddress)
    call sub_f088996fAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_63f96cf4Address)
    call sub_63f96cf4Address.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_63f96cf4Address)
        call sub_63f96cf4Address.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_fb652d4c(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_587173caAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[132] = -1
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'we aint got no ftm'
    mem[ceil32(return_data.size) + 96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if ext_call.success:
    if return_data.size <= 3:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size < 68:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, Mask(224, 32, ext_call.return_data[0]) >> 32 > test266151307() or 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 36 > return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] > test266151307():
        revert with ext_call.return_data[0 len return_data.size]
    if 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 32 > return_data.size - 4:
        revert with ext_call.return_data[0 len return_data.size]
    if ceil32(return_data.size) + floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 31) + 97 > test266151307() or floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 31) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 31) + 97
    if not ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 96:
        revert with ext_call.return_data[0 len return_data.size]
    _19 = mem[64]
    mem[mem[64] + 32] = 'unwrap ftm '
    _20 = mem[ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    mem[mem[64] + 43 len ceil32(mem[ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 96])] = mem[ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 128 len ceil32(mem[ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 96])]
    if ceil32(_20) <= _20:
        _35 = mem[64]
        mem[64] = mem[64] + _20 + 43
        mem[_19 + _20 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_19 + _20 + 47] = 32
        _39 = mem[_35]
        mem[_19 + _20 + 79] = mem[_35]
        mem[_19 + _20 + 111 len ceil32(_39)] = mem[_35 + 32 len ceil32(_39)]
        if ceil32(_39) > _39:
            mem[_19 + _20 + _39 + 111] = 0
        revert with 0, 32, mem[_19 + _20 + 79 len ceil32(_39) + 32]
    mem[mem[64] + _20 + 43] = 0
    _37 = mem[64]
    mem[64] = mem[64] + _20 + 43
    mem[_19 + _20 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_19 + _20 + 47] = 32
    _40 = mem[_37]
    mem[_19 + _20 + 79] = mem[_37]
    mem[_19 + _20 + 111 len ceil32(_40)] = mem[_37 + 32 len ceil32(_40)]
    if ceil32(_40) > _40:
        mem[_19 + _20 + _40 + 111] = 0
    revert with 0, 32, mem[_19 + _20 + 79 len ceil32(_40) + 32]
}

function withdrawAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_85b374c3Address)
    staticcall sub_85b374c3Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_85b374c3Address)
        call sub_85b374c3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_85b374c3Address)
        call sub_85b374c3Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_dbd33e45Address)
        call sub_dbd33e45Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_dbd33e45Address)
        call sub_dbd33e45Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_dbd33e45Address)
        call sub_dbd33e45Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_1458100bAddress)
        call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_1458100bAddress)
        call sub_1458100bAddress.balanceOf(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_1458100bAddress)
        call sub_1458100bAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_1e9b8c59Address)
    staticcall sub_1e9b8c59Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_1e9b8c59Address)
        call sub_1e9b8c59Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_1e9b8c59Address)
        staticcall sub_1e9b8c59Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_1e9b8c59Address)
        call sub_1e9b8c59Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_33aa2191Address)
    staticcall sub_33aa2191Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_33aa2191Address)
        call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_33aa2191Address)
        staticcall sub_33aa2191Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_33aa2191Address)
        call sub_33aa2191Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address) > 0:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_5821ed0d(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor12 > -1:
        revert with 'NH{q', 17
    mem[132] = stor12
    require ext_code.size(sub_7abd5a1cAddress)
    call sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_37f9e0deAddress, stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.taxRate() with:
         gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] > -eth.balance(msg.sender) - 1:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_1206a69cAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if (ext_call.return_data[0] * ext_call.return_data[0]) + eth.balance(msg.sender) / 2 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) + eth.balance(msg.sender) / 2 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * ext_call.return_data[0]) + eth.balance(msg.sender) / 2 / ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) + eth.balance(msg.sender) / 2 / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[(6 * ceil32(return_data.size)) + 96] = sub_37f9e0deAddress
    mem[(6 * ceil32(return_data.size)) + 128] = sub_587173caAddress
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(6 * ceil32(return_data.size)) + 160] = 0x7dd0674800000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 164] = (ext_call.return_data[0] * ext_call.return_data[0]) + eth.balance(msg.sender) / 2 / ext_call.return_data[0]
    idx = 0
    s = (6 * ceil32(return_data.size)) + 96
    t = (6 * ceil32(return_data.size)) + 228
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_f6c6e5e8Address)
    call sub_f6c6e5e8Address.0x7dd06748 with:
         gas gas_remaining wei
        args (ext_call.return_data[0] * ext_call.return_data[0]) + eth.balance(msg.sender) / 2 / ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) + eth.balance(msg.sender) / 2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 14, mem[(6 * ceil32(return_data.size)) + 228 len 64], address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < 0:
        revert with 'NH{q', 17
    if eth.balance(msg.sender) < eth.balance(msg.sender):
        revert with 'NH{q', 17
    require ext_code.size(sub_1e9b8c59Address)
    staticcall sub_1e9b8c59Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_ea9abaeeAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_ea9abaeeAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_87ced3dcAddress)
    call sub_87ced3dcAddress.0x73baccc0 with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_1e9b8c59Address)
    staticcall sub_1e9b8c59Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(sub_85b374c3Address)
    staticcall sub_85b374c3Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_1e9b8c59Address)
    call sub_1e9b8c59Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_3769ccffAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_f088996fAddress)
    call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_85b374c3Address)
    staticcall sub_85b374c3Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    emit 0x2bdaf80f: 0
    require ext_code.size(sub_85b374c3Address)
    staticcall sub_85b374c3Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_33aa2191Address)
    staticcall sub_33aa2191Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_85b374c3Address)
    call sub_85b374c3Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_1a331eb1Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_1a331eb1Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(zapAddress)
    call zapAddress.0xcee6202c with:
         gas gas_remaining wei
        args sub_9df6c44fAddress, ext_call.return_data[0], sub_b4993ecfAddress, sub_1206a69cAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_33aa2191Address)
    staticcall sub_33aa2191Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    emit 0x1aa29c48: ext_call.return_data[0], 0
    require ext_code.size(sub_85b374c3Address)
    staticcall sub_85b374c3Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_33aa2191Address)
    call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_3769ccffAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_f088996fAddress)
    call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_85b374c3Address)
    staticcall sub_85b374c3Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    emit 0x8ced237d: 0
}

function compound() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_63f96cf4Address)
    call sub_63f96cf4Address.canClaimReward(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_f088996fAddress)
        call sub_f088996fAddress.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(sub_33aa2191Address)
        staticcall sub_33aa2191Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_85b374c3Address)
        call sub_85b374c3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_1a331eb1Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_1458100bAddress)
        call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_1a331eb1Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(zapAddress)
        call zapAddress.0xcee6202c with:
             gas gas_remaining wei
            args sub_9df6c44fAddress, 0, sub_b4993ecfAddress, sub_1206a69cAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_33aa2191Address)
        staticcall sub_33aa2191Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        emit 0x1aa29c48: 0
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_33aa2191Address)
        call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_3769ccffAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_f088996fAddress)
        call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        emit 0x8ced237d: 0
    else:
        if stor12 > -1:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 100] = sub_37f9e0deAddress
        mem[ceil32(return_data.size) + 132] = stor12
        require ext_code.size(sub_7abd5a1cAddress)
        call sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_37f9e0deAddress, stor12
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 10 xor stor12:
            require ext_code.size(sub_33aa2191Address)
            staticcall sub_33aa2191Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_85b374c3Address)
            call sub_85b374c3Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_1a331eb1Address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_1458100bAddress)
            call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_1a331eb1Address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(zapAddress)
            call zapAddress.0xcee6202c with:
                 gas gas_remaining wei
                args sub_9df6c44fAddress, 0, sub_b4993ecfAddress, sub_1206a69cAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_33aa2191Address)
            staticcall sub_33aa2191Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            emit 0x1aa29c48: 0
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_33aa2191Address)
            call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_3769ccffAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_f088996fAddress)
            call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            emit 0x8ced237d: 0
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_63f96cf4Address)
            call sub_63f96cf4Address.claimReward() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(sub_dbd33e45Address)
            call sub_dbd33e45Address.taxRate() with:
                 gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(sub_dbd33e45Address)
            call sub_dbd33e45Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args this.address
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > -eth.balance(msg.sender) - 1:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(sub_dbd33e45Address)
            call sub_dbd33e45Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_1206a69cAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + eth.balance(msg.sender) / 2 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + eth.balance(msg.sender) / 2 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + eth.balance(msg.sender) / 2 / ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + eth.balance(msg.sender) / 2 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 17
            mem[(8 * ceil32(return_data.size)) + 96] = sub_37f9e0deAddress
            mem[(8 * ceil32(return_data.size)) + 128] = sub_587173caAddress
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(8 * ceil32(return_data.size)) + 160] = 0x7dd0674800000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 164] = (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + eth.balance(msg.sender) / 2 / ext_call.return_data[0]
            idx = 0
            s = (8 * ceil32(return_data.size)) + 96
            t = (8 * ceil32(return_data.size)) + 228
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(sub_f6c6e5e8Address)
            call sub_f6c6e5e8Address.0x7dd06748 with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + eth.balance(msg.sender) / 2 / ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + eth.balance(msg.sender) / 2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 14, mem[(8 * ceil32(return_data.size)) + 228 len 64], address(this.address), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbd33e45Address)
            call sub_dbd33e45Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if eth.balance(msg.sender) < eth.balance(msg.sender):
                revert with 'NH{q', 17
            require ext_code.size(sub_1e9b8c59Address)
            staticcall sub_1e9b8c59Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_1458100bAddress)
            call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_ea9abaeeAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbd33e45Address)
            call sub_dbd33e45Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_ea9abaeeAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_87ced3dcAddress)
            call sub_87ced3dcAddress.0x73baccc0 with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_1e9b8c59Address)
            staticcall sub_1e9b8c59Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_1e9b8c59Address)
            call sub_1e9b8c59Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_3769ccffAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_f088996fAddress)
            call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            emit 0x2bdaf80f: 0
            require ext_code.size(sub_33aa2191Address)
            staticcall sub_33aa2191Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_85b374c3Address)
            call sub_85b374c3Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_1a331eb1Address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_1458100bAddress)
            call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_1a331eb1Address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(zapAddress)
            call zapAddress.0xcee6202c with:
                 gas gas_remaining wei
                args sub_9df6c44fAddress, 0, sub_b4993ecfAddress, sub_1206a69cAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_33aa2191Address)
            staticcall sub_33aa2191Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            emit 0x1aa29c48: 0
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_33aa2191Address)
            call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_3769ccffAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_f088996fAddress)
            call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            emit 0x8ced237d: 0
            require ext_code.size(sub_85b374c3Address)
            call sub_85b374c3Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_2844be84Address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_63f96cf4Address)
            call sub_63f96cf4Address.stake(uint256 arg1) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xe4dba445: 0
}



}
