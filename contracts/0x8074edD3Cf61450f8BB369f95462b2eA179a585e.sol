contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of address stor2;
mapping of uint256 balance;
mapping of uint256 stor4;
mapping of uint256 stor5;
array of struct stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
array of struct stor9;
mapping of uint256 stor10;

function owner() {
    return owner
}

function balance() {
    return balance[msg.sender]
}

function isEnlisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(balance[address(arg1)])
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

function transferOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9caac016(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    stor8[arg1] = block.timestamp
}

function sub_53a145e6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    stor6.length++
    stor6[stor6.length].field_0 = address(arg1)
    if stor6.length < 1:
        revert with 0, 17
    stor7[address(arg1)] = stor6.length - 1
}

function sub_0ba02262(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    stor9.length++
    stor9[stor9.length].field_0 = address(arg1)
    if stor9.length < 1:
        revert with 0, 17
    stor10[address(arg1)] = stor9.length - 1
}

function sub_b315f6d5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
    require ext_code.size(stor1)
    call stor1.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        require balance[address(msg.sender)]
    require msg.sender == stor2[arg3]
    require ext_code.size(stor1)
    call stor1.0x42842e0e with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_18da2927(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor1)
    staticcall stor1.0xe985e9c5 with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        return 0
    return 1
}

function sub_509f9991(?) {
    if stor6.length:
        mem[128] = address(stor6.field_0)
        if (32 * stor6.length) + 32 > 64:
            mem[160] = address(stor6.field_256)
            idx = 160
            s = 1
            while (32 * stor6.length) + 96 > idx:
                mem[idx + 32] = stor6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
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
}

function ownedTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not balance[msg.sender]:
        mem[160 len 1024] = 32, mem[160 len 992]
        return 32, 32, mem[160 len 1024]
    if balance[msg.sender] > test266151307():
        revert with 0, 65
    if balance[msg.sender]:
        mem[128 len 32 * balance[msg.sender]] = call.data[calldata.size len 32 * balance[msg.sender]]
    idx = 0
    while idx < balance[msg.sender]:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 4)
        if idx >= balance[msg.sender]:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor4[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=balance[msg.sender], data=mem[128 len 32 * balance[msg.sender]])
}

function sub_1ad5db32(?) {
    mem[64] = (32 * stor9.length) + 128
    mem[96] = stor9.length
    if not stor9.length:
        mem[(32 * stor9.length) + 128] = 32
        mem[(32 * stor9.length) + 160] = stor9.length
        idx = 0
        s = (32 * stor9.length) + 192
        t = 128
        while idx < stor9.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor9.length) + 128
           len (96 * stor9.length) + 64
    mem[128] = address(stor9.field_0)
    idx = 128
    s = 0
    while (32 * stor9.length) + 96 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor9.length) + 128] = 32
    mem[(32 * stor9.length) + 160] = stor9.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor9.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor9.length) + -mem[64] + 192
}

function sub_b62a7264(?) {
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
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
            require ext_code.size(stor1)
            staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
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
        require ext_code.size(stor1)
        staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
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
    idx = 0
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if msg.sender == owner:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _87 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            if msg.sender == stor2[mem[(32 * idx) + 128]]:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
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
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _87
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
            mem[mem[64] + 4] = _87
            require ext_code.size(stor1)
            call stor1.0x7ed75068 with:
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
        mem[32] = 3
        require balance[address(msg.sender)]
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _90 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            if msg.sender == stor2[mem[(32 * idx) + 128]]:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _90
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
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _90
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _109 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_109] == mem[_109 + 31 len 1]
                if mem[_109 + 31 len 1] != 4:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
            mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _90
            require ext_code.size(stor1)
            call stor1.0x7ed75068 with:
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

function sub_b0240313(?) {
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
    idx = 0
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if msg.sender == owner:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _78 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            if msg.sender == stor2[mem[(32 * idx) + 128]]:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _78
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _92 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_92] == mem[_92 + 31 len 1]
                if mem[_92 + 31 len 1] == 3:
                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _78
                    require ext_code.size(stor1)
                    call stor1.0x6d3ff596 with:
                         gas gas_remaining wei
                        args _78
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _78
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _96 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_96] == mem[_96 + 31 len 1]
                if mem[_96 + 31 len 1] == 3:
                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _78
                    require ext_code.size(stor1)
                    call stor1.0x6d3ff596 with:
                         gas gas_remaining wei
                        args _78
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 3
        require balance[address(msg.sender)]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _80 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            if msg.sender == stor2[mem[(32 * idx) + 128]]:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _80
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _94 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_94] == mem[_94 + 31 len 1]
                if mem[_94 + 31 len 1] == 3:
                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _80
                    require ext_code.size(stor1)
                    call stor1.0x6d3ff596 with:
                         gas gas_remaining wei
                        args _80
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _80
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _97 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_97] == mem[_97 + 31 len 1]
                if mem[_97 + 31 len 1] == 3:
                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _80
                    require ext_code.size(stor1)
                    call stor1.0x6d3ff596 with:
                         gas gas_remaining wei
                        args _80
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_064c00d3(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Please get approval'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You don't own any token'
    if ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor1)
            call stor1.0x6352211e with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_47] == mem[_47 + 12 len 20]
            require msg.sender == mem[_47 + 12 len 20]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            stor2[cd[((32 * idx) + cd[4] + 36)]] = msg.sender
            stor4[address(msg.sender)][stor3[address(msg.sender)]] = cd[((32 * idx) + cd[4] + 36)]
            if balance[address(msg.sender)] > -2:
                revert with 0, 17
            balance[address(msg.sender)]++
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 5
            stor5[cd[((32 * idx) + cd[4] + 36)]] = balance[address(msg.sender)]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor1)
            call stor1.0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if ext_call.return_data[0] > test266151307():
            revert with 0, 65
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(stor1)
                staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _42 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = mem[_42]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < ext_call.return_data[0]:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                stor2[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] = msg.sender
                stor4[address(msg.sender)][stor3[address(msg.sender)]] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                if balance[address(msg.sender)] > -2:
                    revert with 0, 17
                balance[address(msg.sender)]++
                mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                mem[32] = 5
                stor5[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] = balance[address(msg.sender)]
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _94 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _94
                require ext_code.size(stor1)
                call stor1.0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _94
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(stor1)
                staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _44 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = mem[_44]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < ext_call.return_data[0]:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                stor2[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] = msg.sender
                stor4[address(msg.sender)][stor3[address(msg.sender)]] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                if balance[address(msg.sender)] > -2:
                    revert with 0, 17
                balance[address(msg.sender)]++
                mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                mem[32] = 5
                stor5[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] = balance[address(msg.sender)]
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _96 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _96
                require ext_code.size(stor1)
                call stor1.0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _96
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function sub_0e482951(?) {
    require calldata.size - 4 >= 64
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
    idx = 0
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if msg.sender == owner:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _119 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            if msg.sender == stor2[mem[(32 * idx) + 128]]:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _119
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _136 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_136] == mem[_136 + 31 len 1]
                if mem[_136 + 31 len 1]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if cd[36] >= stor9.length:
                    revert with 0, 50
                mem[0] = 9
                _147 = mem[64]
                mem[64] = mem[64] + 32
                mem[_147 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                mem[_147 + 36] = _119
                mem[_147 + 68] = stor9[cd[36]].field_0
                mem[_147 + 100] = 96
                mem[_147 + 132] = mem[_147]
                s = 0
                t = _147 + 32
                u = _147 + 164
                while s < mem[_147]:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _147 + (32 * mem[_147]) + -mem[64] + 160]
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _119
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _140 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_140] == mem[_140 + 31 len 1]
                if mem[_140 + 31 len 1]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if cd[36] >= stor9.length:
                    revert with 0, 50
                mem[0] = 9
                _153 = mem[64]
                mem[64] = mem[64] + 32
                mem[_153 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                mem[_153 + 36] = _119
                mem[_153 + 68] = stor9[cd[36]].field_0
                mem[_153 + 100] = 96
                mem[_153 + 132] = mem[_153]
                s = 0
                t = _153 + 32
                u = _153 + 164
                while s < mem[_153]:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _153 + (32 * mem[_153]) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 3
        require balance[address(msg.sender)]
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _122 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            if msg.sender == stor2[mem[(32 * idx) + 128]]:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _122
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _138 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_138] == mem[_138 + 31 len 1]
                if mem[_138 + 31 len 1]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if cd[36] >= stor9.length:
                    revert with 0, 50
                mem[0] = 9
                _150 = mem[64]
                mem[64] = mem[64] + 32
                mem[_150 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                mem[_150 + 36] = _122
                mem[_150 + 68] = stor9[cd[36]].field_0
                mem[_150 + 100] = 96
                mem[_150 + 132] = mem[_150]
                s = 0
                t = _150 + 32
                u = _150 + 164
                while s < mem[_150]:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _150 + (32 * mem[_150]) + -mem[64] + 160]
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _122
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _141 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_141] == mem[_141 + 31 len 1]
                if mem[_141 + 31 len 1]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if cd[36] >= stor9.length:
                    revert with 0, 50
                mem[0] = 9
                _156 = mem[64]
                mem[64] = mem[64] + 32
                mem[_156 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                mem[_156 + 36] = _122
                mem[_156 + 68] = stor9[cd[36]].field_0
                mem[_156 + 100] = 96
                mem[_156 + 132] = mem[_156]
                s = 0
                t = _156 + 32
                u = _156 + 164
                while s < mem[_156]:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _156 + (32 * mem[_156]) + -mem[64] + 160]
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
    idx = 0
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if msg.sender == owner:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _135 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            if msg.sender == stor2[mem[(32 * idx) + 128]]:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _135
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _152 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_152] == mem[_152 + 31 len 1]
                if not mem[_152 + 31 len 1]:
                    mem[0] = _135
                    mem[32] = 8
                    if 12 * 3600 > !stor8[_135]:
                        revert with 0, 17
                    if block.timestamp > stor8[_135] + (12 * 3600):
                        if not stor6.length:
                            revert with 0, 50
                        mem[0] = 6
                        _167 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_167 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                        mem[_167 + 36] = _135
                        mem[_167 + 68] = address(stor6.field_0)
                        mem[_167 + 100] = 96
                        mem[_167 + 132] = mem[_167]
                        s = 0
                        t = _167 + 32
                        u = _167 + 164
                        while s < mem[_167]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _167 + (32 * mem[_167]) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = _135
                        mem[32] = 8
                        stor8[_135] = block.timestamp
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _135
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _156 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_156] == mem[_156 + 31 len 1]
                if not mem[_156 + 31 len 1]:
                    mem[0] = _135
                    mem[32] = 8
                    if 12 * 3600 > !stor8[_135]:
                        revert with 0, 17
                    if block.timestamp > stor8[_135] + (12 * 3600):
                        if not stor6.length:
                            revert with 0, 50
                        mem[0] = 6
                        _173 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_173 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                        mem[_173 + 36] = _135
                        mem[_173 + 68] = address(stor6.field_0)
                        mem[_173 + 100] = 96
                        mem[_173 + 132] = mem[_173]
                        s = 0
                        t = _173 + 32
                        u = _173 + 164
                        while s < mem[_173]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _173 + (32 * mem[_173]) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = _135
                        mem[32] = 8
                        stor8[_135] = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 3
        require balance[address(msg.sender)]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _138 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            if msg.sender == stor2[mem[(32 * idx) + 128]]:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _138
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _154 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_154] == mem[_154 + 31 len 1]
                if not mem[_154 + 31 len 1]:
                    mem[0] = _138
                    mem[32] = 8
                    if 12 * 3600 > !stor8[_138]:
                        revert with 0, 17
                    if block.timestamp > stor8[_138] + (12 * 3600):
                        if not stor6.length:
                            revert with 0, 50
                        mem[0] = 6
                        _170 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_170 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                        mem[_170 + 36] = _138
                        mem[_170 + 68] = address(stor6.field_0)
                        mem[_170 + 100] = 96
                        mem[_170 + 132] = mem[_170]
                        s = 0
                        t = _170 + 32
                        u = _170 + 164
                        while s < mem[_170]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _170 + (32 * mem[_170]) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = _138
                        mem[32] = 8
                        stor8[_138] = block.timestamp
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _138
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _157 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_157] == mem[_157 + 31 len 1]
                if not mem[_157 + 31 len 1]:
                    mem[0] = _138
                    mem[32] = 8
                    if 12 * 3600 > !stor8[_138]:
                        revert with 0, 17
                    if block.timestamp > stor8[_138] + (12 * 3600):
                        if not stor6.length:
                            revert with 0, 50
                        mem[0] = 6
                        _176 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_176 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                        mem[_176 + 36] = _138
                        mem[_176 + 68] = address(stor6.field_0)
                        mem[_176 + 100] = 96
                        mem[_176 + 132] = mem[_176]
                        s = 0
                        t = _176 + 32
                        u = _176 + 164
                        while s < mem[_176]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _176 + (32 * mem[_176]) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = _138
                        mem[32] = 8
                        stor8[_138] = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    revert with 0, 'No trainer is resting'
}

