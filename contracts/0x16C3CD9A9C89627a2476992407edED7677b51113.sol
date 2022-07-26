contract main {




// =====================  Runtime code  =====================


address owner;
address sub_e0fbeed4Address;
address sub_1ad5db32Address;
mapping of address stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
address stor8;

function sub_1ad5db32(?) {
    return sub_1ad5db32Address
}

function owner() {
    return owner
}

function isEnlisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function sub_e0fbeed4(?) {
    return sub_e0fbeed4Address
}

function donation() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_84cb37ea(?) {
    require calldata.size - 4 >= 32
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_5824f626(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e0fbeed4Address = address(arg1)
}

function sub_619fb3ff(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1ad5db32Address = address(arg1)
}

function sub_9caac016(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b315f6d5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor8)
    call stor8.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_ce238023(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor8)
    staticcall stor8.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function ownedTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[msg.sender]:
        mem[160 len 1024] = 32, mem[160 len 992]
        return 32, 32, mem[160 len 1024]
    if stor5[msg.sender] > test266151307():
        revert with 0, 65
    if stor5[msg.sender]:
        mem[128 len 32 * stor5[msg.sender]] = call.data[calldata.size len 32 * stor5[msg.sender]]
    idx = 0
    while idx < stor5[msg.sender]:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 6)
        if idx >= stor5[msg.sender]:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor6[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=stor5[msg.sender], data=mem[128 len 32 * stor5[msg.sender]])
}

function sub_b62a7264(?) {
    mem[100] = msg.sender
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 32
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 160 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
        return Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 160 len 32 * ext_call.return_data[0]])
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(stor8)
            staticcall stor8.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _36 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_36]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _38 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _38] = mem[ceil32(return_data.size) + 128 len 32 * _38]
        return 32, mem[mem[64] + 32 len (32 * _38) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(stor8)
        staticcall stor8.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_37]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _39 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _39] = mem[ceil32(return_data.size) + 128 len 32 * _39]
    return 32, mem[mem[64] + 32 len (32 * _39) + 32]
}

function sub_064c00d3(?) {
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
    mem[ceil32(32 * ('cd', 4).length) + 101] = msg.sender
    mem[ceil32(32 * ('cd', 4).length) + 133] = this.address
    require ext_code.size(stor8)
    staticcall stor8.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Please get approvalForAll'
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 101] = msg.sender
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 97
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You don't own any token to enlist'
    idx = 0
    while uint16(idx) < ('cd', 4).length:
        if uint16(idx) >= mem[96]:
            revert with 0, 50
        _76 = mem[(32 * uint16(idx)) + 128]
        mem[mem[64] + 4] = mem[(32 * uint16(idx)) + 128]
        require ext_code.size(stor8)
        call stor8.0x6352211e with:
             gas gas_remaining wei
            args _76
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _79 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_79] == mem[_79 + 12 len 20]
        require msg.sender == mem[_79 + 12 len 20]
        if uint16(idx) >= mem[96]:
            revert with 0, 50
        _82 = mem[(32 * uint16(idx)) + 128]
        mem[mem[64] + 4] = mem[(32 * uint16(idx)) + 128]
        require ext_code.size(stor8)
        staticcall stor8.getStatus(uint256 arg1) with:
                gas gas_remaining wei
               args _82
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _85 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_85] == mem[_85 + 31 len 1]
        if not mem[_85 + 31 len 1]:
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            stor4[mem[(32 * uint16(idx)) + 128]] = msg.sender
            stor6[address(msg.sender)][stor5[address(msg.sender)]] = mem[(32 * uint16(idx)) + 128]
            if stor5[address(msg.sender)] > -2:
                revert with 0, 17
            stor5[address(msg.sender)]++
            mem[0] = mem[(32 * uint16(idx)) + 128]
            mem[32] = 7
            stor7[mem[(32 * uint16(idx)) + 128]] = stor5[address(msg.sender)]
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _95 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _95
            require ext_code.size(stor8)
            call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _95
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if uint16(idx) == 65535:
            revert with 0, 17
        idx = uint16(idx) + 1
        continue 
}

