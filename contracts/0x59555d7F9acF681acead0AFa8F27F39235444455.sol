contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 stor1;
address owner;
address sub_c520e495Address;
address rarityAddress;
mapping of uint256 stor154;
address sub_4ddb3253Address;
address sub_1d423d76Address;
address sub_971fe03dAddress;
address sub_8db45ccdAddress;
address sub_8f37c1ceAddress;
address sub_0a8c638dAddress;

function sub_0a8c638d(?) payable {
    return sub_0a8c638dAddress
}

function sub_1d423d76(?) payable {
    return sub_1d423d76Address
}

function sub_4ddb3253(?) payable {
    return sub_4ddb3253Address
}

function owner() payable {
    return owner
}

function sub_8db45ccd(?) payable {
    return sub_8db45ccdAddress
}

function sub_8f37c1ce(?) payable {
    return sub_8f37c1ceAddress
}

function sub_971fe03d(?) payable {
    return sub_971fe03dAddress
}

function sub_c520e495(?) payable {
    return sub_c520e495Address
}

function rarity() payable {
    return rarityAddress
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

function unlist(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_8db45ccdAddress)
    call sub_8db45ccdAddress.0xbf5a4dd3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function list(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_8db45ccdAddress)
    call sub_8db45ccdAddress.0x50fd7367 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6385b26a(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.adventurers_log(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (block.timestamp > ext_call.return_data[0])
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rarityAddress)
    call rarityAddress.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c751f3a1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4ddb3253Address = address(arg1)
    sub_971fe03dAddress = address(arg2)
    sub_8f37c1ceAddress = address(arg3)
    sub_1d423d76Address = address(arg1)
    sub_8db45ccdAddress = address(arg2)
    sub_0a8c638dAddress = address(arg3)
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not stor154[arg3]:
        stor153.length++
        stor153[stor153.length] = arg3
        stor154[arg3] = stor153.length
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function set() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1d423d76Address = 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2
    sub_8db45ccdAddress = 0xf9b8dd449a958563213be539ce13bf6a3751bd3
    sub_0a8c638dAddress = 0x3fc0539d1a0737fca3e4556a990aae1c38425f14
    require ext_code.size(rarityAddress)
    call rarityAddress.0xa22cb465 with:
         gas gas_remaining wei
        args 0xf9b8dd449a958563213be539ce13bf6a3751bd3, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a14ef38e(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg2:
        mem[96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(rarityAddress)
        call rarityAddress.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_5b13f026(?) payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var33002 >= stor153.length:
    if var39001 >= stor153.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require var41002 < stor153.length
    mem[0] = 153
    mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
    mem[var51001] = var51002
    require ext_code.size(rarityAddress)
    call rarityAddress.mem[var55004 len 4] with:
         gas gas_remaining wei
        args mem[var55004 + 4 len var55005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_ff6120be(?) payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var33002 >= stor153.length:
    if var39001 >= stor153.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require var41002 < stor153.length
    mem[0] = 153
    mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
    mem[var51001] = var51002
    require ext_code.size(rarityAddress)
    call rarityAddress.mem[var55004 len 4] with:
         gas gas_remaining wei
        args mem[var55004 + 4 len var55005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_3f4528cb(?) payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var42002 >= stor153.length:
    if var48001 >= stor153.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require var50002 < stor153.length
    mem[0] = 153
    mem[96] = 0xd1d58b2500000000000000000000000000000000000000000000000000000000
    mem[var60001] = var60002
    require ext_code.size(sub_1d423d76Address)
    staticcall sub_1d423d76Address.mem[var64003 len 4] with:
            gas gas_remaining wei
           args mem[var64003 + 4 len var64004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var68002 - var68001 >= 32
    # nil
}

function sub_ecc1c331(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var36002 >= stor153.length:
    if var42001 >= stor153.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require var44002 < stor153.length
    mem[0] = 153
    mem[96] = 0xe58410bb00000000000000000000000000000000000000000000000000000000
    mem[var54001] = var54003
    mem[var54001 + 32] = arg1
    require ext_code.size(rarityAddress)
    call rarityAddress.mem[var58004 len 4] with:
         gas gas_remaining wei
        args mem[var58004 + 4 len var58005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_85027eb1(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 < 10^18:
        revert with 0, '<= 1 ether'
    idx = 0
    while idx < arg2:
        if idx + arg1 >= stor153.length:
            revert with 0, 'EnumerableSet: index out of bounds'
        mem[0] = 153
        mem[96] = 0x50fd736700000000000000000000000000000000000000000000000000000000
        mem[100] = stor[('name', 'stor153', 153) + idx + arg1]
        mem[132] = arg3
        require ext_code.size(sub_8db45ccdAddress)
        call sub_8db45ccdAddress.0x50fd7367 with:
             gas gas_remaining wei
            args stor[('name', 'stor153', 153) + idx + arg1], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_96102cf4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 10^18:
        revert with 0, '<= 1 ether'
    if var37002 >= stor153.length:
    if var43001 >= stor153.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require var45002 < stor153.length
    mem[0] = 153
    mem[96] = 0x50fd736700000000000000000000000000000000000000000000000000000000
    mem[var55001] = var55003
    mem[var55001 + 32] = arg1
    require ext_code.size(sub_8db45ccdAddress)
    call sub_8db45ccdAddress.mem[var59004 len 4] with:
         gas gas_remaining wei
        args mem[var59004 + 4 len var59005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_a8fb63c2(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.level(uint256 arg1) with:
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
    staticcall rarityAddress.xp(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= ext_call.return_data[0]
}

function sub_006d5e52(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var51002 >= stor153.length:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if arg1 < 10^18:
            revert with 0, '<= 1 ether'
        if var61002 >= stor153.length:
        if var67001 >= stor153.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
        require var69002 < stor153.length
        # nil
    else:
        if var57001 >= stor153.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
        require var59002 < stor153.length
        mem[0] = 153
        mem[96] = 0xd1d58b2500000000000000000000000000000000000000000000000000000000
        mem[var69001] = var69002
        require ext_code.size(sub_1d423d76Address)
        staticcall sub_1d423d76Address.mem[var73003 len 4] with:
                gas gas_remaining wei
               args mem[var73003 + 4 len var73004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var77002 - var77001 >= 32
        # nil
}

function withdraw_token(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if 0 > eth.balance(this.address):
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 328] = 0
            call arg1 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_6153279c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg2:
        _19 = mem[64]
        mem[64] = mem[64] + 64
        mem[_19 + 32] = call.data[calldata.size]
        mem[_19 + 64] = 0xa6177d1e00000000000000000000000000000000000000000000000000000000
        mem[_19 + 68] = this.address
        mem[_19 + 100] = arg1 + idx
        mem[_19 + 132] = 1
        require ext_code.size(sub_8db45ccdAddress)
        staticcall sub_8db45ccdAddress.myListsAt(address arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(this.address), arg1 + idx, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_19 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _19 + ceil32(return_data.size) + 64
        require return_data.size >= 64
        _23 = mem[_19 + 64 len 4], address(this.address) << 64
        require mem[_19 + 64 len 4], address(this.address) << 64 <= test266151307()
        require _19 + mem[_19 + 64 len 4], address(this.address) << 64 + 95 < _19 + return_data.size + 64
        _24 = mem[_19 + mem[_19 + 64 len 4], address(this.address) << 64 + 64]
        require mem[_19 + mem[_19 + 64 len 4], address(this.address) << 64 + 64] <= test266151307()
        require _19 + ceil32(return_data.size) + (32 * mem[_19 + mem[_19 + 64 len 4], address(this.address) << 64 + 64]) + 96 <= test266151307() and (32 * mem[_19 + mem[_19 + 64 len 4], address(this.address) << 64 + 64]) + 32 >= 0
        mem[64] = _19 + ceil32(return_data.size) + (32 * mem[_19 + mem[_19 + 64 len 4], address(this.address) << 64 + 64]) + 96
        mem[_19 + ceil32(return_data.size) + 64] = _24
        require return_data.size >= _23 + (32 * _24) + 32
        t = _19 + _23 + 96
        s = 0
        u = _19 + ceil32(return_data.size) + 96
        while s < _24:
            mem[u] = mem[t]
            t = t + 32
            s = s + 1
            u = u + 32
            continue 
        _36 = mem[_19 + 96]
        require mem[_19 + 96] <= test266151307()
        require _19 + mem[_19 + 96] + 95 < _19 + return_data.size + 64
        _37 = mem[_19 + mem[_19 + 96] + 64]
        require mem[_19 + mem[_19 + 96] + 64] <= test266151307()
        _38 = mem[64]
        require mem[64] + (32 * mem[_19 + mem[_19 + 96] + 64]) + 32 <= test266151307() and mem[64] + (32 * mem[_19 + mem[_19 + 96] + 64]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * mem[_19 + mem[_19 + 96] + 64]) + 32
        mem[_38] = _37
        require return_data.size >= _36 + (32 * _37) + 32
        t = _19 + _36 + 96
        s = 0
        u = _38 + 32
        while s < _37:
            mem[u] = mem[t]
            t = t + 32
            s = s + 1
            u = u + 32
            continue 
        require mem[_19 + ceil32(return_data.size) + 64]
        _46 = mem[_19 + ceil32(return_data.size) + 96]
        mem[mem[64]] = 0xbf5a4dd300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _46
        require ext_code.size(sub_8db45ccdAddress)
        call sub_8db45ccdAddress.0xbf5a4dd3 with:
             gas gas_remaining wei
            args _46
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_780ac25f(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_8db45ccdAddress)
    staticcall sub_8db45ccdAddress.myListLength(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        _23 = mem[64]
        mem[64] = mem[64] + 64
        mem[_23 + 32] = call.data[calldata.size]
        mem[_23 + 64] = 0xa6177d1e00000000000000000000000000000000000000000000000000000000
        mem[_23 + 68] = this.address
        mem[_23 + 100] = idx
        mem[_23 + 132] = 1
        require ext_code.size(sub_8db45ccdAddress)
        staticcall sub_8db45ccdAddress.myListsAt(address arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(this.address), idx, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_23 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _23 + ceil32(return_data.size) + 64
        require return_data.size >= 64
        _27 = mem[_23 + 64 len 4], address(this.address) << 64
        require mem[_23 + 64 len 4], address(this.address) << 64 <= test266151307()
        require _23 + mem[_23 + 64 len 4], address(this.address) << 64 + 95 < _23 + return_data.size + 64
        _28 = mem[_23 + mem[_23 + 64 len 4], address(this.address) << 64 + 64]
        require mem[_23 + mem[_23 + 64 len 4], address(this.address) << 64 + 64] <= test266151307()
        require _23 + ceil32(return_data.size) + (32 * mem[_23 + mem[_23 + 64 len 4], address(this.address) << 64 + 64]) + 96 <= test266151307() and (32 * mem[_23 + mem[_23 + 64 len 4], address(this.address) << 64 + 64]) + 32 >= 0
        mem[64] = _23 + ceil32(return_data.size) + (32 * mem[_23 + mem[_23 + 64 len 4], address(this.address) << 64 + 64]) + 96
        mem[_23 + ceil32(return_data.size) + 64] = _28
        require return_data.size >= _27 + (32 * _28) + 32
        t = _23 + _27 + 96
        s = 0
        u = _23 + ceil32(return_data.size) + 96
        while s < _28:
            mem[u] = mem[t]
            t = t + 32
            s = s + 1
            u = u + 32
            continue 
        _40 = mem[_23 + 96]
        require mem[_23 + 96] <= test266151307()
        require _23 + mem[_23 + 96] + 95 < _23 + return_data.size + 64
        _41 = mem[_23 + mem[_23 + 96] + 64]
        require mem[_23 + mem[_23 + 96] + 64] <= test266151307()
        _42 = mem[64]
        require mem[64] + (32 * mem[_23 + mem[_23 + 96] + 64]) + 32 <= test266151307() and mem[64] + (32 * mem[_23 + mem[_23 + 96] + 64]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * mem[_23 + mem[_23 + 96] + 64]) + 32
        mem[_42] = _41
        require return_data.size >= _40 + (32 * _41) + 32
        t = _23 + _40 + 96
        s = 0
        u = _42 + 32
        while s < _41:
            mem[u] = mem[t]
            t = t + 32
            s = s + 1
            u = u + 32
            continue 
        require mem[_23 + ceil32(return_data.size) + 64]
        _50 = mem[_23 + ceil32(return_data.size) + 96]
        mem[mem[64]] = 0xbf5a4dd300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _50
        require ext_code.size(sub_8db45ccdAddress)
        call sub_8db45ccdAddress.0xbf5a4dd3 with:
             gas gas_remaining wei
            args _50
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        stor1 = 1
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        sub_c520e495Address = arg1
        rarityAddress = arg1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor1 = 1
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            sub_c520e495Address = arg1
            rarityAddress = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                stor1 = 1
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                sub_c520e495Address = arg1
                rarityAddress = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    stor1 = 1
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    sub_c520e495Address = arg1
                    rarityAddress = arg1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    stor1 = 1
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        sub_c520e495Address = arg1
                        rarityAddress = arg1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            sub_c520e495Address = arg1
                            rarityAddress = arg1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                                sub_c520e495Address = arg1
                                rarityAddress = arg1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                sub_c520e495Address = arg1
                                rarityAddress = arg1
                                uint8(stor0.field_8) = 0
}

function sub_cbf0bfac(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= stor153.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    mem[100] = stor153
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.adventurers_log(uint256 arg1) with:
            gas gas_remaining wei
           args stor153
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 >= stor153.length:
        revert with 0, 'EnumerableSet: index out of bounds'
    mem[ceil32(return_data.size) + 100] = stor153
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.level(uint256 arg1) with:
            gas gas_remaining wei
           args stor153
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.xp_required(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = stor153
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.xp(uint256 arg1) with:
            gas gas_remaining wei
           args stor153
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if block.timestamp > ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if var88002 >= stor153.length:
            if ext_call.return_data[0] < ext_call.return_data[0]:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if var107002 >= stor153.length:
            if var113001 >= stor153.length:
                revert with 0, 'EnumerableSet: index out of bounds'
            require var115002 < stor153.length
            # nil
        else:
            if var94001 >= stor153.length:
                revert with 0, 'EnumerableSet: index out of bounds'
            require var96002 < stor153.length
            mem[0] = 153
            mem[(6 * ceil32(return_data.size)) + 96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[var106001] = var106002
            require ext_code.size(rarityAddress)
            call rarityAddress.mem[var110004 len 4] with:
                 gas gas_remaining wei
                args mem[var110004 + 4 len var110005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
    else:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'neither adventureable nor lever-uppable'
        if block.timestamp > ext_call.return_data[0]:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if var89002 >= stor153.length:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if var108002 >= stor153.length:
                if var114001 >= stor153.length:
                    revert with 0, 'EnumerableSet: index out of bounds'
                require var116002 < stor153.length
                # nil
            else:
                if var95001 >= stor153.length:
                    revert with 0, 'EnumerableSet: index out of bounds'
                require var97002 < stor153.length
                mem[0] = 153
                mem[(6 * ceil32(return_data.size)) + 96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[var107001] = var107002
                require ext_code.size(rarityAddress)
                call rarityAddress.mem[var111004 len 4] with:
                     gas gas_remaining wei
                    args mem[var111004 + 4 len var111005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
        else:
            if ext_call.return_data[0] < ext_call.return_data[0]:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if var90002 >= stor153.length:
            if var96001 >= stor153.length:
                revert with 0, 'EnumerableSet: index out of bounds'
            require var98002 < stor153.length
            mem[0] = 153
            mem[(6 * ceil32(return_data.size)) + 96] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[var108001] = var108002
            require ext_code.size(rarityAddress)
            call rarityAddress.mem[var112004 len 4] with:
                 gas gas_remaining wei
                args mem[var112004 + 4 len var112005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
}

function sub_f921676c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_8db45ccdAddress)
    staticcall sub_8db45ccdAddress.myListLength(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        _170 = mem[64]
        mem[64] = mem[64] + 64
        mem[_170 + 32] = call.data[calldata.size]
        mem[_170 + 64] = 0xa6177d1e00000000000000000000000000000000000000000000000000000000
        mem[_170 + 68] = this.address
        mem[_170 + 100] = idx
        mem[_170 + 132] = 1
        require ext_code.size(sub_8db45ccdAddress)
        staticcall sub_8db45ccdAddress.myListsAt(address arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(this.address), idx, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_170 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _170 + ceil32(return_data.size) + 64
        require return_data.size >= 64
        _174 = mem[_170 + 64 len 4], address(this.address) << 64
        require mem[_170 + 64 len 4], address(this.address) << 64 <= test266151307()
        require _170 + mem[_170 + 64 len 4], address(this.address) << 64 + 95 < _170 + return_data.size + 64
        _177 = mem[_170 + mem[_170 + 64 len 4], address(this.address) << 64 + 64]
        require mem[_170 + mem[_170 + 64 len 4], address(this.address) << 64 + 64] <= test266151307()
        require _170 + ceil32(return_data.size) + (32 * mem[_170 + mem[_170 + 64 len 4], address(this.address) << 64 + 64]) + 96 <= test266151307() and (32 * mem[_170 + mem[_170 + 64 len 4], address(this.address) << 64 + 64]) + 32 >= 0
        mem[64] = _170 + ceil32(return_data.size) + (32 * mem[_170 + mem[_170 + 64 len 4], address(this.address) << 64 + 64]) + 96
        mem[_170 + ceil32(return_data.size) + 64] = _177
        require return_data.size >= _174 + (32 * _177) + 32
        t = _170 + _174 + 96
        s = 0
        u = _170 + ceil32(return_data.size) + 96
        while s < _177:
            mem[u] = mem[t]
            t = t + 32
            s = s + 1
            u = u + 32
            continue 
        _334 = mem[_170 + 96]
        require mem[_170 + 96] <= test266151307()
        require _170 + mem[_170 + 96] + 95 < _170 + return_data.size + 64
        _335 = mem[_170 + mem[_170 + 96] + 64]
        require mem[_170 + mem[_170 + 96] + 64] <= test266151307()
        _336 = mem[64]
        require mem[64] + (32 * mem[_170 + mem[_170 + 96] + 64]) + 32 <= test266151307() and mem[64] + (32 * mem[_170 + mem[_170 + 96] + 64]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * mem[_170 + mem[_170 + 96] + 64]) + 32
        mem[_336] = _335
        require return_data.size >= _334 + (32 * _335) + 32
        t = _170 + _334 + 96
        s = 0
        u = _336 + 32
        while s < _335:
            mem[u] = mem[t]
            t = t + 32
            s = s + 1
            u = u + 32
            continue 
        require mem[_170 + ceil32(return_data.size) + 64]
        _457 = mem[_170 + ceil32(return_data.size) + 96]
        mem[mem[64]] = 0xbf5a4dd300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _457
        require ext_code.size(sub_8db45ccdAddress)
        call sub_8db45ccdAddress.0xbf5a4dd3 with:
             gas gas_remaining wei
            args _457
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= stor153.length:
        revert with 0, 'EnumerableSet: index out of bounds'
    mem[0] = 153
    mem[mem[64] + 4] = stor153
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.adventurers_log(uint256 arg1) with:
            gas gas_remaining wei
           args stor153
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _187 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _189 = mem[_187]
    if 0 >= stor153.length:
        revert with 0, 'EnumerableSet: index out of bounds'
    mem[0] = 153
    mem[mem[64] + 4] = stor153
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.level(uint256 arg1) with:
            gas gas_remaining wei
           args stor153
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _200 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _201 = mem[_200]
    mem[mem[64] + 4] = mem[_200]
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.xp_required(uint256 arg1) with:
            gas gas_remaining wei
           args _201
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _204 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _205 = mem[_204]
    mem[mem[64] + 4] = stor153
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.xp(uint256 arg1) with:
            gas gas_remaining wei
           args stor153
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _208 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if block.timestamp > _189:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if var114002 >= stor153.length:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if mem[_208] < _205:
                if var143002 < stor153.length:
                    if var149001 >= stor153.length:
                        revert with 0, 'EnumerableSet: index out of bounds'
                    require var151002 < stor153.length
                    # nil
                else:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg1 < 10^18:
                        revert with 0, '<= 1 ether'
                    if var153002 >= stor153.length:
                    if var159001 >= stor153.length:
                        revert with 0, 'EnumerableSet: index out of bounds'
                    # nil
            else:
                if var133002 < stor153.length:
                    if var139001 >= stor153.length:
                        revert with 0, 'EnumerableSet: index out of bounds'
                    require var141002 < stor153.length
                    # nil
                else:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if var161002 < stor153.length:
                        if var167001 >= stor153.length:
                            revert with 0, 'EnumerableSet: index out of bounds'
                        # nil
                    else:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg1 < 10^18:
                            revert with 0, '<= 1 ether'
                        # nil
        else:
            if var120001 >= stor153.length:
                revert with 0, 'EnumerableSet: index out of bounds'
            require var122002 < stor153.length
            mem[0] = 153
            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[var132001] = var132002
            require ext_code.size(rarityAddress)
            call rarityAddress.mem[var136004 len 4] with:
                 gas gas_remaining wei
                args mem[var136004 + 4 len var136005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
    else:
        if mem[_208] < _205:
            revert with 0, 'neither adventureable nor lever-uppable'
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if block.timestamp > _189:
            if var115002 >= stor153.length:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if mem[_208] < _205:
                    if var144002 < stor153.length:
                        if var150001 >= stor153.length:
                            revert with 0, 'EnumerableSet: index out of bounds'
                        require var152002 < stor153.length
                        # nil
                    else:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg1 < 10^18:
                            revert with 0, '<= 1 ether'
                        if var154002 >= stor153.length:
                        if var160001 >= stor153.length:
                            revert with 0, 'EnumerableSet: index out of bounds'
                        # nil
                else:
                    if var134002 < stor153.length:
                        if var140001 >= stor153.length:
                            revert with 0, 'EnumerableSet: index out of bounds'
                        require var142002 < stor153.length
                        # nil
                    else:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if var162002 < stor153.length:
                            if var168001 >= stor153.length:
                                revert with 0, 'EnumerableSet: index out of bounds'
                            # nil
                        else:
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg1 < 10^18:
                                revert with 0, '<= 1 ether'
                            # nil
            else:
                if var121001 >= stor153.length:
                    revert with 0, 'EnumerableSet: index out of bounds'
                require var123002 < stor153.length
                mem[0] = 153
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[var133001] = var133002
                require ext_code.size(rarityAddress)
                call rarityAddress.mem[var137004 len 4] with:
                     gas gas_remaining wei
                    args mem[var137004 + 4 len var137005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
        else:
            if mem[_208] >= _205:
                if var116002 >= stor153.length:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if var144002 < stor153.length:
                        if var150001 >= stor153.length:
                            revert with 0, 'EnumerableSet: index out of bounds'
                        require var152002 < stor153.length
                        # nil
                    else:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg1 < 10^18:
                            revert with 0, '<= 1 ether'
                        if var154002 >= stor153.length:
                        if var160001 >= stor153.length:
                            revert with 0, 'EnumerableSet: index out of bounds'
                        # nil
                else:
                    if var122001 >= stor153.length:
                        revert with 0, 'EnumerableSet: index out of bounds'
                    require var124002 < stor153.length
                    mem[0] = 153
                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                    mem[var134001] = var134002
                    require ext_code.size(rarityAddress)
                    call rarityAddress.mem[var138004 len 4] with:
                         gas gas_remaining wei
                        args mem[var138004 + 4 len var138005 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
            else:
                if var126002 >= stor153.length:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg1 < 10^18:
                        revert with 0, '<= 1 ether'
                    if var136002 >= stor153.length:
                    if var142001 >= stor153.length:
                        revert with 0, 'EnumerableSet: index out of bounds'
                    require var144002 < stor153.length
                    # nil
                else:
                    if var132001 >= stor153.length:
                        revert with 0, 'EnumerableSet: index out of bounds'
                    require var134002 < stor153.length
                    mem[0] = 153
                    mem[mem[64]] = 0xd1d58b2500000000000000000000000000000000000000000000000000000000
                    mem[var144001] = var144002
                    require ext_code.size(sub_1d423d76Address)
                    staticcall sub_1d423d76Address.mem[var148003 len 4] with:
                            gas gas_remaining wei
                           args mem[var148003 + 4 len var148004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require var152002 - var152001 >= 32
                    # nil
}



}