function sub_ce7bcd6b(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if msg.sender == owner:
        if not balance[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have any trainer enlisted'
        if ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                require msg.sender == stor2[cd[((32 * idx) + cd[4] + 36)]]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if owner != msg.sender:
                    require balance[address(msg.sender)]
                if not balance[address(msg.sender)]:
                    revert with 0, 'Run out token'
                stor2[cd[((32 * idx) + cd[4] + 36)]] = 0
                if balance[address(msg.sender)] < 1:
                    revert with 0, 17
                if balance[address(msg.sender)] - 1 != stor5[cd[((32 * idx) + cd[4] + 36)]]:
                    stor4[address(msg.sender)][stor5[cd[((32 * idx) + cd[4] + 36)]]] = stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]
                    stor5[stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]] = stor5[cd[((32 * idx) + cd[4] + 36)]]
                stor5[cd[((32 * idx) + cd[4] + 36)]] = 0
                stor4[address(msg.sender)][stor3[address(msg.sender)] - 1] = 0
                mem[0] = msg.sender
                mem[32] = 3
                if balance[address(msg.sender)] < 1:
                    revert with 0, 17
                balance[address(msg.sender)]--
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[100] = this.address
                mem[132] = msg.sender
                mem[164] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor1)
                call stor1.0x42842e0e with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if not balance[msg.sender]:
                idx = 0
                while idx < balance[msg.sender]:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _431 = mem[(32 * idx) + 128]
                    if stor2[mem[(32 * idx) + 128]] != msg.sender:
                        revert with 0, 'You do not own one of the tokens'
                    if owner != msg.sender:
                        require balance[address(msg.sender)]
                    if not balance[address(msg.sender)]:
                        revert with 0, 'Run out token'
                    stor2[mem[(32 * idx) + 128]] = 0
                    if balance[address(msg.sender)] < 1:
                        revert with 0, 17
                    if balance[address(msg.sender)] - 1 != stor5[mem[(32 * idx) + 128]]:
                        stor4[address(msg.sender)][stor5[mem[(32 * idx) + 128]]] = stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]
                        stor5[stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]] = stor5[mem[(32 * idx) + 128]]
                    stor5[mem[(32 * idx) + 128]] = 0
                    stor4[address(msg.sender)][stor3[address(msg.sender)] - 1] = 0
                    mem[0] = msg.sender
                    mem[32] = 3
                    if balance[address(msg.sender)] < 1:
                        revert with 0, 17
                    balance[address(msg.sender)]--
                    mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[100] = this.address
                    mem[132] = msg.sender
                    mem[164] = _431
                    require ext_code.size(stor1)
                    call stor1.0x42842e0e with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _431
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if balance[msg.sender] > test266151307():
                    revert with 0, 65
                if not balance[msg.sender]:
                    idx = 0
                    while idx < balance[msg.sender]:
                        mem[0] = idx
                        mem[32] = sha3(address(msg.sender), 4)
                        if idx >= balance[msg.sender]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= balance[msg.sender]:
                            revert with 0, 50
                        _824 = mem[(32 * idx) + 128]
                        if stor2[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'You do not own one of the tokens'
                        if owner != msg.sender:
                            require balance[address(msg.sender)]
                        if not balance[address(msg.sender)]:
                            revert with 0, 'Run out token'
                        stor2[mem[(32 * idx) + 128]] = 0
                        if balance[address(msg.sender)] < 1:
                            revert with 0, 17
                        if balance[address(msg.sender)] - 1 != stor5[mem[(32 * idx) + 128]]:
                            stor4[address(msg.sender)][stor5[mem[(32 * idx) + 128]]] = stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]
                            stor5[stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]] = stor5[mem[(32 * idx) + 128]]
                        stor5[mem[(32 * idx) + 128]] = 0
                        stor4[address(msg.sender)][stor3[address(msg.sender)] - 1] = 0
                        mem[0] = msg.sender
                        mem[32] = 3
                        if balance[address(msg.sender)] < 1:
                            revert with 0, 17
                        balance[address(msg.sender)]--
                        mem[(32 * balance[msg.sender]) + 128] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[(32 * balance[msg.sender]) + 132] = this.address
                        mem[(32 * balance[msg.sender]) + 164] = msg.sender
                        mem[(32 * balance[msg.sender]) + 196] = _824
                        require ext_code.size(stor1)
                        call stor1.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _824
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[128 len 32 * balance[msg.sender]] = call.data[calldata.size len 32 * balance[msg.sender]]
                    idx = 0
                    while idx < balance[msg.sender]:
                        mem[0] = idx
                        mem[32] = sha3(address(msg.sender), 4)
                        if idx >= balance[msg.sender]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= balance[msg.sender]:
                            revert with 0, 50
                        _826 = mem[(32 * idx) + 128]
                        if stor2[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'You do not own one of the tokens'
                        if owner != msg.sender:
                            require balance[address(msg.sender)]
                        if not balance[address(msg.sender)]:
                            revert with 0, 'Run out token'
                        stor2[mem[(32 * idx) + 128]] = 0
                        if balance[address(msg.sender)] < 1:
                            revert with 0, 17
                        if balance[address(msg.sender)] - 1 != stor5[mem[(32 * idx) + 128]]:
                            stor4[address(msg.sender)][stor5[mem[(32 * idx) + 128]]] = stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]
                            stor5[stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]] = stor5[mem[(32 * idx) + 128]]
                        stor5[mem[(32 * idx) + 128]] = 0
                        stor4[address(msg.sender)][stor3[address(msg.sender)] - 1] = 0
                        mem[0] = msg.sender
                        mem[32] = 3
                        if balance[address(msg.sender)] < 1:
                            revert with 0, 17
                        balance[address(msg.sender)]--
                        mem[(32 * balance[msg.sender]) + 128] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[(32 * balance[msg.sender]) + 132] = this.address
                        mem[(32 * balance[msg.sender]) + 164] = msg.sender
                        mem[(32 * balance[msg.sender]) + 196] = _826
                        require ext_code.size(stor1)
                        call stor1.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _826
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    else:
        require balance[address(msg.sender)]
        if not balance[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have any trainer enlisted'
        if ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                require msg.sender == stor2[cd[((32 * idx) + cd[4] + 36)]]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if owner != msg.sender:
                    require balance[address(msg.sender)]
                if not balance[address(msg.sender)]:
                    revert with 0, 'Run out token'
                stor2[cd[((32 * idx) + cd[4] + 36)]] = 0
                if balance[address(msg.sender)] < 1:
                    revert with 0, 17
                if balance[address(msg.sender)] - 1 != stor5[cd[((32 * idx) + cd[4] + 36)]]:
                    stor4[address(msg.sender)][stor5[cd[((32 * idx) + cd[4] + 36)]]] = stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]
                    stor5[stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]] = stor5[cd[((32 * idx) + cd[4] + 36)]]
                stor5[cd[((32 * idx) + cd[4] + 36)]] = 0
                stor4[address(msg.sender)][stor3[address(msg.sender)] - 1] = 0
                mem[0] = msg.sender
                mem[32] = 3
                if balance[address(msg.sender)] < 1:
                    revert with 0, 17
                balance[address(msg.sender)]--
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[100] = this.address
                mem[132] = msg.sender
                mem[164] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor1)
                call stor1.0x42842e0e with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if not balance[msg.sender]:
                idx = 0
                while idx < balance[msg.sender]:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _434 = mem[(32 * idx) + 128]
                    if stor2[mem[(32 * idx) + 128]] != msg.sender:
                        revert with 0, 'You do not own one of the tokens'
                    if owner != msg.sender:
                        require balance[address(msg.sender)]
                    if not balance[address(msg.sender)]:
                        revert with 0, 'Run out token'
                    stor2[mem[(32 * idx) + 128]] = 0
                    if balance[address(msg.sender)] < 1:
                        revert with 0, 17
                    if balance[address(msg.sender)] - 1 != stor5[mem[(32 * idx) + 128]]:
                        stor4[address(msg.sender)][stor5[mem[(32 * idx) + 128]]] = stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]
                        stor5[stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]] = stor5[mem[(32 * idx) + 128]]
                    stor5[mem[(32 * idx) + 128]] = 0
                    stor4[address(msg.sender)][stor3[address(msg.sender)] - 1] = 0
                    mem[0] = msg.sender
                    mem[32] = 3
                    if balance[address(msg.sender)] < 1:
                        revert with 0, 17
                    balance[address(msg.sender)]--
                    mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[100] = this.address
                    mem[132] = msg.sender
                    mem[164] = _434
                    require ext_code.size(stor1)
                    call stor1.0x42842e0e with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _434
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if balance[msg.sender] > test266151307():
                    revert with 0, 65
                if not balance[msg.sender]:
                    idx = 0
                    while idx < balance[msg.sender]:
                        mem[0] = idx
                        mem[32] = sha3(address(msg.sender), 4)
                        if idx >= balance[msg.sender]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= balance[msg.sender]:
                            revert with 0, 50
                        _828 = mem[(32 * idx) + 128]
                        if stor2[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'You do not own one of the tokens'
                        if owner != msg.sender:
                            require balance[address(msg.sender)]
                        if not balance[address(msg.sender)]:
                            revert with 0, 'Run out token'
                        stor2[mem[(32 * idx) + 128]] = 0
                        if balance[address(msg.sender)] < 1:
                            revert with 0, 17
                        if balance[address(msg.sender)] - 1 != stor5[mem[(32 * idx) + 128]]:
                            stor4[address(msg.sender)][stor5[mem[(32 * idx) + 128]]] = stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]
                            stor5[stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]] = stor5[mem[(32 * idx) + 128]]
                        stor5[mem[(32 * idx) + 128]] = 0
                        stor4[address(msg.sender)][stor3[address(msg.sender)] - 1] = 0
                        mem[0] = msg.sender
                        mem[32] = 3
                        if balance[address(msg.sender)] < 1:
                            revert with 0, 17
                        balance[address(msg.sender)]--
                        mem[(32 * balance[msg.sender]) + 128] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[(32 * balance[msg.sender]) + 132] = this.address
                        mem[(32 * balance[msg.sender]) + 164] = msg.sender
                        mem[(32 * balance[msg.sender]) + 196] = _828
                        require ext_code.size(stor1)
                        call stor1.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _828
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[128 len 32 * balance[msg.sender]] = call.data[calldata.size len 32 * balance[msg.sender]]
                    idx = 0
                    while idx < balance[msg.sender]:
                        mem[0] = idx
                        mem[32] = sha3(address(msg.sender), 4)
                        if idx >= balance[msg.sender]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= balance[msg.sender]:
                            revert with 0, 50
                        _830 = mem[(32 * idx) + 128]
                        if stor2[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'You do not own one of the tokens'
                        if owner != msg.sender:
                            require balance[address(msg.sender)]
                        if not balance[address(msg.sender)]:
                            revert with 0, 'Run out token'
                        stor2[mem[(32 * idx) + 128]] = 0
                        if balance[address(msg.sender)] < 1:
                            revert with 0, 17
                        if balance[address(msg.sender)] - 1 != stor5[mem[(32 * idx) + 128]]:
                            stor4[address(msg.sender)][stor5[mem[(32 * idx) + 128]]] = stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]
                            stor5[stor4[address(msg.sender)][stor3[address(msg.sender)] - 1]] = stor5[mem[(32 * idx) + 128]]
                        stor5[mem[(32 * idx) + 128]] = 0
                        stor4[address(msg.sender)][stor3[address(msg.sender)] - 1] = 0
                        mem[0] = msg.sender
                        mem[32] = 3
                        if balance[address(msg.sender)] < 1:
                            revert with 0, 17
                        balance[address(msg.sender)]--
                        mem[(32 * balance[msg.sender]) + 128] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[(32 * balance[msg.sender]) + 132] = this.address
                        mem[(32 * balance[msg.sender]) + 164] = msg.sender
                        mem[(32 * balance[msg.sender]) + 196] = _830
                        require ext_code.size(stor1)
                        call stor1.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _830
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
}