function sub_6c257335(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
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
    if msg.sender == owner:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _87 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if stor4[mem[(32 * idx) + 128]] == msg.sender:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _87
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _104 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_104] == mem[_104 + 31 len 1]
                if mem[_104 + 31 len 1] != 4:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _87
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _106 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_106] == mem[_106 + 31 len 1]
                if mem[_106 + 31 len 1] != 4:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
            mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _87
            require ext_code.size(stor8)
            call stor8.0x7ed75068 with:
                 gas gas_remaining wei
                args _87
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 5
        require stor5[address(msg.sender)]
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _90 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if stor4[mem[(32 * idx) + 128]] == msg.sender:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _90
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _105 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_105] == mem[_105 + 31 len 1]
                if mem[_105 + 31 len 1] != 4:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _90
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _108 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_108] == mem[_108 + 31 len 1]
                if mem[_108 + 31 len 1] != 4:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
            mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _90
            require ext_code.size(stor8)
            call stor8.0x7ed75068 with:
                 gas gas_remaining wei
                args _90
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 1
            continue 
    if bool(s) != 1:
        revert with 0, 'No trainer is on journey'
}

function sub_41af3be3(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
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
    if msg.sender == owner:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _103 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if msg.sender == stor4[mem[(32 * idx) + 128]]:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _103
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _120 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_120] == mem[_120 + 31 len 1]
                if mem[_120 + 31 len 1]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _130 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_130 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                mem[_130 + 36] = _103
                mem[_130 + 68] = sub_1ad5db32Address
                mem[_130 + 100] = 96
                mem[_130 + 132] = mem[_130]
                s = 0
                t = _130 + 32
                u = _130 + 164
                while s < mem[_130]:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _130 + (32 * mem[_130]) + -mem[64] + 160]
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _103
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _122 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_122] == mem[_122 + 31 len 1]
                if mem[_122 + 31 len 1]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _132 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_132 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                mem[_132 + 36] = _103
                mem[_132 + 68] = sub_1ad5db32Address
                mem[_132 + 100] = 96
                mem[_132 + 132] = mem[_132]
                s = 0
                t = _132 + 32
                u = _132 + 164
                while s < mem[_132]:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _132 + (32 * mem[_132]) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 5
        require stor5[address(msg.sender)]
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _106 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if msg.sender == stor4[mem[(32 * idx) + 128]]:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _106
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _121 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_121] == mem[_121 + 31 len 1]
                if mem[_121 + 31 len 1]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _131 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_131 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                mem[_131 + 36] = _106
                mem[_131 + 68] = sub_1ad5db32Address
                mem[_131 + 100] = 96
                mem[_131 + 132] = mem[_131]
                s = 0
                t = _131 + 32
                u = _131 + 164
                while s < mem[_131]:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _131 + (32 * mem[_131]) + -mem[64] + 160]
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _106
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _124 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_124] == mem[_124 + 31 len 1]
                if mem[_124 + 31 len 1]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _133 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_133 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                mem[_133 + 36] = _106
                mem[_133 + 68] = sub_1ad5db32Address
                mem[_133 + 100] = 96
                mem[_133 + 132] = mem[_133]
                s = 0
                t = _133 + 32
                u = _133 + 164
                while s < mem[_133]:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _133 + (32 * mem[_133]) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 1
            continue 
    if bool(s) != 1:
        revert with 0, 'No trainer is resting'
}

function sub_158db985(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
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
    if msg.sender == owner:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _103 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if stor4[mem[(32 * idx) + 128]] == msg.sender:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _103
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _120 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_120] == mem[_120 + 31 len 1]
                if mem[_120 + 31 len 1]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _130 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_130 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                mem[_130 + 36] = _103
                mem[_130 + 68] = sub_e0fbeed4Address
                mem[_130 + 100] = 96
                mem[_130 + 132] = mem[_130]
                s = 0
                t = _130 + 32
                u = _130 + 164
                while s < mem[_130]:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _130 + (32 * mem[_130]) + -mem[64] + 160]
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _103
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _122 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_122] == mem[_122 + 31 len 1]
                if mem[_122 + 31 len 1]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _132 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_132 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                mem[_132 + 36] = _103
                mem[_132 + 68] = sub_e0fbeed4Address
                mem[_132 + 100] = 96
                mem[_132 + 132] = mem[_132]
                s = 0
                t = _132 + 32
                u = _132 + 164
                while s < mem[_132]:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _132 + (32 * mem[_132]) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 5
        require stor5[address(msg.sender)]
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _106 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if stor4[mem[(32 * idx) + 128]] == msg.sender:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _106
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _121 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_121] == mem[_121 + 31 len 1]
                if mem[_121 + 31 len 1]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _131 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_131 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                mem[_131 + 36] = _106
                mem[_131 + 68] = sub_e0fbeed4Address
                mem[_131 + 100] = 96
                mem[_131 + 132] = mem[_131]
                s = 0
                t = _131 + 32
                u = _131 + 164
                while s < mem[_131]:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _131 + (32 * mem[_131]) + -mem[64] + 160]
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _106
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _124 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_124] == mem[_124 + 31 len 1]
                if mem[_124 + 31 len 1]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _133 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_133 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                mem[_133 + 36] = _106
                mem[_133 + 68] = sub_e0fbeed4Address
                mem[_133 + 100] = 96
                mem[_133 + 132] = mem[_133]
                s = 0
                t = _133 + 32
                u = _133 + 164
                while s < mem[_133]:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _133 + (32 * mem[_133]) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 1
            continue 
    if bool(s) != 1:
        revert with 0, 'No trainer is resting or already went on journey in the last 12hrs'
}

