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
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = msg.value
    mem[324] = 64
    mem[356] = 2
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=2, data=mem[388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _52 = mem[288 len 4], Mask(224, 32, msg.value) >> 32
    require mem[288 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require mem[288 len 4], Mask(224, 32, msg.value) >> 32 + 319 < return_data.size + 288
    _53 = mem[mem[288 len 4], Mask(224, 32, msg.value) >> 32 + 288]
    if mem[mem[288 len 4], Mask(224, 32, msg.value) >> 32 + 288] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, msg.value) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, msg.value) >> 32 + 288]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, msg.value) >> 32 + 288]) + 289
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, msg.value) >> 32 + 288]
    require _52 + (32 * _53) + 32 <= return_data.size
    idx = 0
    s = _52 + 320
    t = ceil32(return_data.size) + 320
    while idx < _53:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _53:
        revert with 'NH{q', 50
    _97 = mem[ceil32(return_data.size) + 352]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _97
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = 224
    t = mem[64] + 100
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg2))
    staticcall address(arg2).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _97, Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _142 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _143 = mem[_142]
    require mem[_142] <= test266151307()
    require _142 + mem[_142] + 31 < _142 + return_data.size
    _144 = mem[_142 + mem[_142]]
    if mem[_142 + mem[_142]] > test266151307():
        revert with 'NH{q', 65
    if _142 + ceil32(return_data.size) + floor32(mem[_142 + mem[_142]]) + 1 > test266151307() or floor32(mem[_142 + mem[_142]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _142 + ceil32(return_data.size) + floor32(mem[_142 + mem[_142]]) + 1
    mem[_142 + ceil32(return_data.size)] = _144
    require _143 + (32 * _144) + 32 <= return_data.size
    idx = 0
    s = _142 + _143 + 32
    t = _142 + ceil32(return_data.size) + 32
    while idx < _144:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _144:
        revert with 'NH{q', 50
    if mem[_142 + ceil32(return_data.size) + 64] >= msg.value:
        revert with 0, 'Error 1'
    mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _226 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _227 = mem[_226]
    require mem[_226] <= test266151307()
    require _226 + mem[_226] + 31 < _226 + return_data.size
    _228 = mem[_226 + mem[_226]]
    if mem[_226 + mem[_226]] > test266151307():
        revert with 'NH{q', 65
    if _226 + ceil32(return_data.size) + floor32(mem[_226 + mem[_226]]) + 1 > test266151307() or floor32(mem[_226 + mem[_226]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _226 + ceil32(return_data.size) + floor32(mem[_226 + mem[_226]]) + 1
    mem[_226 + ceil32(return_data.size)] = _228
    require _227 + (32 * _228) + 32 <= return_data.size
    idx = 0
    s = _226 + _227 + 32
    t = _226 + ceil32(return_data.size) + 32
    while idx < _228:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= mem[192]:
        revert with 'NH{q', 50
    _258 = mem[224]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_258))
    staticcall address(_258).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _261 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _262 = mem[_261]
    require mem[_261] == mem[_261]
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _262
    require ext_code.size(address(_258))
    call address(_258).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), _262
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _265 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_265] == bool(mem[_265])
    if not mem[_265]:
        revert with 0, 'Token approve failed'
    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _262
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _270 = mem[192]
    mem[mem[64] + 164] = mem[192]
    idx = 0
    s = 224
    t = mem[64] + 196
    while idx < mem[192]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(address(arg2))
    call address(arg2).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _262, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _270) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _284 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _285 = mem[_284]
    require mem[_284] <= test266151307()
    require _284 + mem[_284] + 31 < _284 + return_data.size
    _286 = mem[_284 + mem[_284]]
    if mem[_284 + mem[_284]] > test266151307():
        revert with 'NH{q', 65
    if _284 + ceil32(return_data.size) + floor32(mem[_284 + mem[_284]]) + 1 > test266151307() or floor32(mem[_284 + mem[_284]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _284 + ceil32(return_data.size) + floor32(mem[_284 + mem[_284]]) + 1
    mem[_284 + ceil32(return_data.size)] = _286
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = _284 + _285 + 32
    t = _284 + ceil32(return_data.size) + 32
    while idx < _286:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if eth.balance(this.address) <= msg.value:
        revert with 0, 'Error 2'
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
