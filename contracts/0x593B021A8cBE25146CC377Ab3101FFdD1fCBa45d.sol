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
address sub_dc89df13Address;
address sub_5d1242d5Address;

function sub_0a8c638d(?) {
    return sub_0a8c638dAddress
}

function sub_1d423d76(?) {
    return sub_1d423d76Address
}

function sub_4ddb3253(?) {
    return sub_4ddb3253Address
}

function sub_5d1242d5(?) {
    return sub_5d1242d5Address
}

function owner() {
    return owner
}

function sub_8db45ccd(?) {
    return sub_8db45ccdAddress
}

function sub_8f37c1ce(?) {
    return sub_8f37c1ceAddress
}

function sub_971fe03d(?) {
    return sub_971fe03dAddress
}

function sub_c520e495(?) {
    return sub_c520e495Address
}

function sub_dc89df13(?) {
    return sub_dc89df13Address
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_0a069940(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dc89df13Address = address(arg1)
    sub_5d1242d5Address = address(arg1)
}

function unlist(uint256 arg1) {
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

function increase_wisdom(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_5d1242d5Address)
    call sub_5d1242d5Address.0xfe6676b3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increase_charisma(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_5d1242d5Address)
    call sub_5d1242d5Address.0xbf2bf895 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increase_strength(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_5d1242d5Address)
    call sub_5d1242d5Address.0xde999039 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increase_intelligence(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_5d1242d5Address)
    call sub_5d1242d5Address.0x96cf4c4b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increase_constitution(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_5d1242d5Address)
    call sub_5d1242d5Address.0xe0d92c4a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function list(uint256 arg1, uint256 arg2) {
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

function sub_6385b26a(?) {
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

function increase_dexterity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_5d1242d5Address)
    call sub_5d1242d5Address.increase_dexterity(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
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

function sub_c751f3a1(?) {
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
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

function set() {
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

function sub_a14ef38e(?) {
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

function point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) {
    require calldata.size - 4 >= 224
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_5d1242d5Address)
    call sub_5d1242d5Address.0xc3c2407c with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2 << 224, arg3 << 224, arg4, arg5 << 224, arg6 << 224, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5b13f026(?) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var34002 >= stor153.length:
    if var40001 >= stor153.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require var42002 < stor153.length
    mem[0] = 153
    mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
    mem[var52001] = var52002
    require ext_code.size(rarityAddress)
    call rarityAddress.mem[var56004 len 4] with:
         gas gas_remaining wei
        args mem[var56004 + 4 len var56005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_ff6120be(?) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var34002 >= stor153.length:
    if var40001 >= stor153.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require var42002 < stor153.length
    mem[0] = 153
    mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
    mem[var52001] = var52002
    require ext_code.size(rarityAddress)
    call rarityAddress.mem[var56004 len 4] with:
         gas gas_remaining wei
        args mem[var56004 + 4 len var56005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_3f4528cb(?) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var43002 >= stor153.length:
    if var49001 >= stor153.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require var51002 < stor153.length
    mem[0] = 153
    mem[96] = 0xd1d58b2500000000000000000000000000000000000000000000000000000000
    mem[var61001] = var61002
    require ext_code.size(sub_1d423d76Address)
    staticcall sub_1d423d76Address.mem[var65003 len 4] with:
            gas gas_remaining wei
           args mem[var65003 + 4 len var65004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var69002 - var69001 >= 32
    # nil
}

function sub_ecc1c331(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var37002 >= stor153.length:
    if var43001 >= stor153.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require var45002 < stor153.length
    mem[0] = 153
    mem[96] = 0xe58410bb00000000000000000000000000000000000000000000000000000000
    mem[var55001] = var55003
    mem[var55001 + 32] = arg1
    require ext_code.size(rarityAddress)
    call rarityAddress.mem[var59004 len 4] with:
         gas gas_remaining wei
        args mem[var59004 + 4 len var59005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_85027eb1(?) {
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
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 10^18:
        revert with 0, '<= 1 ether'
    if var38002 >= stor153.length:
    if var44001 >= stor153.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require var46002 < stor153.length
    mem[0] = 153
    mem[96] = 0x50fd736700000000000000000000000000000000000000000000000000000000
    mem[var56001] = var56003
    mem[var56001 + 32] = arg1
    require ext_code.size(sub_8db45ccdAddress)
    call sub_8db45ccdAddress.mem[var60004 len 4] with:
         gas gas_remaining wei
        args mem[var60004 + 4 len var60005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_a8fb63c2(?) {
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

function sub_b3e73043(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var37002 >= stor153.length:
    if var43001 >= stor153.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require var45002 < stor153.length
    mem[0] = 153
    mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
    mem[var55001] = var55008
    mem[var55001 + 32] = 16
    mem[var55001 + 64] = 16
    mem[var55001 + 96] = 16
    mem[var55001 + 128] = 8
    mem[var55001 + 160] = 10
    mem[var55001 + 192] = 8
    require ext_code.size(sub_5d1242d5Address)
    call sub_5d1242d5Address.mem[var59004 len 4] with:
         gas gas_remaining wei
        args mem[var59004 + 4 len var59005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_006d5e52(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var52002 >= stor153.length:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if arg1 < 10^18:
            revert with 0, '<= 1 ether'
        if var62002 >= stor153.length:
        if var68001 >= stor153.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
        require var70002 < stor153.length
        # nil
    else:
        if var58001 >= stor153.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
        require var60002 < stor153.length
        mem[0] = 153
        mem[96] = 0xd1d58b2500000000000000000000000000000000000000000000000000000000
        mem[var70001] = var70002
        require ext_code.size(sub_1d423d76Address)
        staticcall sub_1d423d76Address.mem[var74003 len 4] with:
                gas gas_remaining wei
               args mem[var74003 + 4 len var74004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var78002 - var78001 >= 32
        # nil
}

function sub_6153279c(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 1
    mem[64] = 160
    mem[128] = call.data[calldata.size]
    idx = 0
    s = 96
    while idx < arg2:
        mem[mem[64]] = 0xa6177d1e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = idx + arg1
        mem[mem[64] + 68] = 1
        require ext_code.size(sub_8db45ccdAddress)
        staticcall sub_8db45ccdAddress.myListsAt(address arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(this.address), idx + arg1, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _22 = mem[_21]
        require mem[_21] <= test266151307()
        require _21 + mem[_21] + 31 < _21 + return_data.size
        _23 = mem[_21 + mem[_21]]
        require mem[_21 + mem[_21]] <= test266151307()
        require _21 + ceil32(return_data.size) + (32 * mem[_21 + mem[_21]]) + 32 <= test266151307() and (32 * mem[_21 + mem[_21]]) + 32 >= 0
        mem[64] = _21 + ceil32(return_data.size) + (32 * mem[_21 + mem[_21]]) + 32
        mem[_21 + ceil32(return_data.size)] = _23
        require return_data.size >= _22 + (32 * _23) + 32
        t = _21 + _22 + 32
        s = 0
        u = _21 + ceil32(return_data.size) + 32
        while s < _23:
            mem[u] = mem[t]
            t = t + 32
            s = s + 1
            u = u + 32
            continue 
        _35 = mem[_21 + 32]
        require mem[_21 + 32] <= test266151307()
        require _21 + mem[_21 + 32] + 31 < _21 + return_data.size
        _36 = mem[_21 + mem[_21 + 32]]
        require mem[_21 + mem[_21 + 32]] <= test266151307()
        _37 = mem[64]
        require mem[64] + (32 * mem[_21 + mem[_21 + 32]]) + 32 <= test266151307() and mem[64] + (32 * mem[_21 + mem[_21 + 32]]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * mem[_21 + mem[_21 + 32]]) + 32
        mem[_37] = _36
        require return_data.size >= _35 + (32 * _36) + 32
        t = _21 + _35 + 32
        s = 0
        u = _37 + 32
        while s < _36:
            mem[u] = mem[t]
            t = t + 32
            s = s + 1
            u = u + 32
            continue 
        require mem[_21 + ceil32(return_data.size)]
        _45 = mem[_21 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 0xbf5a4dd300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _45
        require ext_code.size(sub_8db45ccdAddress)
        call sub_8db45ccdAddress.0xbf5a4dd3 with:
             gas gas_remaining wei
            args _45
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = _21 + ceil32(return_data.size)
        continue 
}

function withdraw_token(address arg1) {
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

function sub_780ac25f(?) {
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
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 1
    mem[64] = ceil32(return_data.size) + 160
    mem[ceil32(return_data.size) + 128] = call.data[calldata.size]
    idx = 0
    s = ceil32(return_data.size) + 96
    while idx < ext_call.return_data[0]:
        mem[mem[64]] = 0xa6177d1e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = idx
        mem[mem[64] + 68] = 1
        require ext_code.size(sub_8db45ccdAddress)
        staticcall sub_8db45ccdAddress.myListsAt(address arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(this.address), idx, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _26 = mem[_25]
        require mem[_25] <= test266151307()
        require _25 + mem[_25] + 31 < _25 + return_data.size
        _27 = mem[_25 + mem[_25]]
        require mem[_25 + mem[_25]] <= test266151307()
        require _25 + ceil32(return_data.size) + (32 * mem[_25 + mem[_25]]) + 32 <= test266151307() and (32 * mem[_25 + mem[_25]]) + 32 >= 0
        mem[64] = _25 + ceil32(return_data.size) + (32 * mem[_25 + mem[_25]]) + 32
        mem[_25 + ceil32(return_data.size)] = _27
        require return_data.size >= _26 + (32 * _27) + 32
        t = _25 + _26 + 32
        s = 0
        u = _25 + ceil32(return_data.size) + 32
        while s < _27:
            mem[u] = mem[t]
            t = t + 32
            s = s + 1
            u = u + 32
            continue 
        _39 = mem[_25 + 32]
        require mem[_25 + 32] <= test266151307()
        require _25 + mem[_25 + 32] + 31 < _25 + return_data.size
        _40 = mem[_25 + mem[_25 + 32]]
        require mem[_25 + mem[_25 + 32]] <= test266151307()
        _41 = mem[64]
        require mem[64] + (32 * mem[_25 + mem[_25 + 32]]) + 32 <= test266151307() and mem[64] + (32 * mem[_25 + mem[_25 + 32]]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * mem[_25 + mem[_25 + 32]]) + 32
        mem[_41] = _40
        require return_data.size >= _39 + (32 * _40) + 32
        t = _25 + _39 + 32
        s = 0
        u = _41 + 32
        while s < _40:
            mem[u] = mem[t]
            t = t + 32
            s = s + 1
            u = u + 32
            continue 
        require mem[_25 + ceil32(return_data.size)]
        _49 = mem[_25 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 0xbf5a4dd300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _49
        require ext_code.size(sub_8db45ccdAddress)
        call sub_8db45ccdAddress.0xbf5a4dd3 with:
             gas gas_remaining wei
            args _49
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = _25 + ceil32(return_data.size)
        continue 
}

function initialize(address arg1) {
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

function sub_cbf0bfac(?) {
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
            revert with 0, 'neither adventureable nor lever-uppable'
        if block.timestamp > ext_call.return_data[0]:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if var90002 >= stor153.length:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if var109002 >= stor153.length:
                if var115001 >= stor153.length:
                    revert with 0, 'EnumerableSet: index out of bounds'
                require var117002 < stor153.length
                # nil
            else:
                if var96001 >= stor153.length:
                    revert with 0, 'EnumerableSet: index out of bounds'
                require var98002 < stor153.length
                mem[0] = 153
                mem[(6 * ceil32(return_data.size)) + 96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[var108001] = var108002
                require ext_code.size(rarityAddress)
                call rarityAddress.mem[var112004 len 4] with:
                     gas gas_remaining wei
                    args mem[var112004 + 4 len var112005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
        else:
            if ext_call.return_data[0] < ext_call.return_data[0]:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if var91002 >= stor153.length:
            if var97001 >= stor153.length:
                revert with 0, 'EnumerableSet: index out of bounds'
            require var99002 < stor153.length
            mem[0] = 153
            mem[(6 * ceil32(return_data.size)) + 96] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[var109001] = var109002
            require ext_code.size(rarityAddress)
            call rarityAddress.mem[var113004 len 4] with:
                 gas gas_remaining wei
                args mem[var113004 + 4 len var113005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
}

function sub_f921676c(?) {
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
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 1
    mem[64] = ceil32(return_data.size) + 160
    mem[ceil32(return_data.size) + 128] = call.data[calldata.size]
    idx = 0
    s = ceil32(return_data.size) + 96
    while idx < ext_call.return_data[0]:
        mem[mem[64]] = 0xa6177d1e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = idx
        mem[mem[64] + 68] = 1
        require ext_code.size(sub_8db45ccdAddress)
        staticcall sub_8db45ccdAddress.myListsAt(address arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(this.address), idx, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _172 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _173 = mem[_172]
        require mem[_172] <= test266151307()
        require _172 + mem[_172] + 31 < _172 + return_data.size
        _176 = mem[_172 + mem[_172]]
        require mem[_172 + mem[_172]] <= test266151307()
        require _172 + ceil32(return_data.size) + (32 * mem[_172 + mem[_172]]) + 32 <= test266151307() and (32 * mem[_172 + mem[_172]]) + 32 >= 0
        mem[64] = _172 + ceil32(return_data.size) + (32 * mem[_172 + mem[_172]]) + 32
        mem[_172 + ceil32(return_data.size)] = _176
        require return_data.size >= _173 + (32 * _176) + 32
        t = _172 + _173 + 32
        s = 0
        u = _172 + ceil32(return_data.size) + 32
        while s < _176:
            mem[u] = mem[t]
            t = t + 32
            s = s + 1
            u = u + 32
            continue 
        _333 = mem[_172 + 32]
        require mem[_172 + 32] <= test266151307()
        require _172 + mem[_172 + 32] + 31 < _172 + return_data.size
        _334 = mem[_172 + mem[_172 + 32]]
        require mem[_172 + mem[_172 + 32]] <= test266151307()
        _335 = mem[64]
        require mem[64] + (32 * mem[_172 + mem[_172 + 32]]) + 32 <= test266151307() and mem[64] + (32 * mem[_172 + mem[_172 + 32]]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * mem[_172 + mem[_172 + 32]]) + 32
        mem[_335] = _334
        require return_data.size >= _333 + (32 * _334) + 32
        t = _172 + _333 + 32
        s = 0
        u = _335 + 32
        while s < _334:
            mem[u] = mem[t]
            t = t + 32
            s = s + 1
            u = u + 32
            continue 
        require mem[_172 + ceil32(return_data.size)]
        _456 = mem[_172 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 0xbf5a4dd300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _456
        require ext_code.size(sub_8db45ccdAddress)
        call sub_8db45ccdAddress.0xbf5a4dd3 with:
             gas gas_remaining wei
            args _456
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = _172 + ceil32(return_data.size)
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
    _186 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _188 = mem[_186]
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
    _199 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _200 = mem[_199]
    mem[mem[64] + 4] = mem[_199]
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.xp_required(uint256 arg1) with:
            gas gas_remaining wei
           args _200
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _203 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _204 = mem[_203]
    mem[mem[64] + 4] = stor153
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.xp(uint256 arg1) with:
            gas gas_remaining wei
           args stor153
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _207 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if block.timestamp > _188:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if var115002 >= stor153.length:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if mem[_207] < _204:
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
        if mem[_207] < _204:
            revert with 0, 'neither adventureable nor lever-uppable'
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if block.timestamp > _188:
            if var116002 >= stor153.length:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if mem[_207] < _204:
                    if var145002 < stor153.length:
                        if var151001 >= stor153.length:
                            revert with 0, 'EnumerableSet: index out of bounds'
                        require var153002 < stor153.length
                        # nil
                    else:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg1 < 10^18:
                            revert with 0, '<= 1 ether'
                        if var155002 >= stor153.length:
                        if var161001 >= stor153.length:
                            revert with 0, 'EnumerableSet: index out of bounds'
                        # nil
                else:
                    if var135002 < stor153.length:
                        if var141001 >= stor153.length:
                            revert with 0, 'EnumerableSet: index out of bounds'
                        require var143002 < stor153.length
                        # nil
                    else:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if var163002 < stor153.length:
                            if var169001 >= stor153.length:
                                revert with 0, 'EnumerableSet: index out of bounds'
                            # nil
                        else:
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg1 < 10^18:
                                revert with 0, '<= 1 ether'
                            # nil
            else:
                if var122001 >= stor153.length:
                    revert with 0, 'EnumerableSet: index out of bounds'
                require var124002 < stor153.length
                mem[0] = 153
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[var134001] = var134002
                require ext_code.size(rarityAddress)
                call rarityAddress.mem[var138004 len 4] with:
                     gas gas_remaining wei
                    args mem[var138004 + 4 len var138005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
        else:
            if mem[_207] >= _204:
                if var117002 >= stor153.length:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if var145002 < stor153.length:
                        if var151001 >= stor153.length:
                            revert with 0, 'EnumerableSet: index out of bounds'
                        require var153002 < stor153.length
                        # nil
                    else:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg1 < 10^18:
                            revert with 0, '<= 1 ether'
                        if var155002 >= stor153.length:
                        if var161001 >= stor153.length:
                            revert with 0, 'EnumerableSet: index out of bounds'
                        # nil
                else:
                    if var123001 >= stor153.length:
                        revert with 0, 'EnumerableSet: index out of bounds'
                    require var125002 < stor153.length
                    mem[0] = 153
                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                    mem[var135001] = var135002
                    require ext_code.size(rarityAddress)
                    call rarityAddress.mem[var139004 len 4] with:
                         gas gas_remaining wei
                        args mem[var139004 + 4 len var139005 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
            else:
                if var127002 >= stor153.length:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg1 < 10^18:
                        revert with 0, '<= 1 ether'
                    if var137002 >= stor153.length:
                    if var143001 >= stor153.length:
                        revert with 0, 'EnumerableSet: index out of bounds'
                    require var145002 < stor153.length
                    # nil
                else:
                    if var133001 >= stor153.length:
                        revert with 0, 'EnumerableSet: index out of bounds'
                    require var135002 < stor153.length
                    mem[0] = 153
                    mem[mem[64]] = 0xd1d58b2500000000000000000000000000000000000000000000000000000000
                    mem[var145001] = var145002
                    require ext_code.size(sub_1d423d76Address)
                    staticcall sub_1d423d76Address.mem[var149003 len 4] with:
                            gas gas_remaining wei
                           args mem[var149003 + 4 len var149004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require var153002 - var153001 >= 32
                    # nil
}



}