function sub_e2503879(?) {
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
    if msg.sender == owner:
        if not stor5[msg.sender]:
            revert with 0, 'You don't have any trainer enlisted'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require stor4[mem[(32 * idx) + 128]] == msg.sender
            if idx >= mem[96]:
                revert with 0, 50
            if msg.sender == owner:
                if not stor5[address(msg.sender)]:
                    revert with 0, 'Owner does not have any token'
                stor4[mem[(32 * idx) + 128]] = 0
                if stor5[address(msg.sender)] < 1:
                    revert with 0, 17
                if stor5[address(msg.sender)] - 1 == stor7[mem[(32 * idx) + 128]]:
                    stor7[mem[(32 * idx) + 128]] = 0
                    stor6[address(msg.sender)][stor5[address(msg.sender)] - 1] = 0
                    mem[0] = msg.sender
                    mem[32] = 5
                    if stor5[address(msg.sender)] < 1:
                        revert with 0, 17
                    stor5[address(msg.sender)]--
                    if idx >= mem[96]:
                        revert with 0, 50
                    _340 = mem[(32 * idx) + 128]
                    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
                    mem[ceil32(32 * ('cd', 4).length) + 165] = _340
                    require ext_code.size(stor8)
                    call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _340
                else:
                    stor6[address(msg.sender)][stor7[mem[(32 * idx) + 128]]] = stor6[address(msg.sender)][stor5[address(msg.sender)] - 1]
                    stor7[stor6[address(msg.sender)][stor5[address(msg.sender)] - 1]] = stor7[mem[(32 * idx) + 128]]
                    stor7[mem[(32 * idx) + 128]] = 0
                    stor6[address(msg.sender)][stor5[address(msg.sender)] - 1] = 0
                    mem[0] = msg.sender
                    mem[32] = 5
                    if stor5[address(msg.sender)] < 1:
                        revert with 0, 17
                    stor5[address(msg.sender)]--
                    if idx >= mem[96]:
                        revert with 0, 50
                    _346 = mem[(32 * idx) + 128]
                    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
                    mem[ceil32(32 * ('cd', 4).length) + 165] = _346
                    require ext_code.size(stor8)
                    call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _346
            else:
                require stor5[address(msg.sender)]
                if not stor5[address(msg.sender)]:
                    revert with 0, 'Owner does not have any token'
                stor4[mem[(32 * idx) + 128]] = 0
                if stor5[address(msg.sender)] < 1:
                    revert with 0, 17
                if stor5[address(msg.sender)] - 1 == stor7[mem[(32 * idx) + 128]]:
                    stor7[mem[(32 * idx) + 128]] = 0
                    stor6[address(msg.sender)][stor5[address(msg.sender)] - 1] = 0
                    mem[0] = msg.sender
                    mem[32] = 5
                    if stor5[address(msg.sender)] < 1:
                        revert with 0, 17
                    stor5[address(msg.sender)]--
                    if idx >= mem[96]:
                        revert with 0, 50
                    _353 = mem[(32 * idx) + 128]
                    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
                    mem[ceil32(32 * ('cd', 4).length) + 165] = _353
                    require ext_code.size(stor8)
                    call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _353
                else:
                    stor6[address(msg.sender)][stor7[mem[(32 * idx) + 128]]] = stor6[address(msg.sender)][stor5[address(msg.sender)] - 1]
                    stor7[stor6[address(msg.sender)][stor5[address(msg.sender)] - 1]] = stor7[mem[(32 * idx) + 128]]
                    stor7[mem[(32 * idx) + 128]] = 0
                    stor6[address(msg.sender)][stor5[address(msg.sender)] - 1] = 0
                    mem[0] = msg.sender
                    mem[32] = 5
                    if stor5[address(msg.sender)] < 1:
                        revert with 0, 17
                    stor5[address(msg.sender)]--
                    if idx >= mem[96]:
                        revert with 0, 50
                    _361 = mem[(32 * idx) + 128]
                    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
                    mem[ceil32(32 * ('cd', 4).length) + 165] = _361
                    require ext_code.size(stor8)
                    call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _361
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        require stor5[address(msg.sender)]
        if not stor5[msg.sender]:
            revert with 0, 'You don't have any trainer enlisted'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require stor4[mem[(32 * idx) + 128]] == msg.sender
            if idx >= mem[96]:
                revert with 0, 50
            if msg.sender == owner:
                if not stor5[address(msg.sender)]:
                    revert with 0, 'Owner does not have any token'
                stor4[mem[(32 * idx) + 128]] = 0
                if stor5[address(msg.sender)] < 1:
                    revert with 0, 17
                if stor5[address(msg.sender)] - 1 == stor7[mem[(32 * idx) + 128]]:
                    stor7[mem[(32 * idx) + 128]] = 0
                    stor6[address(msg.sender)][stor5[address(msg.sender)] - 1] = 0
                    mem[0] = msg.sender
                    mem[32] = 5
                    if stor5[address(msg.sender)] < 1:
                        revert with 0, 17
                    stor5[address(msg.sender)]--
                    if idx >= mem[96]:
                        revert with 0, 50
                    _343 = mem[(32 * idx) + 128]
                    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
                    mem[ceil32(32 * ('cd', 4).length) + 165] = _343
                    require ext_code.size(stor8)
                    call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _343
                else:
                    stor6[address(msg.sender)][stor7[mem[(32 * idx) + 128]]] = stor6[address(msg.sender)][stor5[address(msg.sender)] - 1]
                    stor7[stor6[address(msg.sender)][stor5[address(msg.sender)] - 1]] = stor7[mem[(32 * idx) + 128]]
                    stor7[mem[(32 * idx) + 128]] = 0
                    stor6[address(msg.sender)][stor5[address(msg.sender)] - 1] = 0
                    mem[0] = msg.sender
                    mem[32] = 5
                    if stor5[address(msg.sender)] < 1:
                        revert with 0, 17
                    stor5[address(msg.sender)]--
                    if idx >= mem[96]:
                        revert with 0, 50
                    _349 = mem[(32 * idx) + 128]
                    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
                    mem[ceil32(32 * ('cd', 4).length) + 165] = _349
                    require ext_code.size(stor8)
                    call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _349
            else:
                require stor5[address(msg.sender)]
                if not stor5[address(msg.sender)]:
                    revert with 0, 'Owner does not have any token'
                stor4[mem[(32 * idx) + 128]] = 0
                if stor5[address(msg.sender)] < 1:
                    revert with 0, 17
                if stor5[address(msg.sender)] - 1 == stor7[mem[(32 * idx) + 128]]:
                    stor7[mem[(32 * idx) + 128]] = 0
                    stor6[address(msg.sender)][stor5[address(msg.sender)] - 1] = 0
                    mem[0] = msg.sender
                    mem[32] = 5
                    if stor5[address(msg.sender)] < 1:
                        revert with 0, 17
                    stor5[address(msg.sender)]--
                    if idx >= mem[96]:
                        revert with 0, 50
                    _357 = mem[(32 * idx) + 128]
                    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
                    mem[ceil32(32 * ('cd', 4).length) + 165] = _357
                    require ext_code.size(stor8)
                    call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _357
                else:
                    stor6[address(msg.sender)][stor7[mem[(32 * idx) + 128]]] = stor6[address(msg.sender)][stor5[address(msg.sender)] - 1]
                    stor7[stor6[address(msg.sender)][stor5[address(msg.sender)] - 1]] = stor7[mem[(32 * idx) + 128]]
                    stor7[mem[(32 * idx) + 128]] = 0
                    stor6[address(msg.sender)][stor5[address(msg.sender)] - 1] = 0
                    mem[0] = msg.sender
                    mem[32] = 5
                    if stor5[address(msg.sender)] < 1:
                        revert with 0, 17
                    stor5[address(msg.sender)]--
                    if idx >= mem[96]:
                        revert with 0, 50
                    _364 = mem[(32 * idx) + 128]
                    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
                    mem[ceil32(32 * ('cd', 4).length) + 165] = _364
                    require ext_code.size(stor8)
                    call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _364
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_a48d99f8(?) {
    mem[100] = msg.sender
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        idx = 0
        s = 0
        while uint16(idx) < ext_call.return_data[0]:
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _113 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64] + 4] = mem[(32 * uint16(idx)) + 128]
            require ext_code.size(stor8)
            call stor8.0x6352211e with:
                 gas gas_remaining wei
                args _113
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _123 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_123] == mem[_123 + 12 len 20]
            require msg.sender == mem[_123 + 12 len 20]
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _144 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64] + 4] = mem[(32 * uint16(idx)) + 128]
            require ext_code.size(stor8)
            staticcall stor8.getStatus(uint256 arg1) with:
                    gas gas_remaining wei
                   args _144
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _149 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_149] == mem[_149 + 31 len 1]
            if mem[_149 + 31 len 1]:
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = s
                continue 
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _162 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _162
            require ext_code.size(stor8)
            call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _162
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _172 = mem[(32 * uint16(idx)) + 128]
            _173 = mem[64]
            mem[64] = mem[64] + 32
            mem[_173 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
            mem[_173 + 36] = _172
            mem[_173 + 68] = sub_1ad5db32Address
            mem[_173 + 100] = 96
            mem[_173 + 132] = mem[_173]
            t = 0
            u = _173 + 32
            v = _173 + 164
            while t < mem[_173]:
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor8)
            call stor8.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _173 + (32 * mem[_173]) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _225 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _225
            require ext_code.size(stor8)
            call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _225
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) == 65535:
                revert with 0, 17
            if s:
                idx = uint16(idx) + 1
                s = s
                continue 
            idx = uint16(idx) + 1
            s = 1
            continue 
    else:
        if ext_call.return_data[0] > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(stor8)
                staticcall stor8.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _117 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_117]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _206 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while uint16(idx) < _206:
                if uint16(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _212 = mem[(32 * uint16(idx)) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * uint16(idx)) + ceil32(return_data.size) + 128]
                require ext_code.size(stor8)
                call stor8.0x6352211e with:
                     gas gas_remaining wei
                    args _212
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _223 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_223] == mem[_223 + 12 len 20]
                require msg.sender == mem[_223 + 12 len 20]
                if uint16(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _232 = mem[(32 * uint16(idx)) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * uint16(idx)) + ceil32(return_data.size) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _232
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _238 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_238] == mem[_238 + 31 len 1]
                if mem[_238 + 31 len 1]:
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _206 = mem[ceil32(return_data.size) + 96]
                    idx = uint16(idx) + 1
                    s = s
                    continue 
                if uint16(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _244 = mem[(32 * uint16(idx)) + ceil32(return_data.size) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _244
                require ext_code.size(stor8)
                call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _244
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _252 = mem[(32 * uint16(idx)) + ceil32(return_data.size) + 128]
                _253 = mem[64]
                mem[64] = mem[64] + 32
                mem[_253 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                mem[_253 + 36] = _252
                mem[_253 + 68] = sub_1ad5db32Address
                mem[_253 + 100] = 96
                mem[_253 + 132] = mem[_253]
                t = 0
                u = _253 + 32
                v = _253 + 164
                while t < mem[_253]:
                    mem[v] = mem[u]
                    _206 = mem[ceil32(return_data.size) + 96]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _253 + (32 * mem[_253]) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _278 = mem[(32 * uint16(idx)) + ceil32(return_data.size) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _278
                require ext_code.size(stor8)
                call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _278
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) == 65535:
                    revert with 0, 17
                _206 = mem[ceil32(return_data.size) + 96]
                if s:
                    idx = uint16(idx) + 1
                    s = s
                    continue 
                idx = uint16(idx) + 1
                s = 1
                continue 
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(stor8)
                staticcall stor8.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _119 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_119]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _207 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while uint16(idx) < _207:
                if uint16(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _214 = mem[(32 * uint16(idx)) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * uint16(idx)) + ceil32(return_data.size) + 128]
                require ext_code.size(stor8)
                call stor8.0x6352211e with:
                     gas gas_remaining wei
                    args _214
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_224] == mem[_224 + 12 len 20]
                require msg.sender == mem[_224 + 12 len 20]
                if uint16(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _234 = mem[(32 * uint16(idx)) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * uint16(idx)) + ceil32(return_data.size) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _234
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _239 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_239] == mem[_239 + 31 len 1]
                if mem[_239 + 31 len 1]:
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _207 = mem[ceil32(return_data.size) + 96]
                    idx = uint16(idx) + 1
                    s = s
                    continue 
                if uint16(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _246 = mem[(32 * uint16(idx)) + ceil32(return_data.size) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _246
                require ext_code.size(stor8)
                call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _246
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _254 = mem[(32 * uint16(idx)) + ceil32(return_data.size) + 128]
                _255 = mem[64]
                mem[64] = mem[64] + 32
                mem[_255 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                mem[_255 + 36] = _254
                mem[_255 + 68] = sub_1ad5db32Address
                mem[_255 + 100] = 96
                mem[_255 + 132] = mem[_255]
                t = 0
                u = _255 + 32
                v = _255 + 164
                while t < mem[_255]:
                    mem[v] = mem[u]
                    _207 = mem[ceil32(return_data.size) + 96]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _255 + (32 * mem[_255]) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _280 = mem[(32 * uint16(idx)) + ceil32(return_data.size) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _280
                require ext_code.size(stor8)
                call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _280
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) == 65535:
                    revert with 0, 17
                _207 = mem[ceil32(return_data.size) + 96]
                if s:
                    idx = uint16(idx) + 1
                    s = s
                    continue 
                idx = uint16(idx) + 1
                s = 1
                continue 
    if bool(s) != 1:
        revert with 0, 'No trainer is resting or already went on journey in the last 12hrs'
}

function sub_bf06ed82(?) {
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(stor8)
    staticcall stor8.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Please get approvalForAll'
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You don't own any token'
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        idx = 0
        s = 0
        while uint16(idx) < ext_call.return_data[0]:
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _137 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64] + 4] = mem[(32 * uint16(idx)) + 128]
            require ext_code.size(stor8)
            call stor8.0x6352211e with:
                 gas gas_remaining wei
                args _137
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _147 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_147] == mem[_147 + 12 len 20]
            require msg.sender == mem[_147 + 12 len 20]
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _168 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64] + 4] = mem[(32 * uint16(idx)) + 128]
            require ext_code.size(stor8)
            staticcall stor8.getStatus(uint256 arg1) with:
                    gas gas_remaining wei
                   args _168
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_173] == mem[_173 + 31 len 1]
            if mem[_173 + 31 len 1]:
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = s
                continue 
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _186 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _186
            require ext_code.size(stor8)
            call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _186
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _196 = mem[(32 * uint16(idx)) + 128]
            _197 = mem[64]
            mem[64] = mem[64] + 32
            mem[_197 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
            mem[_197 + 36] = _196
            mem[_197 + 68] = sub_e0fbeed4Address
            mem[_197 + 100] = 96
            mem[_197 + 132] = mem[_197]
            t = 0
            u = _197 + 32
            v = _197 + 164
            while t < mem[_197]:
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor8)
            call stor8.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _197 + (32 * mem[_197]) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _261 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _261
            require ext_code.size(stor8)
            call stor8.0x7ed75068 with:
                 gas gas_remaining wei
                args _261
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _267 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _267
            require ext_code.size(stor8)
            call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _267
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) == 65535:
                revert with 0, 17
            if s:
                idx = uint16(idx) + 1
                s = s
                continue 
            idx = uint16(idx) + 1
            s = 1
            continue 
    else:
        if ext_call.return_data[0] > test266151307():
            revert with 0, 65
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        mem[64] = (4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(stor8)
                staticcall stor8.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _141 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128] = mem[_141]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _242 = mem[(4 * ceil32(return_data.size)) + 96]
            idx = 0
            s = 0
            while uint16(idx) < _242:
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _248 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                require ext_code.size(stor8)
                call stor8.0x6352211e with:
                     gas gas_remaining wei
                    args _248
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _259 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_259] == mem[_259 + 12 len 20]
                require msg.sender == mem[_259 + 12 len 20]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _272 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _272
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_278] == mem[_278 + 31 len 1]
                if mem[_278 + 31 len 1]:
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _242 = mem[(4 * ceil32(return_data.size)) + 96]
                    idx = uint16(idx) + 1
                    s = s
                    continue 
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _284 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _284
                require ext_code.size(stor8)
                call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _292 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                _293 = mem[64]
                mem[64] = mem[64] + 32
                mem[_293 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                mem[_293 + 36] = _292
                mem[_293 + 68] = sub_e0fbeed4Address
                mem[_293 + 100] = 96
                mem[_293 + 132] = mem[_293]
                t = 0
                u = _293 + 32
                v = _293 + 164
                while t < mem[_293]:
                    mem[v] = mem[u]
                    _242 = mem[(4 * ceil32(return_data.size)) + 96]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _293 + (32 * mem[_293]) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _326 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _326
                require ext_code.size(stor8)
                call stor8.0x7ed75068 with:
                     gas gas_remaining wei
                    args _326
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _334 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _334
                require ext_code.size(stor8)
                call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _334
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) == 65535:
                    revert with 0, 17
                _242 = mem[(4 * ceil32(return_data.size)) + 96]
                if s:
                    idx = uint16(idx) + 1
                    s = s
                    continue 
                idx = uint16(idx) + 1
                s = 1
                continue 
        else:
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(stor8)
                staticcall stor8.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _143 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128] = mem[_143]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _243 = mem[(4 * ceil32(return_data.size)) + 96]
            idx = 0
            s = 0
            while uint16(idx) < _243:
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _250 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                require ext_code.size(stor8)
                call stor8.0x6352211e with:
                     gas gas_remaining wei
                    args _250
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _260 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_260] == mem[_260 + 12 len 20]
                require msg.sender == mem[_260 + 12 len 20]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _274 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _274
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _279 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_279] == mem[_279 + 31 len 1]
                if mem[_279 + 31 len 1]:
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _243 = mem[(4 * ceil32(return_data.size)) + 96]
                    idx = uint16(idx) + 1
                    s = s
                    continue 
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _286 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _286
                require ext_code.size(stor8)
                call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _286
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _294 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                _295 = mem[64]
                mem[64] = mem[64] + 32
                mem[_295 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                mem[_295 + 36] = _294
                mem[_295 + 68] = sub_e0fbeed4Address
                mem[_295 + 100] = 96
                mem[_295 + 132] = mem[_295]
                t = 0
                u = _295 + 32
                v = _295 + 164
                while t < mem[_295]:
                    mem[v] = mem[u]
                    _243 = mem[(4 * ceil32(return_data.size)) + 96]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _295 + (32 * mem[_295]) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _328 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _328
                require ext_code.size(stor8)
                call stor8.0x7ed75068 with:
                     gas gas_remaining wei
                    args _328
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _336 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _336
                require ext_code.size(stor8)
                call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _336
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) == 65535:
                    revert with 0, 17
                _243 = mem[(4 * ceil32(return_data.size)) + 96]
                if s:
                    idx = uint16(idx) + 1
                    s = s
                    continue 
                idx = uint16(idx) + 1
                s = 1
                continue 
    if bool(s) != 1:
        revert with 0, 'No trainer is resting or already went on journey in the last 12hrs'
}