function sub_f86ca6ca(?) payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == owner:
        mem[0] = msg.sender
        mem[32] = 3
        if not balance[msg.sender]:
            if msg.sender == owner:
                _6 = mem[96]
                idx = 0
                s = 0
                while idx < _6:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _281 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _281
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _324 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_324] == mem[_324 + 31 len 1]
                        if mem[_324 + 31 len 1] != 4:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _281
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _340 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_340] == mem[_340 + 31 len 1]
                        if mem[_340 + 31 len 1] != 4:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                    mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _281
                    require ext_code.size(stor1)
                    call stor1.0x7ed75068 with:
                         gas gas_remaining wei
                        args _281
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 1
                    continue 
            else:
                mem[0] = msg.sender
                mem[32] = 3
                require balance[address(msg.sender)]
                _15 = mem[96]
                idx = 0
                s = 0
                while idx < _15:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _284 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _284
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _326 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_326] == mem[_326 + 31 len 1]
                        if mem[_326 + 31 len 1] != 4:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _284
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _341 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_341] == mem[_341 + 31 len 1]
                        if mem[_341 + 31 len 1] != 4:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                    mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _284
                    require ext_code.size(stor1)
                    call stor1.0x7ed75068 with:
                         gas gas_remaining wei
                        args _284
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 1
                    continue 
        else:
            if balance[msg.sender] > test266151307():
                revert with 0, 65
            mem[96] = balance[msg.sender]
            mem[64] = (32 * balance[msg.sender]) + 128
            if not balance[msg.sender]:
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _525 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _525
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _596 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_596] == mem[_596 + 31 len 1]
                            if mem[_596 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _525
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _612 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_612] == mem[_612 + 31 len 1]
                            if mem[_612 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _525
                        require ext_code.size(stor1)
                        call stor1.0x7ed75068 with:
                             gas gas_remaining wei
                            args _525
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _528 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _528
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_598] == mem[_598 + 31 len 1]
                            if mem[_598 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _528
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _613 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_613] == mem[_613 + 31 len 1]
                            if mem[_613 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _528
                        require ext_code.size(stor1)
                        call stor1.0x7ed75068 with:
                             gas gas_remaining wei
                            args _528
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
            else:
                mem[128 len 32 * balance[msg.sender]] = call.data[calldata.size len 32 * balance[msg.sender]]
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _531 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _531
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_600] == mem[_600 + 31 len 1]
                            if mem[_600 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _531
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _614 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_614] == mem[_614 + 31 len 1]
                            if mem[_614 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _531
                        require ext_code.size(stor1)
                        call stor1.0x7ed75068 with:
                             gas gas_remaining wei
                            args _531
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _534 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _534
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _602 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_602] == mem[_602 + 31 len 1]
                            if mem[_602 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _534
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _615 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_615] == mem[_615 + 31 len 1]
                            if mem[_615 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _534
                        require ext_code.size(stor1)
                        call stor1.0x7ed75068 with:
                             gas gas_remaining wei
                            args _534
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
    else:
        require balance[address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = 3
        if not balance[msg.sender]:
            if msg.sender == owner:
                _16 = mem[96]
                idx = 0
                s = 0
                while idx < _16:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _287 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _287
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _332 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_332] == mem[_332 + 31 len 1]
                        if mem[_332 + 31 len 1] != 4:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _287
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _348 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_348] == mem[_348 + 31 len 1]
                        if mem[_348 + 31 len 1] != 4:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                    mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _287
                    require ext_code.size(stor1)
                    call stor1.0x7ed75068 with:
                         gas gas_remaining wei
                        args _287
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 1
                    continue 
            else:
                mem[0] = msg.sender
                mem[32] = 3
                require balance[address(msg.sender)]
                _32 = mem[96]
                idx = 0
                s = 0
                while idx < _32:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _290 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _290
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _334 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_334] == mem[_334 + 31 len 1]
                        if mem[_334 + 31 len 1] != 4:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _290
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _349 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_349] == mem[_349 + 31 len 1]
                        if mem[_349 + 31 len 1] != 4:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                    mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _290
                    require ext_code.size(stor1)
                    call stor1.0x7ed75068 with:
                         gas gas_remaining wei
                        args _290
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 1
                    continue 
        else:
            if balance[msg.sender] > test266151307():
                revert with 0, 65
            mem[96] = balance[msg.sender]
            mem[64] = (32 * balance[msg.sender]) + 128
            if not balance[msg.sender]:
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _537 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _537
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _604 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_604] == mem[_604 + 31 len 1]
                            if mem[_604 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _537
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _616 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_616] == mem[_616 + 31 len 1]
                            if mem[_616 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _537
                        require ext_code.size(stor1)
                        call stor1.0x7ed75068 with:
                             gas gas_remaining wei
                            args _537
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _540 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _540
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _606 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_606] == mem[_606 + 31 len 1]
                            if mem[_606 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _540
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _617 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_617] == mem[_617 + 31 len 1]
                            if mem[_617 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _540
                        require ext_code.size(stor1)
                        call stor1.0x7ed75068 with:
                             gas gas_remaining wei
                            args _540
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
            else:
                mem[128 len 32 * balance[msg.sender]] = call.data[calldata.size len 32 * balance[msg.sender]]
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _543 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _543
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _608 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_608] == mem[_608 + 31 len 1]
                            if mem[_608 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _543
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _618 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_618] == mem[_618 + 31 len 1]
                            if mem[_618 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _543
                        require ext_code.size(stor1)
                        call stor1.0x7ed75068 with:
                             gas gas_remaining wei
                            args _543
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _546 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _546
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _610 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_610] == mem[_610 + 31 len 1]
                            if mem[_610 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _546
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _619 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_619] == mem[_619 + 31 len 1]
                            if mem[_619 + 31 len 1] != 4:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                        mem[mem[64]] = 0x7ed7506800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _546
                        require ext_code.size(stor1)
                        call stor1.0x7ed75068 with:
                             gas gas_remaining wei
                            args _546
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

