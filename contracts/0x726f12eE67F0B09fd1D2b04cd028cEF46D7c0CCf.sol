contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 characters;
address rarityAddress;
address goldAddress;
address sub_201f35c6Address;
uint256 maxId;

function sub_201f35c6(?) {
    return sub_201f35c6Address
}

function characters(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < characters.length
    return characters[arg1]
}

function owner() {
    return owner
}

function maxId() {
    return maxId
}

function gold() {
    return goldAddress
}

function rarity() {
    return rarityAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMaxId(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxId = arg1
}

function sub_9a032805(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= characters.length:
        revert with 0, 50
    characters[arg1] = 0
}

function withdrawETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ffadcb82(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rarityAddress = address(arg1)
    goldAddress = address(arg2)
    sub_201f35c6Address = address(arg3)
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function withdrawERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3a6b237d(?) {
    idx = 0
    while idx < characters.length:
        mem[0] = 1
        mem[96] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[100] = characters[idx]
        require ext_code.size(goldAddress)
        call goldAddress.claim(uint256 arg1) with:
             gas gas_remaining wei
            args characters[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_4079d1f1(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.next_summoner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rarityAddress)
    call rarityAddress.summon(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    characters.length++
    characters[characters.length] = ext_call.return_data[0]
}

function withdrawERC721(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa22cb465 with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bb2a568f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(goldAddress)
        call goldAddress.claim(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_d6226b67(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rarityAddress)
        call rarityAddress.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f69bd7c3(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rarityAddress)
    call rarityAddress.0xa22cb465 with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < characters.length:
        mem[0] = 1
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = characters[idx]
        require ext_code.size(rarityAddress)
        call rarityAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, characters[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_c657c0f7(?) {
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.next_summoner() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 1
    s = mem[96]
    while idx <= maxId:
        mem[ceil32(return_data.size) + 96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = idx
        require ext_code.size(rarityAddress)
        call rarityAddress.summon(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        characters.length++
        mem[0] = 1
        characters[characters.length] = s
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
}

function sub_7179e0c9(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.next_summoner() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = mem[96]
    while idx < arg2:
        mem[ceil32(return_data.size) + 96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = arg1
        require ext_code.size(rarityAddress)
        call rarityAddress.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        characters.length++
        mem[0] = 1
        characters[characters.length] = s
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
}

function sub_f43cbeb5(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rarityAddress)
        call rarityAddress.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        characters.length++
        mem[0] = 1
        characters[characters.length] = cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_479b8021(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rarityAddress)
    call rarityAddress.0xa22cb465 with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rarityAddress)
        call rarityAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_7b2238ba(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(rarityAddress)
        call rarityAddress.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(sub_201f35c6Address)
        staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_13] > 0:
            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_201f35c6Address)
            call sub_201f35c6Address.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_8649fe86(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < characters.length:
        mem[0] = 1
        mem[mem[64] + 4] = characters[idx]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.xp(uint256 arg1) with:
                gas gas_remaining wei
               args characters[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _20 = mem[_19]
        mem[mem[64] + 4] = characters[idx]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.level(uint256 arg1) with:
                gas gas_remaining wei
               args characters[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _24 = mem[_23]
        if 1 > !mem[_23]:
            revert with 0, 17
        mem[mem[64] + 4] = mem[_23] + 1
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args (_24 + 1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _20 >= mem[_27]:
            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = characters[idx]
            require ext_code.size(rarityAddress)
            call rarityAddress.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args characters[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_3d81b8fa(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < characters.length:
        mem[0] = 1
        mem[mem[64] + 4] = characters[idx]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args characters[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 24 * 3600 > !mem[_18]:
            revert with 0, 17
        if mem[_18] + (24 * 3600) < block.timestamp:
            if idx >= characters.length:
                revert with 0, 50
            mem[0] = 1
            require ext_code.size(rarityAddress)
            call rarityAddress.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args characters[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = characters[idx]
            require ext_code.size(sub_201f35c6Address)
            staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args characters[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _25 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_25] > 0:
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = characters[idx]
                require ext_code.size(sub_201f35c6Address)
                call sub_201f35c6Address.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args characters[idx]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_9956ff64(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 24 * 3600 > !mem[_31]:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            if mem[_31] + (24 * 3600) > block.timestamp:
                mem[(32 * idx) + 128] = 0
            else:
                mem[(32 * idx) + 128] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _22 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _22 + (32 * mem[96]) + -mem[64] + 64
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 24 * 3600 > !mem[_33]:
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        if mem[_33] + (24 * 3600) > block.timestamp:
            mem[(32 * idx) + 128] = 0
        else:
            mem[(32 * idx) + 128] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _24 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _24 + (32 * mem[96]) + -mem[64] + 64
}

function sub_f90dafc9(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = arg2
        s = 0
        while idx <= arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.0x6352211e with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_63] == mem[_63 + 12 len 20]
            if mem[_63 + 12 len 20] != address(arg1):
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.next_summoner() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx != mem[_78]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _88 = mem[64]
                mem[mem[64]] = 32
                _90 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 128
                while idx < _90:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _88 + (32 * _90) + -mem[64] + 64
            if s >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * s) + ceil32(return_data.size) + 128] = idx
            if s == -1:
                revert with 0, 17
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.next_summoner() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx != mem[_86]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _98 = mem[64]
            mem[mem[64]] = 32
            _100 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _100:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _98 + (32 * _100) + -mem[64] + 64
        mem[mem[64]] = 32
        _62 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _62] = mem[ceil32(return_data.size) + 128 len 32 * _62]
        return 32, mem[mem[64] + 32 len (32 * _62) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = arg2
    s = 0
    while idx <= arg3:
        mem[mem[64] + 4] = idx
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_65] == mem[_65 + 12 len 20]
        if mem[_65 + 12 len 20] != address(arg1):
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.next_summoner() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _79 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx != mem[_79]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _89 = mem[64]
            mem[mem[64]] = 32
            _92 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _92:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _89 + (32 * _92) + -mem[64] + 64
        if s >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * s) + ceil32(return_data.size) + 128] = idx
        if s == -1:
            revert with 0, 17
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx != mem[_87]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _99 = mem[64]
        mem[mem[64]] = 32
        _101 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = mem[64] + 64
        t = ceil32(return_data.size) + 128
        while idx < _101:
            mem[s] = mem[t]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _99 + (32 * _101) + -mem[64] + 64
    mem[mem[64]] = 32
    _64 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _64] = mem[ceil32(return_data.size) + 128 len 32 * _64]
    return 32, mem[mem[64] + 32 len (32 * _64) + 32]
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x9a032805(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xf2fde38b(?????) > uint32(call.func_hash) >> 224:
            if unknown_0xc5ea3c65(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9a032805(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if cd[4] >= characters.length:
                        revert with 0, 50
                    characters[cd[4]] = 0
                else:
                    if unknown_0xa1db9782(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, cd[36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require unknown_0xbb2a568f(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        require ('cd', 4).length <= test266151307()
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        idx = 0
                        while idx < ('cd', 4).length:
                            mem[128] = 0x379607f500000000000000000000000000000000000000000000000000000000
                            mem[132] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(goldAddress)
                            call goldAddress.claim(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
            else:
                if unknown_0xc5ea3c65(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return maxId
                if unknown_0xc657c0f7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require ext_code.size(rarityAddress)
                    staticcall rarityAddress.next_summoner() with:
                            gas gas_remaining wei
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    s = mem[128]
                    while idx <= maxId:
                        mem[ceil32(return_data.size) + 128] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 132] = idx
                        require ext_code.size(rarityAddress)
                        call rarityAddress.summon(uint256 arg1) with:
                             gas gas_remaining wei
                            args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        characters.length++
                        mem[0] = 1
                        characters[characters.length] = s
                        if s == -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xd6226b67(?????):
                        require unknown_0xf14210a6(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call msg.sender with:
                           value cd[4] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        require ('cd', 4).length <= test266151307()
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        idx = 0
                        while idx < ('cd', 4).length:
                            mem[128] = 0x9024944800000000000000000000000000000000000000000000000000000000
                            mem[132] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(rarityAddress)
                            call rarityAddress.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        if unknown_0xf90dafc9(?????) > uint32(call.func_hash) >> 224:
            if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
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
                if uint32(call.func_hash) >> 224 != unknown_0xf3e414f8(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf43cbeb5(?????):
                        require unknown_0xf69bd7c3(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(rarityAddress)
                        call rarityAddress.0xa22cb465 with:
                             gas gas_remaining wei
                            args msg.sender, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = 0
                        while idx < characters.length:
                            mem[0] = 1
                            mem[128] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[132] = this.address
                            mem[164] = msg.sender
                            mem[196] = characters[idx]
                            require ext_code.size(rarityAddress)
                            call rarityAddress.0x42842e0e with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, characters[idx]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        require ('cd', 4).length <= test266151307()
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        idx = 0
                        while idx < ('cd', 4).length:
                            mem[128] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            mem[164] = this.address
                            mem[196] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(rarityAddress)
                            call rarityAddress.0x42842e0e with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            characters.length++
                            mem[0] = 1
                            characters[characters.length] = cd[((32 * idx) + cd[4] + 36)]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xa22cb465 with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0x42842e0e with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, cd[36]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if uint32(call.func_hash) >> 224 != unknown_0xf90dafc9(?????):
            if unknown_0xfbec6f21(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return goldAddress
            if unknown_0xfef21f0f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return rarityAddress
            require unknown_0xffadcb82(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require cd[68] == address(cd[68])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            rarityAddress = address(cd[4])
            goldAddress = address(cd[36])
            sub_201f35c6Address = address(cd[68])
        require not msg.value
        require calldata.size - 4 >= 96
        require cd[4] == address(cd[4])
        mem[132] = address(cd[4])
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(cd[4])
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        if not ext_call.return_data[0]:
            idx = cd[36]
            s = 0
            while idx <= cd[68]:
                mem[mem[64] + 4] = idx
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.0x6352211e with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _238 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_238] == mem[_238 + 12 len 20]
                if mem[_238 + 12 len 20] != address(cd[4]):
                    require ext_code.size(rarityAddress)
                    staticcall rarityAddress.next_summoner() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _283 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx != mem[_283]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    _302 = mem[64]
                    mem[mem[64]] = 32
                    _304 = mem[ceil32(return_data.size) + 128]
                    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 128]
                    idx = 0
                    s = mem[64] + 64
                    t = ceil32(return_data.size) + 160
                    while idx < _304:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _302 + (32 * _304) + -mem[64] + 64
                if s >= mem[ceil32(return_data.size) + 128]:
                    revert with 0, 50
                mem[(32 * s) + ceil32(return_data.size) + 160] = idx
                if s == -1:
                    revert with 0, 17
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.next_summoner() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _298 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx != mem[_298]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _318 = mem[64]
                mem[mem[64]] = 32
                _320 = mem[ceil32(return_data.size) + 128]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 128]
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 160
                while idx < _320:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _318 + (32 * _320) + -mem[64] + 64
            mem[mem[64]] = 32
            _237 = mem[ceil32(return_data.size) + 128]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 128]
            mem[mem[64] + 64 len 32 * _237] = mem[ceil32(return_data.size) + 160 len 32 * _237]
            return 32, mem[mem[64] + 32 len (32 * _237) + 32]
        mem[ceil32(return_data.size) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = cd[36]
        s = 0
        while idx <= cd[68]:
            mem[mem[64] + 4] = idx
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.0x6352211e with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _240 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_240] == mem[_240 + 12 len 20]
            if mem[_240 + 12 len 20] != address(cd[4]):
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.next_summoner() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _284 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx != mem[_284]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _303 = mem[64]
                mem[mem[64]] = 32
                _306 = mem[ceil32(return_data.size) + 128]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 128]
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 160
                while idx < _306:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _303 + (32 * _306) + -mem[64] + 64
            if s >= mem[ceil32(return_data.size) + 128]:
                revert with 0, 50
            mem[(32 * s) + ceil32(return_data.size) + 160] = idx
            if s == -1:
                revert with 0, 17
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.next_summoner() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx != mem[_299]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _319 = mem[64]
            mem[mem[64]] = 32
            _321 = mem[ceil32(return_data.size) + 128]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 128]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 160
            while idx < _321:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _319 + (32 * _321) + -mem[64] + 64
        mem[mem[64]] = 32
        _239 = mem[ceil32(return_data.size) + 128]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 128]
        mem[mem[64] + 64 len 32 * _239] = mem[ceil32(return_data.size) + 160 len 32 * _239]
        return 32, mem[mem[64] + 32 len (32 * _239) + 32]
    if unknown_0x4810bc59(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x3a6b237d(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x150b7a02(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x16bd8646(?????):
                    require unknown_0x201f35c6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_201f35c6Address
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                maxId = cd[4]
            require not msg.value
            require calldata.size - 4 >= 128
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require cd[100] <= test266151307()
            require cd[100] + 35 < calldata.size
            require ('cd', 100).length <= test266151307()
            require cd[100] + ('cd', 100).length + 36 <= calldata.size
            return 0x150b7a0200000000000000000000000000000000000000000000000000000000
        if unknown_0x3a6b237d(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            idx = 0
            while idx < characters.length:
                mem[0] = 1
                mem[128] = 0x379607f500000000000000000000000000000000000000000000000000000000
                mem[132] = characters[idx]
                require ext_code.size(goldAddress)
                call goldAddress.claim(uint256 arg1) with:
                     gas gas_remaining wei
                    args characters[idx]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if unknown_0x3d81b8fa(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                idx = 0
                while idx < characters.length:
                    mem[0] = 1
                    mem[mem[64] + 4] = characters[idx]
                    require ext_code.size(rarityAddress)
                    staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args characters[idx]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _245 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if 24 * 3600 > !mem[_245]:
                        revert with 0, 17
                    if mem[_245] + (24 * 3600) < block.timestamp:
                        if idx >= characters.length:
                            revert with 0, 50
                        mem[0] = 1
                        require ext_code.size(rarityAddress)
                        call rarityAddress.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args characters[idx]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = characters[idx]
                        require ext_code.size(sub_201f35c6Address)
                        staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                                gas gas_remaining wei
                               args characters[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _300 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_300] > 0:
                            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = characters[idx]
                            require ext_code.size(sub_201f35c6Address)
                            call sub_201f35c6Address.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args characters[idx]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if unknown_0x4079d1f1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require ext_code.size(rarityAddress)
                    staticcall rarityAddress.next_summoner() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(rarityAddress)
                    call rarityAddress.summon(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    characters.length++
                    characters[characters.length] = ext_call.return_data[0]
                else:
                    require unknown_0x479b8021(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(rarityAddress)
                    call rarityAddress.0xa22cb465 with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[128] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[132] = this.address
                        mem[164] = msg.sender
                        mem[196] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(rarityAddress)
                        call rarityAddress.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    if unknown_0x7b2238ba(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x4810bc59(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] < characters.length
            return characters[cd[4]]
        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            owner = 0
            emit OwnershipTransferred(owner, 0);
        else:
            require unknown_0x7179e0c9(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.next_summoner() with:
                    gas gas_remaining wei
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = mem[128]
            while idx < cd[36]:
                mem[ceil32(return_data.size) + 128] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = cd[4]
                require ext_code.size(rarityAddress)
                call rarityAddress.summon(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                characters.length++
                mem[0] = 1
                characters[characters.length] = s
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
    if unknown_0x7b2238ba(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require cd[4] <= test266151307()
        require cd[4] + 35 < calldata.size
        require ('cd', 4).length <= test266151307()
        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
        idx = 0
        while idx < ('cd', 4).length:
            require ext_code.size(rarityAddress)
            call rarityAddress.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_201f35c6Address)
            staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _262 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_262] > 0:
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(sub_201f35c6Address)
                call sub_201f35c6Address.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if unknown_0x8649fe86(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        idx = 0
        while idx < characters.length:
            mem[0] = 1
            mem[mem[64] + 4] = characters[idx]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args characters[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _242 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _256 = mem[_242]
            mem[mem[64] + 4] = characters[idx]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args characters[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _269 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _278 = mem[_269]
            if 1 > !mem[_269]:
                revert with 0, 17
            mem[mem[64] + 4] = mem[_269] + 1
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_278 + 1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _301 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _256 >= mem[_301]:
                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = characters[idx]
                require ext_code.size(rarityAddress)
                call rarityAddress.level_up(uint256 arg1) with:
                     gas gas_remaining wei
                    args characters[idx]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return owner
    require unknown_0x9956ff64(?????) == uint32(call.func_hash) >> 224
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[128] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 160
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _249 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 24 * 3600 > !mem[_249]:
                revert with 0, 17
            if idx >= mem[128]:
                revert with 0, 50
            if mem[_249] + (24 * 3600) > block.timestamp:
                mem[(32 * idx) + 160] = 0
            else:
                mem[(32 * idx) + 160] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _216 = mem[64]
        mem[mem[64]] = 32
        _231 = mem[128]
        mem[mem[64] + 32] = mem[128]
        idx = 0
        s = mem[64] + 64
        t = 160
        while idx < _231:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _216 + (32 * _231) + -mem[64] + 64
    mem[160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _251 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 24 * 3600 > !mem[_251]:
            revert with 0, 17
        if idx >= mem[128]:
            revert with 0, 50
        if mem[_251] + (24 * 3600) > block.timestamp:
            mem[(32 * idx) + 160] = 0
        else:
            mem[(32 * idx) + 160] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _218 = mem[64]
    mem[mem[64]] = 32
    _233 = mem[128]
    mem[mem[64] + 32] = mem[128]
    idx = 0
    s = mem[64] + 64
    t = 160
    while idx < _233:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _218 + (32 * _233) + -mem[64] + 64
}



}
