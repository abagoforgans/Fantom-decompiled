contract main {




// =====================  Runtime code  =====================


address owner;
address rarityAddress;
address sub_1d423d76Address;
address sub_00bb08a2Address;
array of struct stor4;
array of struct stor5;
uint256 sub_9135dfac;
uint256 sub_af3add5f;
uint256 sub_3bc33485;
mapping of address stor9;
array of struct stor10;
mapping of uint256 stor11;
array of uint256 stor12;
mapping of uint256 stor13;
mapping of address stor14;

function sub_00bb08a2(?) {
    return sub_00bb08a2Address
}

function sub_1d423d76(?) {
    return sub_1d423d76Address
}

function sub_3bc33485(?) {
    return sub_3bc33485
}

function sub_5e635fdc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[address(arg1)])
}

function owner() {
    return owner
}

function sub_9135dfac(?) {
    return sub_9135dfac
}

function sub_af3add5f(?) {
    return sub_af3add5f
}

function rarity() {
    return rarityAddress
}

function donate() payable {
  stop
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

function sub_9a5ef5af(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor14[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the original owner.'
    stor14[arg1] = address(arg2)
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

function sub_c0059686(?) {
    require calldata.size - 4 >= 32
    if stor14[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the original owner.'
    require ext_code.size(sub_1d423d76Address)
    call sub_1d423d76Address.0x379607f5 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c062d14e(?) {
    require calldata.size - 4 >= 32
    if stor14[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the original owner.'
    require ext_code.size(sub_00bb08a2Address)
    call sub_00bb08a2Address.increase_wisdom(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b2340b3c(?) {
    require calldata.size - 4 >= 32
    if stor14[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the original owner.'
    require ext_code.size(sub_00bb08a2Address)
    call sub_00bb08a2Address.increase_strength(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_be263767(?) {
    require calldata.size - 4 >= 32
    if stor14[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the original owner.'
    require ext_code.size(sub_00bb08a2Address)
    call sub_00bb08a2Address.increase_charisma(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bad19ff8(?) {
    require calldata.size - 4 >= 32
    if stor14[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the original owner.'
    require ext_code.size(sub_00bb08a2Address)
    call sub_00bb08a2Address.increase_dexterity(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_24b02876(?) {
    require calldata.size - 4 >= 32
    if stor14[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the original owner.'
    require ext_code.size(sub_00bb08a2Address)
    call sub_00bb08a2Address.increase_intelligence(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_92756503(?) {
    require calldata.size - 4 >= 32
    if stor14[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the original owner.'
    require ext_code.size(sub_00bb08a2Address)
    call sub_00bb08a2Address.increase_constitution(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_19fdb52d(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args sub_9135dfac
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not the guild master.'
    sub_af3add5f = arg1
}

function sub_a1664e37(?) {
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.ownerOf(uint256 arg1) with:
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
    staticcall rarityAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args sub_9135dfac
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not the guild master.'
    stor9[address(arg1)] = address(arg1)
    if not stor11[address(arg1)]:
        stor10.length++
        stor10[stor10.length].field_0 = address(arg1)
        stor10[stor10.length].field_160 = 0
        stor11[address(arg1)] = stor10.length
}

function sub_2ca8caa0(?) {
    require calldata.size - 4 >= 224
    require arg2 == uint32(arg2)
    require arg3 == uint32(arg3)
    require arg4 == uint32(arg4)
    require arg5 == uint32(arg5)
    require arg6 == uint32(arg6)
    require arg7 == uint32(arg7)
    if stor14[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the original owner.'
    require ext_code.size(sub_00bb08a2Address)
    call sub_00bb08a2Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2 << 224, arg3 << 224, uint32(arg4), arg5 << 224, arg6 << 224, uint32(arg7)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c83874b4(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.ownerOf(uint256 arg1) with:
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

function sub_cdefd286(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args sub_9135dfac
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not the guild master.'
    stor9[address(arg1)] = 0
    if stor11[address(arg1)]:
        if stor11[address(arg1)] < 1:
            revert with 0, 17
        if stor10.length < 1:
            revert with 0, 17
        if stor10.length - 1 != stor11[address(arg1)] - 1:
            if stor10.length - 1 >= stor10.length:
                revert with 0, 50
            if stor11[address(arg1)] - 1 >= stor10.length:
                revert with 0, 50
            stor10[stor11[address(arg1)]].field_0 = stor10[stor10.length].field_0
            stor11[stor10[stor10.length].field_0] = stor11[address(arg1)]
        if not stor10.length:
            revert with 0, 49
        stor10[stor10.length].field_0 = 0
        stor10.length--
        stor11[address(arg1)] = 0
}

function send_out() payable {
    mem[64] = 96
    require not msg.value
    if var62002 >= stor12.length:
        if 24 * 3600 > !block.timestamp:
            revert with 0, 17
        sub_3bc33485 = block.timestamp + (24 * 3600)
    if var68001 >= stor12.length:
        revert with 0, 50
    mem[0] = 12
    mem[96] = 0xeed2502800000000000000000000000000000000000000000000000000000000
    mem[100] = var74001
    require ext_code.size(rarityAddress)
    call rarityAddress.mem[var76004 len 4] with:
         gas gas_remaining wei
        args mem[var76004 + 4 len var76005 - 4]
    mem[var76006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var80002 - var80001 >= 32
    if block.timestamp <= var84001:
        # nil
    else:
        mem[ceil32(return_data.size) + 96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = var86001
        require ext_code.size(rarityAddress)
        call rarityAddress.mem[var88004 len 4] with:
             gas gas_remaining wei
            args mem[var88004 + 4 len var88005 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(rarityAddress)
        # nil
}

function sub_64037530(?) {
    require calldata.size - 4 >= 32
    if stor14[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the original owner.'
    require ext_code.size(rarityAddress)
    call rarityAddress.level(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.xp_required(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rarityAddress)
    call rarityAddress.xp(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        require ext_code.size(rarityAddress)
        call rarityAddress.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_1d423d76Address)
        call sub_1d423d76Address.0x379607f5 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_34747ddb(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args sub_9135dfac
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not the guild master.'
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_6b701e08(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args sub_9135dfac
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not the guild master.'
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_c7fc3593(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
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
    if msg.value < sub_af3add5f:
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
        stor14[mem[(32 * idx) + 128]] = msg.sender
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 13
        if not stor13[mem[(32 * idx) + 128]]:
            stor12.length++
            stor12[stor12.length] = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 13
            stor13[mem[(32 * idx) + 128]] = stor12.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_c9db51e8(?) {
    require calldata.size - 4 >= 32
    if stor14[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the original owner.'
    require ext_code.size(rarityAddress)
    call rarityAddress.adventurers_log(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp > ext_call.return_data[0]:
        require ext_code.size(rarityAddress)
        call rarityAddress.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(rarityAddress)
        call rarityAddress.level(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(rarityAddress)
        call rarityAddress.xp(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            require ext_code.size(rarityAddress)
            call rarityAddress.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_1d423d76Address)
            call sub_1d423d76Address.0x379607f5 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_c6ddc231(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor14[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the original owner.'
    if not stor11[address(arg2)]:
        require ext_code.size(address(arg2))
        call address(arg2).adventurers_log(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp > ext_call.return_data[0]:
            require ext_code.size(address(arg2))
            staticcall address(arg2).scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(address(arg2))
                call address(arg2).adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        require ext_code.size(stor9[address(arg2)])
        call stor9[address(arg2)].adventurers_log(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp > ext_call.return_data[0]:
            require ext_code.size(stor9[address(arg2)])
            staticcall stor9[address(arg2)].scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(stor9[address(arg2)])
                call stor9[address(arg2)].adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
}

function sub_6760fd4a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor12.length > test266151307():
        revert with 0, 65
    if not stor12.length:
        if var42002 >= stor12.length:
            mem[(32 * stor12.length) + 128] = 32
            mem[(32 * stor12.length) + 160] = stor12.length
            mem[(32 * stor12.length) + 192 len 32 * stor12.length] = mem[128 len 32 * stor12.length]
            return memory
              from (32 * stor12.length) + 128
               len (96 * stor12.length) + 64
        if var48001 >= stor12.length:
            revert with 0, 50
        if stor14[var54001] == address(arg1):
            if var60001 >= stor12.length:
                revert with 0, 50
            if var66002 >= stor12.length:
                revert with 0, 50
            if var72001 == -1:
                revert with 0, 17
            # nil
        else:
            if var58001 == -1:
                revert with 0, 17
            if var70002 < stor12.length:
                # nil
            else:
                mem[(32 * stor12.length) + 128] = 32
                mem[(32 * stor12.length) + 160] = stor12.length
                mem[(32 * stor12.length) + 192 len 32 * stor12.length] = mem[128 len 32 * stor12.length]
                return memory
                  from (32 * stor12.length) + 128
                   len (96 * stor12.length) + 64
    else:
        mem[128 len 32 * stor12.length] = call.data[calldata.size len 32 * stor12.length]
        if var43002 >= stor12.length:
            mem[(32 * stor12.length) + 128] = 32
            mem[(32 * stor12.length) + 160] = stor12.length
            mem[(32 * stor12.length) + 192 len 32 * stor12.length] = call.data[calldata.size len 32 * stor12.length]
            return memory
              from (32 * stor12.length) + 128
               len (96 * stor12.length) + 64
        if var49001 >= stor12.length:
            revert with 0, 50
        if stor14[var55001] == address(arg1):
            if var61001 >= stor12.length:
                revert with 0, 50
            if var67002 >= stor12.length:
                revert with 0, 50
            if var73001 == -1:
                revert with 0, 17
            # nil
        else:
            if var59001 == -1:
                revert with 0, 17
            if var71002 < stor12.length:
                # nil
            else:
                mem[(32 * stor12.length) + 128] = 32
                mem[(32 * stor12.length) + 160] = stor12.length
                mem[(32 * stor12.length) + 192 len 32 * stor12.length] = call.data[calldata.size len 32 * stor12.length]
                return memory
                  from (32 * stor12.length) + 128
                   len (96 * stor12.length) + 64
}

function sub_853d0957(?) {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
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
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
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

function sub_b7c5de76(?) {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function sub_9c4e8e06(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
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
        mem[32] = 13
        if stor13[mem[(32 * idx) + 128]]:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 14
            if stor14[mem[(32 * idx) + 128]] == msg.sender:
                if idx >= mem[96]:
                    revert with 0, 50
                stor14[mem[(32 * idx) + 128]] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 13
                if not stor13[mem[(32 * idx) + 128]]:
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
                    if stor13[mem[(32 * idx) + 128]] < 1:
                        revert with 0, 17
                    if stor12.length < 1:
                        revert with 0, 17
                    if stor12.length - 1 == stor13[mem[(32 * idx) + 128]] - 1:
                        if not stor12.length:
                            revert with 0, 49
                        stor12[stor12.length] = 0
                        stor12.length--
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 13
                        stor13[mem[(32 * idx) + 128]] = 0
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
                        if stor12.length - 1 >= stor12.length:
                            revert with 0, 50
                        if stor13[mem[(32 * idx) + 128]] - 1 >= stor12.length:
                            revert with 0, 50
                        stor12[stor13[mem[(32 * idx) + 128]]] = stor12[stor12.length]
                        stor13[stor12[stor12.length]] = stor13[mem[(32 * idx) + 128]]
                        if not stor12.length:
                            revert with 0, 49
                        stor12[stor12.length] = 0
                        stor12.length--
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 13
                        stor13[mem[(32 * idx) + 128]] = 0
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