function sub_85d47637(?) payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == owner:
        mem[0] = msg.sender
        mem[32] = 3
        if not balance[msg.sender]:
            if msg.sender == owner:
                _6 = mem[96]
                idx = 0
                while idx < _6:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _256 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _292 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_292] == mem[_292 + 31 len 1]
                        if mem[_292 + 31 len 1] == 3:
                            mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _256
                            require ext_code.size(stor1)
                            call stor1.0x6d3ff596 with:
                                 gas gas_remaining wei
                                args _256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _308 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_308] == mem[_308 + 31 len 1]
                        if mem[_308 + 31 len 1] == 3:
                            mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _256
                            require ext_code.size(stor1)
                            call stor1.0x6d3ff596 with:
                                 gas gas_remaining wei
                                args _256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[0] = msg.sender
                mem[32] = 3
                require balance[address(msg.sender)]
                _15 = mem[96]
                idx = 0
                while idx < _15:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _258 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _258
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _294 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_294] == mem[_294 + 31 len 1]
                        if mem[_294 + 31 len 1] == 3:
                            mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _258
                            require ext_code.size(stor1)
                            call stor1.0x6d3ff596 with:
                                 gas gas_remaining wei
                                args _258
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _258
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _309 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_309] == mem[_309 + 31 len 1]
                        if mem[_309 + 31 len 1] == 3:
                            mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _258
                            require ext_code.size(stor1)
                            call stor1.0x6d3ff596 with:
                                 gas gas_remaining wei
                                args _258
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if balance[msg.sender] > test266151307():
                revert with 0, 65
            mem[96] = balance[msg.sender]
            mem[64] = (32 * balance[msg.sender]) + 128
            if not balance[msg.sender]:
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _476 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _476
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _532 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_532] == mem[_532 + 31 len 1]
                            if mem[_532 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _476
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _476
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _476
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _548 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_548] == mem[_548 + 31 len 1]
                            if mem[_548 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _476
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _476
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _478 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _478
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _534 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_534] == mem[_534 + 31 len 1]
                            if mem[_534 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _478
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _478
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _478
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _549 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_549] == mem[_549 + 31 len 1]
                            if mem[_549 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _478
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _478
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                mem[128 len 32 * balance[msg.sender]] = call.data[calldata.size len 32 * balance[msg.sender]]
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _480 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _480
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _536 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_536] == mem[_536 + 31 len 1]
                            if mem[_536 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _480
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _480
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _480
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _550 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_550] == mem[_550 + 31 len 1]
                            if mem[_550 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _480
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _480
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _482 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _482
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _538 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_538] == mem[_538 + 31 len 1]
                            if mem[_538 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _482
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _482
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _482
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _551 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_551] == mem[_551 + 31 len 1]
                            if mem[_551 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _482
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _482
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    else:
        require balance[address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = 3
        if not balance[msg.sender]:
            if msg.sender == owner:
                _16 = mem[96]
                idx = 0
                while idx < _16:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _260 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _260
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _300 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_300] == mem[_300 + 31 len 1]
                        if mem[_300 + 31 len 1] == 3:
                            mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _260
                            require ext_code.size(stor1)
                            call stor1.0x6d3ff596 with:
                                 gas gas_remaining wei
                                args _260
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _260
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _314 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_314] == mem[_314 + 31 len 1]
                        if mem[_314 + 31 len 1] == 3:
                            mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _260
                            require ext_code.size(stor1)
                            call stor1.0x6d3ff596 with:
                                 gas gas_remaining wei
                                args _260
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[0] = msg.sender
                mem[32] = 3
                require balance[address(msg.sender)]
                _30 = mem[96]
                idx = 0
                while idx < _30:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _262 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _262
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _302 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_302] == mem[_302 + 31 len 1]
                        if mem[_302 + 31 len 1] == 3:
                            mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _262
                            require ext_code.size(stor1)
                            call stor1.0x6d3ff596 with:
                                 gas gas_remaining wei
                                args _262
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _262
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _315 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_315] == mem[_315 + 31 len 1]
                        if mem[_315 + 31 len 1] == 3:
                            mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _262
                            require ext_code.size(stor1)
                            call stor1.0x6d3ff596 with:
                                 gas gas_remaining wei
                                args _262
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if balance[msg.sender] > test266151307():
                revert with 0, 65
            mem[96] = balance[msg.sender]
            mem[64] = (32 * balance[msg.sender]) + 128
            if not balance[msg.sender]:
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _484 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _484
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _540 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_540] == mem[_540 + 31 len 1]
                            if mem[_540 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _484
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _484
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _484
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _552 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_552] == mem[_552 + 31 len 1]
                            if mem[_552 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _484
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _484
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _486 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _486
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _542 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_542] == mem[_542 + 31 len 1]
                            if mem[_542 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _486
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _486
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _486
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _553 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_553] == mem[_553 + 31 len 1]
                            if mem[_553 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _486
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _486
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                mem[128 len 32 * balance[msg.sender]] = call.data[calldata.size len 32 * balance[msg.sender]]
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _488 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _488
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _544 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_544] == mem[_544 + 31 len 1]
                            if mem[_544 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _488
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _488
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _488
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _554 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_554] == mem[_554 + 31 len 1]
                            if mem[_554 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _488
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _488
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _490 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _490
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _546 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_546] == mem[_546 + 31 len 1]
                            if mem[_546 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _490
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _490
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _490
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _555 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_555] == mem[_555 + 31 len 1]
                            if mem[_555 + 31 len 1] == 3:
                                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _490
                                require ext_code.size(stor1)
                                call stor1.0x6d3ff596 with:
                                     gas gas_remaining wei
                                    args _490
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
}

