contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
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

function withdrawEth() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
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

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a7ccc94b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if msg.value <= 0:
        revert with 0, 'Message value must be > 0'
    mem[96] = 2
    mem[128] = stor1
    mem[160] = address(arg3)
    mem[192] = 2
    mem[224] = address(arg3)
    mem[256] = stor1
    mem[288] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[292] = 0
    mem[324] = 128
    mem[420] = 2
    idx = 0
    s = 128
    t = 452
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[356] = this.address
    mem[388] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[452 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _43 = mem[288 len 4], 0
    require mem[288 len 4], 0 <= test266151307()
    require mem[288 len 4], 0 + 319 < return_data.size + 288
    _44 = mem[mem[288 len 4], 0 + 288]
    if mem[mem[288 len 4], 0 + 288] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[288 len 4], 0 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], 0 + 288]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], 0 + 288]) + 289
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 0 + 288]
    require _43 + (32 * _44) + 32 <= return_data.size
    idx = 0
    s = _43 + 320
    t = ceil32(return_data.size) + 320
    while idx < _44:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _74 = mem[_73]
    require mem[_73] == mem[_73]
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _74
    require ext_code.size(address(arg3))
    call address(arg3).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), _74
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _77 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_77] == bool(mem[_77])
    if not mem[_77]:
        revert with 0, 'Token approve failed'
    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _74
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = 224
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = msg.sender
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(address(arg2))
    call address(arg2).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _74, 0, 160, msg.sender, block.timestamp, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _92 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _93 = mem[_92]
    require mem[_92] <= test266151307()
    require _92 + mem[_92] + 31 < _92 + return_data.size
    _94 = mem[_92 + mem[_92]]
    if mem[_92 + mem[_92]] > test266151307():
        revert with 'NH{q', 65
    if _92 + ceil32(return_data.size) + floor32(mem[_92 + mem[_92]]) + 1 > test266151307() or floor32(mem[_92 + mem[_92]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _92 + ceil32(return_data.size) + floor32(mem[_92 + mem[_92]]) + 1
    mem[_92 + ceil32(return_data.size)] = _94
    require _93 + (32 * _94) + 32 <= return_data.size
    idx = 0
    s = _92 + _93 + 32
    t = _92 + ceil32(return_data.size) + 32
    while idx < _94:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
