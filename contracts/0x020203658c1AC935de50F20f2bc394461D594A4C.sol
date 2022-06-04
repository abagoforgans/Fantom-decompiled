contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 sub_08a666fa;
uint256 sub_f45c14b3;

function sub_08a666fa(?) {
    return sub_08a666fa
}

function owner() {
    return owner
}

function approvals(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[arg1][arg2])
}

function sub_f45c14b3(?) {
    return sub_f45c14b3
}

function testTrue() {
  stop
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

function sub_770ae74b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != block.number:
        revert with 0, 'error block.number'
    if sub_08a666fa == arg1:
        sub_f45c14b3++
    else:
        sub_08a666fa = arg1
        sub_f45c14b3 = 0
    emit 0x7c011544: sub_f45c14b3
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(owner, eth.balance(this.address));
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a2b52f22(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    if msg.value <= cd[36] * ('cd', 4).length:
        revert with 0, 'need enough eth'
    idx = 0
    s = msg.value
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if eth.balance(cd[((32 * idx) + cd[4] + 36)]) >= cd[36]:
            idx = idx + 1
            s = s
            continue 
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[36] - eth.balance(cd[((32 * idx) + cd[4] + 36)]) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = s - cd[36] + eth.balance(cd[((32 * idx) + cd[4] + 36)])
        continue 
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_24d434f2(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= cd[68] * ('cd', 4).length:
        revert with 0, 'need enough approve'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _18 = mem[_17]
        require mem[_17] == mem[_17]
        if mem[_17] < cd[68]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 68] = cd[68] - _18
            require ext_code.size(address(cd[36]))
            call address(cd[36]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(cd[((32 * idx) + cd[4] + 36)]), cd[68] - _18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_21] == bool(mem[_21])
        idx = idx + 1
        continue 
}

function sub_a5ad6b67(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    if not address(cd[68]):
        revert with 0, 'need router'
    if not address(cd[36]):
        revert with 0, 'need destToken'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _64 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _65 = mem[_64]
        require mem[_64] == mem[_64]
        if mem[_64]:
            if not address(cd[((32 * idx) + cd[4] + 36)]):
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _65
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _65
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _76 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_76] == bool(mem[_76])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _87 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _89 = mem[_87]
                require mem[_87] == mem[_87]
                _94 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_94]
                mem[_94 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                require 1 < mem[_94]
                mem[_94 + 64] = address(cd[36])
                mem[_94 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[_94 + 100] = _89
                mem[_94 + 132] = 1
                mem[_94 + 164] = 160
                mem[_94 + 260] = mem[_94]
                s = 0
                t = _94 + 32
                u = _94 + 292
                while s < mem[_94]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_94 + 196] = msg.sender
                mem[_94 + 228] = block.timestamp
                require ext_code.size(address(cd[68]))
                call address(cd[68]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _94 + (32 * mem[_94]) + -mem[64] + 288]
            else:
                mem[0] = address(cd[68])
                mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 1)
                if stor1[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[68])]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _65
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _65
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _77 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_77] == bool(mem[_77])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _88 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _90 = mem[_88]
                    require mem[_88] == mem[_88]
                    _95 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_95]
                    mem[_95 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                    require 1 < mem[_95]
                    mem[_95 + 64] = address(cd[36])
                    mem[_95 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_95 + 100] = _90
                    mem[_95 + 132] = 1
                    mem[_95 + 164] = 160
                    mem[_95 + 260] = mem[_95]
                    s = 0
                    t = _95 + 32
                    u = _95 + 292
                    while s < mem[_95]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_95 + 196] = msg.sender
                    mem[_95 + 228] = block.timestamp
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _95 + (32 * mem[_95]) + -mem[64] + 288]
                else:
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _72 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_72] == bool(mem[_72])
                    mem[0] = address(cd[68])
                    mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 1)
                    stor1[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[68])] = 1
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _65
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _65
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _92 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_92] == bool(mem[_92])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _104 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _107 = mem[_104]
                    require mem[_104] == mem[_104]
                    _110 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_110]
                    mem[_110 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                    require 1 < mem[_110]
                    mem[_110 + 64] = address(cd[36])
                    mem[_110 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_110 + 100] = _107
                    mem[_110 + 132] = 1
                    mem[_110 + 164] = 160
                    mem[_110 + 260] = mem[_110]
                    s = 0
                    t = _110 + 32
                    u = _110 + 292
                    while s < mem[_110]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_110 + 196] = msg.sender
                    mem[_110 + 228] = block.timestamp
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _110 + (32 * mem[_110]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