function sub_a2fea129(?) payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == owner:
        mem[0] = msg.sender
        mem[32] = 3
        if not balance[msg.sender]:
            if msg.sender == owner:
                _6 = mem[96]
                idx = 0
                s = 0
                while idx < _6:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _377 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _377
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _420 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_420] == mem[_420 + 31 len 1]
                        if mem[_420 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if 0 >= stor9.length:
                            revert with 0, 50
                        mem[0] = 9
                        _525 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_525 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_525 + 36] = _377
                        mem[_525 + 68] = address(stor9.field_0)
                        mem[_525 + 100] = 96
                        mem[_525 + 132] = mem[_525]
                        s = 0
                        t = _525 + 32
                        u = _525 + 164
                        while s < mem[_525]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _525 + (32 * mem[_525]) + -mem[64] + 160]
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _377
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _436 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_436] == mem[_436 + 31 len 1]
                        if mem[_436 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if 0 >= stor9.length:
                            revert with 0, 50
                        mem[0] = 9
                        _549 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_549 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_549 + 36] = _377
                        mem[_549 + 68] = address(stor9.field_0)
                        mem[_549 + 100] = 96
                        mem[_549 + 132] = mem[_549]
                        s = 0
                        t = _549 + 32
                        u = _549 + 164
                        while s < mem[_549]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _549 + (32 * mem[_549]) + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 1
                    continue 
            else:
                mem[0] = msg.sender
                mem[32] = 3
                require balance[address(msg.sender)]
                _15 = mem[96]
                idx = 0
                s = 0
                while idx < _15:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _380 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _380
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _422 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_422] == mem[_422 + 31 len 1]
                        if mem[_422 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if 0 >= stor9.length:
                            revert with 0, 50
                        mem[0] = 9
                        _528 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_528 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_528 + 36] = _380
                        mem[_528 + 68] = address(stor9.field_0)
                        mem[_528 + 100] = 96
                        mem[_528 + 132] = mem[_528]
                        s = 0
                        t = _528 + 32
                        u = _528 + 164
                        while s < mem[_528]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _528 + (32 * mem[_528]) + -mem[64] + 160]
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _380
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _437 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_437] == mem[_437 + 31 len 1]
                        if mem[_437 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if 0 >= stor9.length:
                            revert with 0, 50
                        mem[0] = 9
                        _552 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_552 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_552 + 36] = _380
                        mem[_552 + 68] = address(stor9.field_0)
                        mem[_552 + 100] = 96
                        mem[_552 + 132] = mem[_552]
                        s = 0
                        t = _552 + 32
                        u = _552 + 164
                        while s < mem[_552]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _552 + (32 * mem[_552]) + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 1
                    continue 
        else:
            if balance[msg.sender] > test266151307():
                revert with 0, 65
            mem[96] = balance[msg.sender]
            mem[64] = (32 * balance[msg.sender]) + 128
            if not balance[msg.sender]:
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _725 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _725
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _804 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_804] == mem[_804 + 31 len 1]
                            if mem[_804 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _845 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_845 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_845 + 36] = _725
                            mem[_845 + 68] = address(stor9.field_0)
                            mem[_845 + 100] = 96
                            mem[_845 + 132] = mem[_845]
                            s = 0
                            t = _845 + 32
                            u = _845 + 164
                            while s < mem[_845]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _845 + (32 * mem[_845]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _725
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _820 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_820] == mem[_820 + 31 len 1]
                            if mem[_820 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _869 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_869 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_869 + 36] = _725
                            mem[_869 + 68] = address(stor9.field_0)
                            mem[_869 + 100] = 96
                            mem[_869 + 132] = mem[_869]
                            s = 0
                            t = _869 + 32
                            u = _869 + 164
                            while s < mem[_869]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _869 + (32 * mem[_869]) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _728 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _728
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _806 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_806] == mem[_806 + 31 len 1]
                            if mem[_806 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _848 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_848 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_848 + 36] = _728
                            mem[_848 + 68] = address(stor9.field_0)
                            mem[_848 + 100] = 96
                            mem[_848 + 132] = mem[_848]
                            s = 0
                            t = _848 + 32
                            u = _848 + 164
                            while s < mem[_848]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _848 + (32 * mem[_848]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _728
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _821 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_821] == mem[_821 + 31 len 1]
                            if mem[_821 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _872 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_872 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_872 + 36] = _728
                            mem[_872 + 68] = address(stor9.field_0)
                            mem[_872 + 100] = 96
                            mem[_872 + 132] = mem[_872]
                            s = 0
                            t = _872 + 32
                            u = _872 + 164
                            while s < mem[_872]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _872 + (32 * mem[_872]) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
            else:
                mem[128 len 32 * balance[msg.sender]] = call.data[calldata.size len 32 * balance[msg.sender]]
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _731 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _731
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _808 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_808] == mem[_808 + 31 len 1]
                            if mem[_808 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _851 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_851 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_851 + 36] = _731
                            mem[_851 + 68] = address(stor9.field_0)
                            mem[_851 + 100] = 96
                            mem[_851 + 132] = mem[_851]
                            s = 0
                            t = _851 + 32
                            u = _851 + 164
                            while s < mem[_851]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _851 + (32 * mem[_851]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _731
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _822 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_822] == mem[_822 + 31 len 1]
                            if mem[_822 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _875 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_875 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_875 + 36] = _731
                            mem[_875 + 68] = address(stor9.field_0)
                            mem[_875 + 100] = 96
                            mem[_875 + 132] = mem[_875]
                            s = 0
                            t = _875 + 32
                            u = _875 + 164
                            while s < mem[_875]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _875 + (32 * mem[_875]) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _734 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _734
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _810 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_810] == mem[_810 + 31 len 1]
                            if mem[_810 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _854 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_854 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_854 + 36] = _734
                            mem[_854 + 68] = address(stor9.field_0)
                            mem[_854 + 100] = 96
                            mem[_854 + 132] = mem[_854]
                            s = 0
                            t = _854 + 32
                            u = _854 + 164
                            while s < mem[_854]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _854 + (32 * mem[_854]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _734
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _823 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_823] == mem[_823 + 31 len 1]
                            if mem[_823 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _878 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_878 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_878 + 36] = _734
                            mem[_878 + 68] = address(stor9.field_0)
                            mem[_878 + 100] = 96
                            mem[_878 + 132] = mem[_878]
                            s = 0
                            t = _878 + 32
                            u = _878 + 164
                            while s < mem[_878]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _878 + (32 * mem[_878]) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
    else:
        require balance[address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = 3
        if not balance[msg.sender]:
            if msg.sender == owner:
                _16 = mem[96]
                idx = 0
                s = 0
                while idx < _16:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _383 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _383
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _428 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_428] == mem[_428 + 31 len 1]
                        if mem[_428 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if 0 >= stor9.length:
                            revert with 0, 50
                        mem[0] = 9
                        _537 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_537 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_537 + 36] = _383
                        mem[_537 + 68] = address(stor9.field_0)
                        mem[_537 + 100] = 96
                        mem[_537 + 132] = mem[_537]
                        s = 0
                        t = _537 + 32
                        u = _537 + 164
                        while s < mem[_537]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _537 + (32 * mem[_537]) + -mem[64] + 160]
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _383
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _444 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_444] == mem[_444 + 31 len 1]
                        if mem[_444 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if 0 >= stor9.length:
                            revert with 0, 50
                        mem[0] = 9
                        _561 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_561 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_561 + 36] = _383
                        mem[_561 + 68] = address(stor9.field_0)
                        mem[_561 + 100] = 96
                        mem[_561 + 132] = mem[_561]
                        s = 0
                        t = _561 + 32
                        u = _561 + 164
                        while s < mem[_561]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _561 + (32 * mem[_561]) + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 1
                    continue 
            else:
                mem[0] = msg.sender
                mem[32] = 3
                require balance[address(msg.sender)]
                _32 = mem[96]
                idx = 0
                s = 0
                while idx < _32:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _386 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _386
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _430 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_430] == mem[_430 + 31 len 1]
                        if mem[_430 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if 0 >= stor9.length:
                            revert with 0, 50
                        mem[0] = 9
                        _540 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_540 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_540 + 36] = _386
                        mem[_540 + 68] = address(stor9.field_0)
                        mem[_540 + 100] = 96
                        mem[_540 + 132] = mem[_540]
                        s = 0
                        t = _540 + 32
                        u = _540 + 164
                        while s < mem[_540]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _540 + (32 * mem[_540]) + -mem[64] + 160]
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _386
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _445 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_445] == mem[_445 + 31 len 1]
                        if mem[_445 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if 0 >= stor9.length:
                            revert with 0, 50
                        mem[0] = 9
                        _564 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_564 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_564 + 36] = _386
                        mem[_564 + 68] = address(stor9.field_0)
                        mem[_564 + 100] = 96
                        mem[_564 + 132] = mem[_564]
                        s = 0
                        t = _564 + 32
                        u = _564 + 164
                        while s < mem[_564]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _564 + (32 * mem[_564]) + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 1
                    continue 
        else:
            if balance[msg.sender] > test266151307():
                revert with 0, 65
            mem[96] = balance[msg.sender]
            mem[64] = (32 * balance[msg.sender]) + 128
            if not balance[msg.sender]:
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _737 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _737
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _812 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_812] == mem[_812 + 31 len 1]
                            if mem[_812 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _857 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_857 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_857 + 36] = _737
                            mem[_857 + 68] = address(stor9.field_0)
                            mem[_857 + 100] = 96
                            mem[_857 + 132] = mem[_857]
                            s = 0
                            t = _857 + 32
                            u = _857 + 164
                            while s < mem[_857]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _857 + (32 * mem[_857]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _737
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _824 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_824] == mem[_824 + 31 len 1]
                            if mem[_824 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _881 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_881 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_881 + 36] = _737
                            mem[_881 + 68] = address(stor9.field_0)
                            mem[_881 + 100] = 96
                            mem[_881 + 132] = mem[_881]
                            s = 0
                            t = _881 + 32
                            u = _881 + 164
                            while s < mem[_881]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _881 + (32 * mem[_881]) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _740 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _740
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _814 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_814] == mem[_814 + 31 len 1]
                            if mem[_814 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _860 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_860 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_860 + 36] = _740
                            mem[_860 + 68] = address(stor9.field_0)
                            mem[_860 + 100] = 96
                            mem[_860 + 132] = mem[_860]
                            s = 0
                            t = _860 + 32
                            u = _860 + 164
                            while s < mem[_860]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _860 + (32 * mem[_860]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _740
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _825 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_825] == mem[_825 + 31 len 1]
                            if mem[_825 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _884 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_884 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_884 + 36] = _740
                            mem[_884 + 68] = address(stor9.field_0)
                            mem[_884 + 100] = 96
                            mem[_884 + 132] = mem[_884]
                            s = 0
                            t = _884 + 32
                            u = _884 + 164
                            while s < mem[_884]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _884 + (32 * mem[_884]) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
            else:
                mem[128 len 32 * balance[msg.sender]] = call.data[calldata.size len 32 * balance[msg.sender]]
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _743 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _743
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _816 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_816] == mem[_816 + 31 len 1]
                            if mem[_816 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _863 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_863 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_863 + 36] = _743
                            mem[_863 + 68] = address(stor9.field_0)
                            mem[_863 + 100] = 96
                            mem[_863 + 132] = mem[_863]
                            s = 0
                            t = _863 + 32
                            u = _863 + 164
                            while s < mem[_863]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _863 + (32 * mem[_863]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _743
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _826 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_826] == mem[_826 + 31 len 1]
                            if mem[_826 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _887 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_887 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_887 + 36] = _743
                            mem[_887 + 68] = address(stor9.field_0)
                            mem[_887 + 100] = 96
                            mem[_887 + 132] = mem[_887]
                            s = 0
                            t = _887 + 32
                            u = _887 + 164
                            while s < mem[_887]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _887 + (32 * mem[_887]) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    s = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _746 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _746
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _818 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_818] == mem[_818 + 31 len 1]
                            if mem[_818 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _866 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_866 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_866 + 36] = _746
                            mem[_866 + 68] = address(stor9.field_0)
                            mem[_866 + 100] = 96
                            mem[_866 + 132] = mem[_866]
                            s = 0
                            t = _866 + 32
                            u = _866 + 164
                            while s < mem[_866]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _866 + (32 * mem[_866]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _746
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _827 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_827] == mem[_827 + 31 len 1]
                            if mem[_827 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 0 >= stor9.length:
                                revert with 0, 50
                            mem[0] = 9
                            _890 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_890 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_890 + 36] = _746
                            mem[_890 + 68] = address(stor9.field_0)
                            mem[_890 + 100] = 96
                            mem[_890 + 132] = mem[_890]
                            s = 0
                            t = _890 + 32
                            u = _890 + 164
                            while s < mem[_890]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _890 + (32 * mem[_890]) + -mem[64] + 160]
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

