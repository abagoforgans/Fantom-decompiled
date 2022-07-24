contract main {




// =====================  Runtime code  =====================


#
#  - sub_85d47637(?)
#
address owner;
address stor1;
mapping of address stor2;
mapping of uint256 balance;
mapping of uint256 stor4;
mapping of uint256 stor5;
address sub_509f9991Address;
mapping of uint256 stor7;
address sub_1ad5db32Address;

function sub_1ad5db32(?) {
    return sub_1ad5db32Address
}

function sub_509f9991(?) {
    return sub_509f9991Address
}

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

function sub_5824f626(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    sub_509f9991Address = address(arg1)
}

function sub_619fb3ff(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    sub_1ad5db32Address = address(arg1)
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
    stor7[arg1] = block.timestamp
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
            mem[32] = 2
            if msg.sender == stor2[mem[(32 * idx) + 128]]:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
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
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _130 + (32 * mem[_130]) + -mem[64] + 160]
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _103
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
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
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
        mem[32] = 3
        require balance[address(msg.sender)]
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _106 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            if msg.sender == stor2[mem[(32 * idx) + 128]]:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _106
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
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _131 + (32 * mem[_131]) + -mem[64] + 160]
            else:
                if msg.sender != this.address:
                    revert with 0, 'You do not own one of the tokens'
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor1)
                staticcall stor1.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _106
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_125] == mem[_125 + 31 len 1]
                if mem[_125 + 31 len 1]:
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
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
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
                if not mem[_136 + 31 len 1]:
                    mem[0] = _119
                    mem[32] = 7
                    if 12 * 3600 > !stor7[_119]:
                        revert with 0, 17
                    if block.timestamp > stor7[_119] + (12 * 3600):
                        _150 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_150 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                        mem[_150 + 36] = _119
                        mem[_150 + 68] = sub_509f9991Address
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
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = _119
                        mem[32] = 7
                        stor7[_119] = block.timestamp
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
                if not mem[_140 + 31 len 1]:
                    mem[0] = _119
                    mem[32] = 7
                    if 12 * 3600 > !stor7[_119]:
                        revert with 0, 17
                    if block.timestamp > stor7[_119] + (12 * 3600):
                        _152 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_152 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                        mem[_152 + 36] = _119
                        mem[_152 + 68] = sub_509f9991Address
                        mem[_152 + 100] = 96
                        mem[_152 + 132] = mem[_152]
                        s = 0
                        t = _152 + 32
                        u = _152 + 164
                        while s < mem[_152]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _152 + (32 * mem[_152]) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = _119
                        mem[32] = 7
                        stor7[_119] = block.timestamp
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
                if not mem[_138 + 31 len 1]:
                    mem[0] = _122
                    mem[32] = 7
                    if 12 * 3600 > !stor7[_122]:
                        revert with 0, 17
                    if block.timestamp > stor7[_122] + (12 * 3600):
                        _151 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_151 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                        mem[_151 + 36] = _122
                        mem[_151 + 68] = sub_509f9991Address
                        mem[_151 + 100] = 96
                        mem[_151 + 132] = mem[_151]
                        s = 0
                        t = _151 + 32
                        u = _151 + 164
                        while s < mem[_151]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _151 + (32 * mem[_151]) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = _122
                        mem[32] = 7
                        stor7[_122] = block.timestamp
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
                if not mem[_141 + 31 len 1]:
                    mem[0] = _122
                    mem[32] = 7
                    if 12 * 3600 > !stor7[_122]:
                        revert with 0, 17
                    if block.timestamp > stor7[_122] + (12 * 3600):
                        _153 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_153 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                        mem[_153 + 36] = _122
                        mem[_153 + 68] = sub_509f9991Address
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
                        mem[0] = _122
                        mem[32] = 7
                        stor7[_122] = block.timestamp
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
                    _329 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _329
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _372 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_372] == mem[_372 + 31 len 1]
                        if mem[_372 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        _456 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_456 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_456 + 36] = _329
                        mem[_456 + 68] = sub_1ad5db32Address
                        mem[_456 + 100] = 96
                        mem[_456 + 132] = mem[_456]
                        s = 0
                        t = _456 + 32
                        u = _456 + 164
                        while s < mem[_456]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _456 + (32 * mem[_456]) + -mem[64] + 160]
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _329
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _388 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_388] == mem[_388 + 31 len 1]
                        if mem[_388 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        _480 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_480 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_480 + 36] = _329
                        mem[_480 + 68] = sub_1ad5db32Address
                        mem[_480 + 100] = 96
                        mem[_480 + 132] = mem[_480]
                        s = 0
                        t = _480 + 32
                        u = _480 + 164
                        while s < mem[_480]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _480 + (32 * mem[_480]) + -mem[64] + 160]
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
                    _332 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _332
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _374 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_374] == mem[_374 + 31 len 1]
                        if mem[_374 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        _457 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_457 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_457 + 36] = _332
                        mem[_457 + 68] = sub_1ad5db32Address
                        mem[_457 + 100] = 96
                        mem[_457 + 132] = mem[_457]
                        s = 0
                        t = _457 + 32
                        u = _457 + 164
                        while s < mem[_457]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _457 + (32 * mem[_457]) + -mem[64] + 160]
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _332
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _389 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_389] == mem[_389 + 31 len 1]
                        if mem[_389 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        _481 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_481 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_481 + 36] = _332
                        mem[_481 + 68] = sub_1ad5db32Address
                        mem[_481 + 100] = 96
                        mem[_481 + 132] = mem[_481]
                        s = 0
                        t = _481 + 32
                        u = _481 + 164
                        while s < mem[_481]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _481 + (32 * mem[_481]) + -mem[64] + 160]
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
                        _629 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _629
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _708 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_708] == mem[_708 + 31 len 1]
                            if mem[_708 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _748 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_748 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_748 + 36] = _629
                            mem[_748 + 68] = sub_1ad5db32Address
                            mem[_748 + 100] = 96
                            mem[_748 + 132] = mem[_748]
                            s = 0
                            t = _748 + 32
                            u = _748 + 164
                            while s < mem[_748]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _748 + (32 * mem[_748]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _629
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _724 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_724] == mem[_724 + 31 len 1]
                            if mem[_724 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _756 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_756 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_756 + 36] = _629
                            mem[_756 + 68] = sub_1ad5db32Address
                            mem[_756 + 100] = 96
                            mem[_756 + 132] = mem[_756]
                            s = 0
                            t = _756 + 32
                            u = _756 + 164
                            while s < mem[_756]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _756 + (32 * mem[_756]) + -mem[64] + 160]
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
                        _632 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _632
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _710 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_710] == mem[_710 + 31 len 1]
                            if mem[_710 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _749 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_749 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_749 + 36] = _632
                            mem[_749 + 68] = sub_1ad5db32Address
                            mem[_749 + 100] = 96
                            mem[_749 + 132] = mem[_749]
                            s = 0
                            t = _749 + 32
                            u = _749 + 164
                            while s < mem[_749]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _749 + (32 * mem[_749]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _632
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _725 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_725] == mem[_725 + 31 len 1]
                            if mem[_725 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _757 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_757 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_757 + 36] = _632
                            mem[_757 + 68] = sub_1ad5db32Address
                            mem[_757 + 100] = 96
                            mem[_757 + 132] = mem[_757]
                            s = 0
                            t = _757 + 32
                            u = _757 + 164
                            while s < mem[_757]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _757 + (32 * mem[_757]) + -mem[64] + 160]
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
                        _635 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _635
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _712 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_712] == mem[_712 + 31 len 1]
                            if mem[_712 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _750 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_750 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_750 + 36] = _635
                            mem[_750 + 68] = sub_1ad5db32Address
                            mem[_750 + 100] = 96
                            mem[_750 + 132] = mem[_750]
                            s = 0
                            t = _750 + 32
                            u = _750 + 164
                            while s < mem[_750]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _750 + (32 * mem[_750]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _635
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _726 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_726] == mem[_726 + 31 len 1]
                            if mem[_726 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _758 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_758 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_758 + 36] = _635
                            mem[_758 + 68] = sub_1ad5db32Address
                            mem[_758 + 100] = 96
                            mem[_758 + 132] = mem[_758]
                            s = 0
                            t = _758 + 32
                            u = _758 + 164
                            while s < mem[_758]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _758 + (32 * mem[_758]) + -mem[64] + 160]
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
                        _638 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _638
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _714 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_714] == mem[_714 + 31 len 1]
                            if mem[_714 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _751 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_751 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_751 + 36] = _638
                            mem[_751 + 68] = sub_1ad5db32Address
                            mem[_751 + 100] = 96
                            mem[_751 + 132] = mem[_751]
                            s = 0
                            t = _751 + 32
                            u = _751 + 164
                            while s < mem[_751]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _751 + (32 * mem[_751]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _638
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _727 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_727] == mem[_727 + 31 len 1]
                            if mem[_727 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _759 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_759 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_759 + 36] = _638
                            mem[_759 + 68] = sub_1ad5db32Address
                            mem[_759 + 100] = 96
                            mem[_759 + 132] = mem[_759]
                            s = 0
                            t = _759 + 32
                            u = _759 + 164
                            while s < mem[_759]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _759 + (32 * mem[_759]) + -mem[64] + 160]
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
                    _335 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _335
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _380 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_380] == mem[_380 + 31 len 1]
                        if mem[_380 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        _468 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_468 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_468 + 36] = _335
                        mem[_468 + 68] = sub_1ad5db32Address
                        mem[_468 + 100] = 96
                        mem[_468 + 132] = mem[_468]
                        s = 0
                        t = _468 + 32
                        u = _468 + 164
                        while s < mem[_468]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _468 + (32 * mem[_468]) + -mem[64] + 160]
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _335
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _396 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_396] == mem[_396 + 31 len 1]
                        if mem[_396 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        _488 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_488 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_488 + 36] = _335
                        mem[_488 + 68] = sub_1ad5db32Address
                        mem[_488 + 100] = 96
                        mem[_488 + 132] = mem[_488]
                        s = 0
                        t = _488 + 32
                        u = _488 + 164
                        while s < mem[_488]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _488 + (32 * mem[_488]) + -mem[64] + 160]
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
                    _338 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 2
                    if msg.sender == stor2[mem[(32 * idx) + 128]]:
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _338
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _382 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_382] == mem[_382 + 31 len 1]
                        if mem[_382 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        _469 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_469 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_469 + 36] = _338
                        mem[_469 + 68] = sub_1ad5db32Address
                        mem[_469 + 100] = 96
                        mem[_469 + 132] = mem[_469]
                        s = 0
                        t = _469 + 32
                        u = _469 + 164
                        while s < mem[_469]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _469 + (32 * mem[_469]) + -mem[64] + 160]
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'You do not own one of the tokens'
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.getStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args _338
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _397 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_397] == mem[_397 + 31 len 1]
                        if mem[_397 + 31 len 1]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        _489 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_489 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                        mem[_489 + 36] = _338
                        mem[_489 + 68] = sub_1ad5db32Address
                        mem[_489 + 100] = 96
                        mem[_489 + 132] = mem[_489]
                        s = 0
                        t = _489 + 32
                        u = _489 + 164
                        while s < mem[_489]:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _489 + (32 * mem[_489]) + -mem[64] + 160]
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
                        _641 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _641
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _716 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_716] == mem[_716 + 31 len 1]
                            if mem[_716 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _752 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_752 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_752 + 36] = _641
                            mem[_752 + 68] = sub_1ad5db32Address
                            mem[_752 + 100] = 96
                            mem[_752 + 132] = mem[_752]
                            s = 0
                            t = _752 + 32
                            u = _752 + 164
                            while s < mem[_752]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _752 + (32 * mem[_752]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _641
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _728 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_728] == mem[_728 + 31 len 1]
                            if mem[_728 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _760 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_760 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_760 + 36] = _641
                            mem[_760 + 68] = sub_1ad5db32Address
                            mem[_760 + 100] = 96
                            mem[_760 + 132] = mem[_760]
                            s = 0
                            t = _760 + 32
                            u = _760 + 164
                            while s < mem[_760]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _760 + (32 * mem[_760]) + -mem[64] + 160]
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
                        _644 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _644
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _718 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_718] == mem[_718 + 31 len 1]
                            if mem[_718 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _753 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_753 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_753 + 36] = _644
                            mem[_753 + 68] = sub_1ad5db32Address
                            mem[_753 + 100] = 96
                            mem[_753 + 132] = mem[_753]
                            s = 0
                            t = _753 + 32
                            u = _753 + 164
                            while s < mem[_753]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _753 + (32 * mem[_753]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _644
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _729 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_729] == mem[_729 + 31 len 1]
                            if mem[_729 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _761 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_761 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_761 + 36] = _644
                            mem[_761 + 68] = sub_1ad5db32Address
                            mem[_761 + 100] = 96
                            mem[_761 + 132] = mem[_761]
                            s = 0
                            t = _761 + 32
                            u = _761 + 164
                            while s < mem[_761]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _761 + (32 * mem[_761]) + -mem[64] + 160]
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
                        _647 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _647
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _720 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_720] == mem[_720 + 31 len 1]
                            if mem[_720 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _754 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_754 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_754 + 36] = _647
                            mem[_754 + 68] = sub_1ad5db32Address
                            mem[_754 + 100] = 96
                            mem[_754 + 132] = mem[_754]
                            s = 0
                            t = _754 + 32
                            u = _754 + 164
                            while s < mem[_754]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _754 + (32 * mem[_754]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _647
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _730 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_730] == mem[_730 + 31 len 1]
                            if mem[_730 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _762 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_762 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_762 + 36] = _647
                            mem[_762 + 68] = sub_1ad5db32Address
                            mem[_762 + 100] = 96
                            mem[_762 + 132] = mem[_762]
                            s = 0
                            t = _762 + 32
                            u = _762 + 164
                            while s < mem[_762]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _762 + (32 * mem[_762]) + -mem[64] + 160]
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
                        _650 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 2
                        if msg.sender == stor2[mem[(32 * idx) + 128]]:
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _650
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _722 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_722] == mem[_722 + 31 len 1]
                            if mem[_722 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _755 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_755 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_755 + 36] = _650
                            mem[_755 + 68] = sub_1ad5db32Address
                            mem[_755 + 100] = 96
                            mem[_755 + 132] = mem[_755]
                            s = 0
                            t = _755 + 32
                            u = _755 + 164
                            while s < mem[_755]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _755 + (32 * mem[_755]) + -mem[64] + 160]
                        else:
                            if msg.sender != this.address:
                                revert with 0, 'You do not own one of the tokens'
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(stor1)
                            staticcall stor1.getStatus(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _650
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _731 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_731] == mem[_731 + 31 len 1]
                            if mem[_731 + 31 len 1]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            _763 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_763 + 32] = 0xcd6516ac00000000000000000000000000000000000000000000000000000000
                            mem[_763 + 36] = _650
                            mem[_763 + 68] = sub_1ad5db32Address
                            mem[_763 + 100] = 96
                            mem[_763 + 132] = mem[_763]
                            s = 0
                            t = _763 + 32
                            u = _763 + 164
                            while s < mem[_763]:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _763 + (32 * mem[_763]) + -mem[64] + 160]
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
                        if not mem[_420 + 31 len 1]:
                            mem[0] = _377
                            mem[32] = 7
                            if 12 * 3600 > !stor7[_377]:
                                revert with 0, 17
                            if block.timestamp > stor7[_377] + (12 * 3600):
                                _568 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_568 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_568 + 36] = _377
                                mem[_568 + 68] = sub_509f9991Address
                                mem[_568 + 100] = 96
                                mem[_568 + 132] = mem[_568]
                                s = 0
                                t = _568 + 32
                                u = _568 + 164
                                while s < mem[_568]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _568 + (32 * mem[_568]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _377
                                mem[32] = 7
                                stor7[_377] = block.timestamp
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
                        if not mem[_436 + 31 len 1]:
                            mem[0] = _377
                            mem[32] = 7
                            if 12 * 3600 > !stor7[_377]:
                                revert with 0, 17
                            if block.timestamp > stor7[_377] + (12 * 3600):
                                _576 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_576 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_576 + 36] = _377
                                mem[_576 + 68] = sub_509f9991Address
                                mem[_576 + 100] = 96
                                mem[_576 + 132] = mem[_576]
                                s = 0
                                t = _576 + 32
                                u = _576 + 164
                                while s < mem[_576]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _576 + (32 * mem[_576]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _377
                                mem[32] = 7
                                stor7[_377] = block.timestamp
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
                        if not mem[_422 + 31 len 1]:
                            mem[0] = _380
                            mem[32] = 7
                            if 12 * 3600 > !stor7[_380]:
                                revert with 0, 17
                            if block.timestamp > stor7[_380] + (12 * 3600):
                                _569 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_569 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_569 + 36] = _380
                                mem[_569 + 68] = sub_509f9991Address
                                mem[_569 + 100] = 96
                                mem[_569 + 132] = mem[_569]
                                s = 0
                                t = _569 + 32
                                u = _569 + 164
                                while s < mem[_569]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _569 + (32 * mem[_569]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _380
                                mem[32] = 7
                                stor7[_380] = block.timestamp
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
                        if not mem[_437 + 31 len 1]:
                            mem[0] = _380
                            mem[32] = 7
                            if 12 * 3600 > !stor7[_380]:
                                revert with 0, 17
                            if block.timestamp > stor7[_380] + (12 * 3600):
                                _577 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_577 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_577 + 36] = _380
                                mem[_577 + 68] = sub_509f9991Address
                                mem[_577 + 100] = 96
                                mem[_577 + 132] = mem[_577]
                                s = 0
                                t = _577 + 32
                                u = _577 + 164
                                while s < mem[_577]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _577 + (32 * mem[_577]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _380
                                mem[32] = 7
                                stor7[_380] = block.timestamp
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
                            _812 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_812] == mem[_812 + 31 len 1]
                            if not mem[_812 + 31 len 1]:
                                mem[0] = _725
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_725]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_725] + (12 * 3600):
                                    _868 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_868 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_868 + 36] = _725
                                    mem[_868 + 68] = sub_509f9991Address
                                    mem[_868 + 100] = 96
                                    mem[_868 + 132] = mem[_868]
                                    s = 0
                                    t = _868 + 32
                                    u = _868 + 164
                                    while s < mem[_868]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _868 + (32 * mem[_868]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _725
                                    mem[32] = 7
                                    stor7[_725] = block.timestamp
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
                            _828 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_828] == mem[_828 + 31 len 1]
                            if not mem[_828 + 31 len 1]:
                                mem[0] = _725
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_725]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_725] + (12 * 3600):
                                    _876 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_876 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_876 + 36] = _725
                                    mem[_876 + 68] = sub_509f9991Address
                                    mem[_876 + 100] = 96
                                    mem[_876 + 132] = mem[_876]
                                    s = 0
                                    t = _876 + 32
                                    u = _876 + 164
                                    while s < mem[_876]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _876 + (32 * mem[_876]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _725
                                    mem[32] = 7
                                    stor7[_725] = block.timestamp
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
                            _814 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_814] == mem[_814 + 31 len 1]
                            if not mem[_814 + 31 len 1]:
                                mem[0] = _728
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_728]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_728] + (12 * 3600):
                                    _869 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_869 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_869 + 36] = _728
                                    mem[_869 + 68] = sub_509f9991Address
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
                                    mem[0] = _728
                                    mem[32] = 7
                                    stor7[_728] = block.timestamp
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
                            _829 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_829] == mem[_829 + 31 len 1]
                            if not mem[_829 + 31 len 1]:
                                mem[0] = _728
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_728]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_728] + (12 * 3600):
                                    _877 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_877 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_877 + 36] = _728
                                    mem[_877 + 68] = sub_509f9991Address
                                    mem[_877 + 100] = 96
                                    mem[_877 + 132] = mem[_877]
                                    s = 0
                                    t = _877 + 32
                                    u = _877 + 164
                                    while s < mem[_877]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _877 + (32 * mem[_877]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _728
                                    mem[32] = 7
                                    stor7[_728] = block.timestamp
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
                            _816 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_816] == mem[_816 + 31 len 1]
                            if not mem[_816 + 31 len 1]:
                                mem[0] = _731
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_731]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_731] + (12 * 3600):
                                    _870 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_870 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_870 + 36] = _731
                                    mem[_870 + 68] = sub_509f9991Address
                                    mem[_870 + 100] = 96
                                    mem[_870 + 132] = mem[_870]
                                    s = 0
                                    t = _870 + 32
                                    u = _870 + 164
                                    while s < mem[_870]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _870 + (32 * mem[_870]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _731
                                    mem[32] = 7
                                    stor7[_731] = block.timestamp
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
                            _830 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_830] == mem[_830 + 31 len 1]
                            if not mem[_830 + 31 len 1]:
                                mem[0] = _731
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_731]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_731] + (12 * 3600):
                                    _878 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_878 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_878 + 36] = _731
                                    mem[_878 + 68] = sub_509f9991Address
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
                                    mem[0] = _731
                                    mem[32] = 7
                                    stor7[_731] = block.timestamp
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
                            _818 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_818] == mem[_818 + 31 len 1]
                            if not mem[_818 + 31 len 1]:
                                mem[0] = _734
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_734]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_734] + (12 * 3600):
                                    _871 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_871 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_871 + 36] = _734
                                    mem[_871 + 68] = sub_509f9991Address
                                    mem[_871 + 100] = 96
                                    mem[_871 + 132] = mem[_871]
                                    s = 0
                                    t = _871 + 32
                                    u = _871 + 164
                                    while s < mem[_871]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _871 + (32 * mem[_871]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _734
                                    mem[32] = 7
                                    stor7[_734] = block.timestamp
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
                            _831 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_831] == mem[_831 + 31 len 1]
                            if not mem[_831 + 31 len 1]:
                                mem[0] = _734
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_734]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_734] + (12 * 3600):
                                    _879 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_879 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_879 + 36] = _734
                                    mem[_879 + 68] = sub_509f9991Address
                                    mem[_879 + 100] = 96
                                    mem[_879 + 132] = mem[_879]
                                    s = 0
                                    t = _879 + 32
                                    u = _879 + 164
                                    while s < mem[_879]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _879 + (32 * mem[_879]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _734
                                    mem[32] = 7
                                    stor7[_734] = block.timestamp
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
                        if not mem[_428 + 31 len 1]:
                            mem[0] = _383
                            mem[32] = 7
                            if 12 * 3600 > !stor7[_383]:
                                revert with 0, 17
                            if block.timestamp > stor7[_383] + (12 * 3600):
                                _572 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_572 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_572 + 36] = _383
                                mem[_572 + 68] = sub_509f9991Address
                                mem[_572 + 100] = 96
                                mem[_572 + 132] = mem[_572]
                                s = 0
                                t = _572 + 32
                                u = _572 + 164
                                while s < mem[_572]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _572 + (32 * mem[_572]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _383
                                mem[32] = 7
                                stor7[_383] = block.timestamp
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
                        if not mem[_444 + 31 len 1]:
                            mem[0] = _383
                            mem[32] = 7
                            if 12 * 3600 > !stor7[_383]:
                                revert with 0, 17
                            if block.timestamp > stor7[_383] + (12 * 3600):
                                _580 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_580 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_580 + 36] = _383
                                mem[_580 + 68] = sub_509f9991Address
                                mem[_580 + 100] = 96
                                mem[_580 + 132] = mem[_580]
                                s = 0
                                t = _580 + 32
                                u = _580 + 164
                                while s < mem[_580]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _580 + (32 * mem[_580]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _383
                                mem[32] = 7
                                stor7[_383] = block.timestamp
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
                        if not mem[_430 + 31 len 1]:
                            mem[0] = _386
                            mem[32] = 7
                            if 12 * 3600 > !stor7[_386]:
                                revert with 0, 17
                            if block.timestamp > stor7[_386] + (12 * 3600):
                                _573 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_573 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_573 + 36] = _386
                                mem[_573 + 68] = sub_509f9991Address
                                mem[_573 + 100] = 96
                                mem[_573 + 132] = mem[_573]
                                s = 0
                                t = _573 + 32
                                u = _573 + 164
                                while s < mem[_573]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _573 + (32 * mem[_573]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _386
                                mem[32] = 7
                                stor7[_386] = block.timestamp
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
                        if not mem[_445 + 31 len 1]:
                            mem[0] = _386
                            mem[32] = 7
                            if 12 * 3600 > !stor7[_386]:
                                revert with 0, 17
                            if block.timestamp > stor7[_386] + (12 * 3600):
                                _581 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_581 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                mem[_581 + 36] = _386
                                mem[_581 + 68] = sub_509f9991Address
                                mem[_581 + 100] = 96
                                mem[_581 + 132] = mem[_581]
                                s = 0
                                t = _581 + 32
                                u = _581 + 164
                                while s < mem[_581]:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _581 + (32 * mem[_581]) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _386
                                mem[32] = 7
                                stor7[_386] = block.timestamp
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
                            _820 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_820] == mem[_820 + 31 len 1]
                            if not mem[_820 + 31 len 1]:
                                mem[0] = _737
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_737]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_737] + (12 * 3600):
                                    _872 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_872 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_872 + 36] = _737
                                    mem[_872 + 68] = sub_509f9991Address
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
                                    mem[0] = _737
                                    mem[32] = 7
                                    stor7[_737] = block.timestamp
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
                            _832 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_832] == mem[_832 + 31 len 1]
                            if not mem[_832 + 31 len 1]:
                                mem[0] = _737
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_737]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_737] + (12 * 3600):
                                    _880 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_880 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_880 + 36] = _737
                                    mem[_880 + 68] = sub_509f9991Address
                                    mem[_880 + 100] = 96
                                    mem[_880 + 132] = mem[_880]
                                    s = 0
                                    t = _880 + 32
                                    u = _880 + 164
                                    while s < mem[_880]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _880 + (32 * mem[_880]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _737
                                    mem[32] = 7
                                    stor7[_737] = block.timestamp
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
                            _822 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_822] == mem[_822 + 31 len 1]
                            if not mem[_822 + 31 len 1]:
                                mem[0] = _740
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_740]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_740] + (12 * 3600):
                                    _873 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_873 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_873 + 36] = _740
                                    mem[_873 + 68] = sub_509f9991Address
                                    mem[_873 + 100] = 96
                                    mem[_873 + 132] = mem[_873]
                                    s = 0
                                    t = _873 + 32
                                    u = _873 + 164
                                    while s < mem[_873]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _873 + (32 * mem[_873]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _740
                                    mem[32] = 7
                                    stor7[_740] = block.timestamp
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
                            _833 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_833] == mem[_833 + 31 len 1]
                            if not mem[_833 + 31 len 1]:
                                mem[0] = _740
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_740]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_740] + (12 * 3600):
                                    _881 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_881 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_881 + 36] = _740
                                    mem[_881 + 68] = sub_509f9991Address
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
                                    mem[0] = _740
                                    mem[32] = 7
                                    stor7[_740] = block.timestamp
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
                            _824 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_824] == mem[_824 + 31 len 1]
                            if not mem[_824 + 31 len 1]:
                                mem[0] = _743
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_743]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_743] + (12 * 3600):
                                    _874 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_874 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_874 + 36] = _743
                                    mem[_874 + 68] = sub_509f9991Address
                                    mem[_874 + 100] = 96
                                    mem[_874 + 132] = mem[_874]
                                    s = 0
                                    t = _874 + 32
                                    u = _874 + 164
                                    while s < mem[_874]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _874 + (32 * mem[_874]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _743
                                    mem[32] = 7
                                    stor7[_743] = block.timestamp
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
                            _834 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_834] == mem[_834 + 31 len 1]
                            if not mem[_834 + 31 len 1]:
                                mem[0] = _743
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_743]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_743] + (12 * 3600):
                                    _882 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_882 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_882 + 36] = _743
                                    mem[_882 + 68] = sub_509f9991Address
                                    mem[_882 + 100] = 96
                                    mem[_882 + 132] = mem[_882]
                                    s = 0
                                    t = _882 + 32
                                    u = _882 + 164
                                    while s < mem[_882]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _882 + (32 * mem[_882]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _743
                                    mem[32] = 7
                                    stor7[_743] = block.timestamp
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
                            _826 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_826] == mem[_826 + 31 len 1]
                            if not mem[_826 + 31 len 1]:
                                mem[0] = _746
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_746]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_746] + (12 * 3600):
                                    _875 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_875 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_875 + 36] = _746
                                    mem[_875 + 68] = sub_509f9991Address
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
                                    mem[0] = _746
                                    mem[32] = 7
                                    stor7[_746] = block.timestamp
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
                            _835 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_835] == mem[_835 + 31 len 1]
                            if not mem[_835 + 31 len 1]:
                                mem[0] = _746
                                mem[32] = 7
                                if 12 * 3600 > !stor7[_746]:
                                    revert with 0, 17
                                if block.timestamp > stor7[_746] + (12 * 3600):
                                    _883 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_883 + 32] = 0x67c5f72000000000000000000000000000000000000000000000000000000000
                                    mem[_883 + 36] = _746
                                    mem[_883 + 68] = sub_509f9991Address
                                    mem[_883 + 100] = 96
                                    mem[_883 + 132] = mem[_883]
                                    s = 0
                                    t = _883 + 32
                                    u = _883 + 164
                                    while s < mem[_883]:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _883 + (32 * mem[_883]) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _746
                                    mem[32] = 7
                                    stor7[_746] = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    revert with 0, 'No trainer is resting'
}



}