function sub_6aea4f3e(?) {
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(stor8)
    staticcall stor8.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Please get approvalForAll'
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You don't own any token'
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        idx = 0
        s = 0
        while uint16(idx) < ext_call.return_data[0]:
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _140 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64] + 4] = mem[(32 * uint16(idx)) + 128]
            require ext_code.size(stor8)
            staticcall stor8.getStatus(uint256 arg1) with:
                    gas gas_remaining wei
                   args _140
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _150 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_150] == mem[_150 + 31 len 1]
            if mem[_150 + 31 len 1]:
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = s
                continue 
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _171 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _171
            require ext_code.size(stor8)
            call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _171
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _181 = mem[(32 * uint16(idx)) + 128]
            _182 = mem[64]
            mem[64] = mem[64] + 32
            mem[_182 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
            mem[_182 + 36] = _181
            mem[_182 + 68] = sub_e0fbeed4Address
            mem[_182 + 100] = 96
            mem[_182 + 132] = mem[_182]
            t = 0
            u = _182 + 32
            v = _182 + 164
            while t < mem[_182]:
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor8)
            call stor8.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _182 + (32 * mem[_182]) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _267 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _267
            require ext_code.size(stor8)
            call stor8.0x7ed75068 with:
                 gas gas_remaining wei
                args _267
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _273 = mem[(32 * uint16(idx)) + 128]
            _274 = mem[64]
            mem[64] = mem[64] + 32
            mem[_274 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
            mem[_274 + 36] = _273
            mem[_274 + 68] = sub_1ad5db32Address
            mem[_274 + 100] = 96
            mem[_274 + 132] = mem[_274]
            t = 0
            u = _274 + 32
            v = _274 + 164
            while t < mem[_274]:
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor8)
            call stor8.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _274 + (32 * mem[_274]) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _344 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _344
            require ext_code.size(stor8)
            call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _344
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) == 65535:
                revert with 0, 17
            if s:
                idx = uint16(idx) + 1
                s = s
                continue 
            idx = uint16(idx) + 1
            s = 1
            continue 
    else:
        if ext_call.return_data[0] > test266151307():
            revert with 0, 65
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        mem[64] = (4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(stor8)
                staticcall stor8.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _144 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128] = mem[_144]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _248 = mem[(4 * ceil32(return_data.size)) + 96]
            idx = 0
            s = 0
            while uint16(idx) < _248:
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _254 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _254
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _265 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_265] == mem[_265 + 31 len 1]
                if mem[_265 + 31 len 1]:
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _248 = mem[(4 * ceil32(return_data.size)) + 96]
                    idx = uint16(idx) + 1
                    s = s
                    continue 
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _278 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _278
                require ext_code.size(stor8)
                call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _278
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _288 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                _289 = mem[64]
                mem[64] = mem[64] + 32
                mem[_289 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                mem[_289 + 36] = _288
                mem[_289 + 68] = sub_e0fbeed4Address
                mem[_289 + 100] = 96
                mem[_289 + 132] = mem[_289]
                t = 0
                u = _289 + 32
                v = _289 + 164
                while t < mem[_289]:
                    mem[v] = mem[u]
                    _248 = mem[(4 * ceil32(return_data.size)) + 96]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _289 + (32 * mem[_289]) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _346 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _346
                require ext_code.size(stor8)
                call stor8.0x7ed75068 with:
                     gas gas_remaining wei
                    args _346
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _355 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                _356 = mem[64]
                mem[64] = mem[64] + 32
                mem[_356 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                mem[_356 + 36] = _355
                mem[_356 + 68] = sub_1ad5db32Address
                mem[_356 + 100] = 96
                mem[_356 + 132] = mem[_356]
                t = 0
                u = _356 + 32
                v = _356 + 164
                while t < mem[_356]:
                    mem[v] = mem[u]
                    _248 = mem[(4 * ceil32(return_data.size)) + 96]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _356 + (32 * mem[_356]) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _381 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _381
                require ext_code.size(stor8)
                call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _381
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) == 65535:
                    revert with 0, 17
                _248 = mem[(4 * ceil32(return_data.size)) + 96]
                if s:
                    idx = uint16(idx) + 1
                    s = s
                    continue 
                idx = uint16(idx) + 1
                s = 1
                continue 
        else:
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(stor8)
                staticcall stor8.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _146 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128] = mem[_146]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _249 = mem[(4 * ceil32(return_data.size)) + 96]
            idx = 0
            s = 0
            while uint16(idx) < _249:
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _257 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                require ext_code.size(stor8)
                staticcall stor8.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _257
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_266] == mem[_266 + 31 len 1]
                if mem[_266 + 31 len 1]:
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _249 = mem[(4 * ceil32(return_data.size)) + 96]
                    idx = uint16(idx) + 1
                    s = s
                    continue 
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _280 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _280
                require ext_code.size(stor8)
                call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _280
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _290 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                _291 = mem[64]
                mem[64] = mem[64] + 32
                mem[_291 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                mem[_291 + 36] = _290
                mem[_291 + 68] = sub_e0fbeed4Address
                mem[_291 + 100] = 96
                mem[_291 + 132] = mem[_291]
                t = 0
                u = _291 + 32
                v = _291 + 164
                while t < mem[_291]:
                    mem[v] = mem[u]
                    _249 = mem[(4 * ceil32(return_data.size)) + 96]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _291 + (32 * mem[_291]) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _348 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _348
                require ext_code.size(stor8)
                call stor8.0x7ed75068 with:
                     gas gas_remaining wei
                    args _348
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _357 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                _358 = mem[64]
                mem[64] = mem[64] + 32
                mem[_358 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                mem[_358 + 36] = _357
                mem[_358 + 68] = sub_1ad5db32Address
                mem[_358 + 100] = 96
                mem[_358 + 132] = mem[_358]
                t = 0
                u = _358 + 32
                v = _358 + 164
                while t < mem[_358]:
                    mem[v] = mem[u]
                    _249 = mem[(4 * ceil32(return_data.size)) + 96]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _358 + (32 * mem[_358]) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _383 = mem[(32 * uint16(idx)) + (4 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _383
                require ext_code.size(stor8)
                call stor8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _383
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) == 65535:
                    revert with 0, 17
                _249 = mem[(4 * ceil32(return_data.size)) + 96]
                if s:
                    idx = uint16(idx) + 1
                    s = s
                    continue 
                idx = uint16(idx) + 1
                s = 1
                continue 
    if bool(s) != 1:
        revert with 0, 'No trainer is resting or already went on journey in the last 12hrs'
}



}