function sub_b9f406d9(?) payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == owner:
        mem[0] = msg.sender
        mem[32] = 3
        if not balance[msg.sender]:
            if msg.sender == owner:
                _6 = mem[96]
                idx = 0
                while idx < _6:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _425 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _425
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _468 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_468] == mem[_468 + 31 len 1]
                        if not mem[_468 + 31 len 1]:
                            mem[0] = _425
                            mem[32] = 8
                            if 12 * 3600 > !stor8[_425]:
                                revert with 0, 17
                            if block.timestamp > stor8[_425] + (12 * 3600):
                                if not stor6.length:
                                    revert with 0, 50
                                mem[0] = 6
                                _621 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_621 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_621 + 36] = _425
                                mem[_621 + 68] = address(stor6.field_0)
                                mem[_621 + 100] = 96
                                mem[_621 + 132] = mem[_621]
                                s = 0
                                t = _621 + 32
                                u = _621 + 164
                                while s < mem[_621]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _621 + (32 * mem[_621]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _425
                                mem[32] = 8
                                stor8[_425] = block.timestamp
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _425
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _484 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_484] == mem[_484 + 31 len 1]
                        if not mem[_484 + 31 len 1]:
                            mem[0] = _425
                            mem[32] = 8
                            if 12 * 3600 > !stor8[_425]:
                                revert with 0, 17
                            if block.timestamp > stor8[_425] + (12 * 3600):
                                if not stor6.length:
                                    revert with 0, 50
                                mem[0] = 6
                                _637 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_637 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_637 + 36] = _425
                                mem[_637 + 68] = address(stor6.field_0)
                                mem[_637 + 100] = 96
                                mem[_637 + 132] = mem[_637]
                                s = 0
                                t = _637 + 32
                                u = _637 + 164
                                while s < mem[_637]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _637 + (32 * mem[_637]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _425
                                mem[32] = 8
                                stor8[_425] = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[0] = msg.sender
                mem[32] = 3
                require balance[address(msg.sender)]
                _15 = mem[96]
                idx = 0
                while idx < _15:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _428 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _428
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _470 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_470] == mem[_470 + 31 len 1]
                        if not mem[_470 + 31 len 1]:
                            mem[0] = _428
                            mem[32] = 8
                            if 12 * 3600 > !stor8[_428]:
                                revert with 0, 17
                            if block.timestamp > stor8[_428] + (12 * 3600):
                                if not stor6.length:
                                    revert with 0, 50
                                mem[0] = 6
                                _624 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_624 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_624 + 36] = _428
                                mem[_624 + 68] = address(stor6.field_0)
                                mem[_624 + 100] = 96
                                mem[_624 + 132] = mem[_624]
                                s = 0
                                t = _624 + 32
                                u = _624 + 164
                                while s < mem[_624]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _624 + (32 * mem[_624]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _428
                                mem[32] = 8
                                stor8[_428] = block.timestamp
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _428
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _485 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_485] == mem[_485 + 31 len 1]
                        if not mem[_485 + 31 len 1]:
                            mem[0] = _428
                            mem[32] = 8
                            if 12 * 3600 > !stor8[_428]:
                                revert with 0, 17
                            if block.timestamp > stor8[_428] + (12 * 3600):
                                if not stor6.length:
                                    revert with 0, 50
                                mem[0] = 6
                                _640 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_640 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_640 + 36] = _428
                                mem[_640 + 68] = address(stor6.field_0)
                                mem[_640 + 100] = 96
                                mem[_640 + 132] = mem[_640]
                                s = 0
                                t = _640 + 32
                                u = _640 + 164
                                while s < mem[_640]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _640 + (32 * mem[_640]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _428
                                mem[32] = 8
                                stor8[_428] = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if balance[msg.sender] > test266151307():
                revert with 0, 65
            mem[96] = balance[msg.sender]
            mem[64] = (32 * balance[msg.sender]) + 128
            if not balance[msg.sender]:
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _821 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _821
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _908 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_908] == mem[_908 + 31 len 1]
                            if not mem[_908 + 31 len 1]:
                                mem[0] = _821
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_821]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_821] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _965 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_965 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_965 + 36] = _821
                                    mem[_965 + 68] = address(stor6.field_0)
                                    mem[_965 + 100] = 96
                                    mem[_965 + 132] = mem[_965]
                                    s = 0
                                    t = _965 + 32
                                    u = _965 + 164
                                    while s < mem[_965]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _965 + (32 * mem[_965]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _821
                                    mem[32] = 8
                                    stor8[_821] = block.timestamp
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _821
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _924 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_924] == mem[_924 + 31 len 1]
                            if not mem[_924 + 31 len 1]:
                                mem[0] = _821
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_821]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_821] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _989 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_989 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_989 + 36] = _821
                                    mem[_989 + 68] = address(stor6.field_0)
                                    mem[_989 + 100] = 96
                                    mem[_989 + 132] = mem[_989]
                                    s = 0
                                    t = _989 + 32
                                    u = _989 + 164
                                    while s < mem[_989]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _989 + (32 * mem[_989]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _821
                                    mem[32] = 8
                                    stor8[_821] = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _824 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _824
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _910 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_910] == mem[_910 + 31 len 1]
                            if not mem[_910 + 31 len 1]:
                                mem[0] = _824
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_824]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_824] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _968 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_968 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_968 + 36] = _824
                                    mem[_968 + 68] = address(stor6.field_0)
                                    mem[_968 + 100] = 96
                                    mem[_968 + 132] = mem[_968]
                                    s = 0
                                    t = _968 + 32
                                    u = _968 + 164
                                    while s < mem[_968]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _968 + (32 * mem[_968]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _824
                                    mem[32] = 8
                                    stor8[_824] = block.timestamp
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _824
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _925 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_925] == mem[_925 + 31 len 1]
                            if not mem[_925 + 31 len 1]:
                                mem[0] = _824
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_824]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_824] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _992 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_992 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_992 + 36] = _824
                                    mem[_992 + 68] = address(stor6.field_0)
                                    mem[_992 + 100] = 96
                                    mem[_992 + 132] = mem[_992]
                                    s = 0
                                    t = _992 + 32
                                    u = _992 + 164
                                    while s < mem[_992]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _992 + (32 * mem[_992]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _824
                                    mem[32] = 8
                                    stor8[_824] = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                mem[128 len 32 * balance[msg.sender]] = call.data[calldata.size len 32 * balance[msg.sender]]
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _827 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _827
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _912 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_912] == mem[_912 + 31 len 1]
                            if not mem[_912 + 31 len 1]:
                                mem[0] = _827
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_827]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_827] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _971 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_971 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_971 + 36] = _827
                                    mem[_971 + 68] = address(stor6.field_0)
                                    mem[_971 + 100] = 96
                                    mem[_971 + 132] = mem[_971]
                                    s = 0
                                    t = _971 + 32
                                    u = _971 + 164
                                    while s < mem[_971]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _971 + (32 * mem[_971]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _827
                                    mem[32] = 8
                                    stor8[_827] = block.timestamp
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _827
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _926 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_926] == mem[_926 + 31 len 1]
                            if not mem[_926 + 31 len 1]:
                                mem[0] = _827
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_827]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_827] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _995 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_995 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_995 + 36] = _827
                                    mem[_995 + 68] = address(stor6.field_0)
                                    mem[_995 + 100] = 96
                                    mem[_995 + 132] = mem[_995]
                                    s = 0
                                    t = _995 + 32
                                    u = _995 + 164
                                    while s < mem[_995]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _995 + (32 * mem[_995]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _827
                                    mem[32] = 8
                                    stor8[_827] = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _830 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _830
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _914 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_914] == mem[_914 + 31 len 1]
                            if not mem[_914 + 31 len 1]:
                                mem[0] = _830
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_830]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_830] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _974 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_974 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_974 + 36] = _830
                                    mem[_974 + 68] = address(stor6.field_0)
                                    mem[_974 + 100] = 96
                                    mem[_974 + 132] = mem[_974]
                                    s = 0
                                    t = _974 + 32
                                    u = _974 + 164
                                    while s < mem[_974]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _974 + (32 * mem[_974]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _830
                                    mem[32] = 8
                                    stor8[_830] = block.timestamp
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _830
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _927 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_927] == mem[_927 + 31 len 1]
                            if not mem[_927 + 31 len 1]:
                                mem[0] = _830
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_830]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_830] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _998 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_998 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_998 + 36] = _830
                                    mem[_998 + 68] = address(stor6.field_0)
                                    mem[_998 + 100] = 96
                                    mem[_998 + 132] = mem[_998]
                                    s = 0
                                    t = _998 + 32
                                    u = _998 + 164
                                    while s < mem[_998]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _998 + (32 * mem[_998]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _830
                                    mem[32] = 8
                                    stor8[_830] = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    else:
        require balance[address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = 3
        if not balance[msg.sender]:
            if msg.sender == owner:
                _16 = mem[96]
                idx = 0
                while idx < _16:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _431 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _431
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _476 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_476] == mem[_476 + 31 len 1]
                        if not mem[_476 + 31 len 1]:
                            mem[0] = _431
                            mem[32] = 8
                            if 12 * 3600 > !stor8[_431]:
                                revert with 0, 17
                            if block.timestamp > stor8[_431] + (12 * 3600):
                                if not stor6.length:
                                    revert with 0, 50
                                mem[0] = 6
                                _629 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_629 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_629 + 36] = _431
                                mem[_629 + 68] = address(stor6.field_0)
                                mem[_629 + 100] = 96
                                mem[_629 + 132] = mem[_629]
                                s = 0
                                t = _629 + 32
                                u = _629 + 164
                                while s < mem[_629]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _629 + (32 * mem[_629]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _431
                                mem[32] = 8
                                stor8[_431] = block.timestamp
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _431
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _492 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_492] == mem[_492 + 31 len 1]
                        if not mem[_492 + 31 len 1]:
                            mem[0] = _431
                            mem[32] = 8
                            if 12 * 3600 > !stor8[_431]:
                                revert with 0, 17
                            if block.timestamp > stor8[_431] + (12 * 3600):
                                if not stor6.length:
                                    revert with 0, 50
                                mem[0] = 6
                                _645 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_645 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_645 + 36] = _431
                                mem[_645 + 68] = address(stor6.field_0)
                                mem[_645 + 100] = 96
                                mem[_645 + 132] = mem[_645]
                                s = 0
                                t = _645 + 32
                                u = _645 + 164
                                while s < mem[_645]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _645 + (32 * mem[_645]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _431
                                mem[32] = 8
                                stor8[_431] = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[0] = msg.sender
                mem[32] = 3
                require balance[address(msg.sender)]
                _32 = mem[96]
                idx = 0
                while idx < _32:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _434 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _434
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _478 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_478] == mem[_478 + 31 len 1]
                        if not mem[_478 + 31 len 1]:
                            mem[0] = _434
                            mem[32] = 8
                            if 12 * 3600 > !stor8[_434]:
                                revert with 0, 17
                            if block.timestamp > stor8[_434] + (12 * 3600):
                                if not stor6.length:
                                    revert with 0, 50
                                mem[0] = 6
                                _632 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_632 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_632 + 36] = _434
                                mem[_632 + 68] = address(stor6.field_0)
                                mem[_632 + 100] = 96
                                mem[_632 + 132] = mem[_632]
                                s = 0
                                t = _632 + 32
                                u = _632 + 164
                                while s < mem[_632]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _632 + (32 * mem[_632]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _434
                                mem[32] = 8
                                stor8[_434] = block.timestamp
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _434
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _493 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_493] == mem[_493 + 31 len 1]
                        if not mem[_493 + 31 len 1]:
                            mem[0] = _434
                            mem[32] = 8
                            if 12 * 3600 > !stor8[_434]:
                                revert with 0, 17
                            if block.timestamp > stor8[_434] + (12 * 3600):
                                if not stor6.length:
                                    revert with 0, 50
                                mem[0] = 6
                                _648 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_648 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_648 + 36] = _434
                                mem[_648 + 68] = address(stor6.field_0)
                                mem[_648 + 100] = 96
                                mem[_648 + 132] = mem[_648]
                                s = 0
                                t = _648 + 32
                                u = _648 + 164
                                while s < mem[_648]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _648 + (32 * mem[_648]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _434
                                mem[32] = 8
                                stor8[_434] = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if balance[msg.sender] > test266151307():
                revert with 0, 65
            mem[96] = balance[msg.sender]
            mem[64] = (32 * balance[msg.sender]) + 128
            if not balance[msg.sender]:
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _833 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _833
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _916 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_916] == mem[_916 + 31 len 1]
                            if not mem[_916 + 31 len 1]:
                                mem[0] = _833
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_833]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_833] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _977 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_977 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_977 + 36] = _833
                                    mem[_977 + 68] = address(stor6.field_0)
                                    mem[_977 + 100] = 96
                                    mem[_977 + 132] = mem[_977]
                                    s = 0
                                    t = _977 + 32
                                    u = _977 + 164
                                    while s < mem[_977]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _977 + (32 * mem[_977]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _833
                                    mem[32] = 8
                                    stor8[_833] = block.timestamp
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _833
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _928 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_928] == mem[_928 + 31 len 1]
                            if not mem[_928 + 31 len 1]:
                                mem[0] = _833
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_833]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_833] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _1001 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1001 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_1001 + 36] = _833
                                    mem[_1001 + 68] = address(stor6.field_0)
                                    mem[_1001 + 100] = 96
                                    mem[_1001 + 132] = mem[_1001]
                                    s = 0
                                    t = _1001 + 32
                                    u = _1001 + 164
                                    while s < mem[_1001]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1001 + (32 * mem[_1001]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _833
                                    mem[32] = 8
                                    stor8[_833] = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _836 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _836
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _918 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_918] == mem[_918 + 31 len 1]
                            if not mem[_918 + 31 len 1]:
                                mem[0] = _836
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_836]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_836] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _980 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_980 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_980 + 36] = _836
                                    mem[_980 + 68] = address(stor6.field_0)
                                    mem[_980 + 100] = 96
                                    mem[_980 + 132] = mem[_980]
                                    s = 0
                                    t = _980 + 32
                                    u = _980 + 164
                                    while s < mem[_980]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _980 + (32 * mem[_980]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _836
                                    mem[32] = 8
                                    stor8[_836] = block.timestamp
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _836
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _929 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_929] == mem[_929 + 31 len 1]
                            if not mem[_929 + 31 len 1]:
                                mem[0] = _836
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_836]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_836] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _1004 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1004 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_1004 + 36] = _836
                                    mem[_1004 + 68] = address(stor6.field_0)
                                    mem[_1004 + 100] = 96
                                    mem[_1004 + 132] = mem[_1004]
                                    s = 0
                                    t = _1004 + 32
                                    u = _1004 + 164
                                    while s < mem[_1004]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1004 + (32 * mem[_1004]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _836
                                    mem[32] = 8
                                    stor8[_836] = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                mem[128 len 32 * balance[msg.sender]] = call.data[calldata.size len 32 * balance[msg.sender]]
                idx = 0
                while idx < balance[msg.sender]:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 4)
                    if idx >= balance[msg.sender]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor4[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if msg.sender == owner:
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _839 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _839
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _920 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_920] == mem[_920 + 31 len 1]
                            if not mem[_920 + 31 len 1]:
                                mem[0] = _839
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_839]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_839] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _983 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_983 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_983 + 36] = _839
                                    mem[_983 + 68] = address(stor6.field_0)
                                    mem[_983 + 100] = 96
                                    mem[_983 + 132] = mem[_983]
                                    s = 0
                                    t = _983 + 32
                                    u = _983 + 164
                                    while s < mem[_983]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _983 + (32 * mem[_983]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _839
                                    mem[32] = 8
                                    stor8[_839] = block.timestamp
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _839
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _930 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_930] == mem[_930 + 31 len 1]
                            if not mem[_930 + 31 len 1]:
                                mem[0] = _839
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_839]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_839] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _1007 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1007 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_1007 + 36] = _839
                                    mem[_1007 + 68] = address(stor6.field_0)
                                    mem[_1007 + 100] = 96
                                    mem[_1007 + 132] = mem[_1007]
                                    s = 0
                                    t = _1007 + 32
                                    u = _1007 + 164
                                    while s < mem[_1007]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1007 + (32 * mem[_1007]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _839
                                    mem[32] = 8
                                    stor8[_839] = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require balance[address(msg.sender)]
                    idx = 0
                    while idx < balance[msg.sender]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _842 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _842
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _922 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_922] == mem[_922 + 31 len 1]
                            if not mem[_922 + 31 len 1]:
                                mem[0] = _842
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_842]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_842] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _986 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_986 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_986 + 36] = _842
                                    mem[_986 + 68] = address(stor6.field_0)
                                    mem[_986 + 100] = 96
                                    mem[_986 + 132] = mem[_986]
                                    s = 0
                                    t = _986 + 32
                                    u = _986 + 164
                                    while s < mem[_986]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _986 + (32 * mem[_986]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _842
                                    mem[32] = 8
                                    stor8[_842] = block.timestamp
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _842
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _931 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_931] == mem[_931 + 31 len 1]
                            if not mem[_931 + 31 len 1]:
                                mem[0] = _842
                                mem[32] = 8
                                if 12 * 3600 > !stor8[_842]:
                                    revert with 0, 17
                                if block.timestamp > stor8[_842] + (12 * 3600):
                                    if not stor6.length:
                                        revert with 0, 50
                                    mem[0] = 6
                                    _1010 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1010 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_1010 + 36] = _842
                                    mem[_1010 + 68] = address(stor6.field_0)
                                    mem[_1010 + 100] = 96
                                    mem[_1010 + 132] = mem[_1010]
                                    s = 0
                                    t = _1010 + 32
                                    u = _1010 + 164
                                    while s < mem[_1010]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1010 + (32 * mem[_1010]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _842
                                    mem[32] = 8
                                    stor8[_842] = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    revert with 0, 'No trainer is resting'
}



}
