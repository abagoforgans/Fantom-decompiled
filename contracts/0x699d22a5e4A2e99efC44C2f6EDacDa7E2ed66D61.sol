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
    _98 = mem[ceil32(return_data.size) + 352]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _98
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
           args _98, Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _144 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _145 = mem[_144]
    require mem[_144] <= test266151307()
    require _144 + mem[_144] + 31 < _144 + return_data.size
    _146 = mem[_144 + mem[_144]]
    if mem[_144 + mem[_144]] > test266151307():
        revert with 'NH{q', 65
    if _144 + ceil32(return_data.size) + floor32(mem[_144 + mem[_144]]) + 1 > test266151307() or floor32(mem[_144 + mem[_144]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _144 + ceil32(return_data.size) + floor32(mem[_144 + mem[_144]]) + 1
    mem[_144 + ceil32(return_data.size)] = _146
    require _145 + (32 * _146) + 32 <= return_data.size
    idx = 0
    s = _144 + _145 + 32
    t = _144 + ceil32(return_data.size) + 32
    while idx < _146:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _146:
        revert with 'NH{q', 50
    emit 0xfd55085d: msg.value, mem[_144 + ceil32(return_data.size) + 64]
    if mem[_144 + ceil32(return_data.size) + 64] <= msg.value:
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
    _228 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _229 = mem[_228]
    require mem[_228] <= test266151307()
    require _228 + mem[_228] + 31 < _228 + return_data.size
    _230 = mem[_228 + mem[_228]]
    if mem[_228 + mem[_228]] > test266151307():
        revert with 'NH{q', 65
    if _228 + ceil32(return_data.size) + floor32(mem[_228 + mem[_228]]) + 1 > test266151307() or floor32(mem[_228 + mem[_228]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _228 + ceil32(return_data.size) + floor32(mem[_228 + mem[_228]]) + 1
    mem[_228 + ceil32(return_data.size)] = _230
    require _229 + (32 * _230) + 32 <= return_data.size
    idx = 0
    s = _228 + _229 + 32
    t = _228 + ceil32(return_data.size) + 32
    while idx < _230:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= mem[192]:
        revert with 'NH{q', 50
    _260 = mem[224]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_260))
    staticcall address(_260).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _263 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _264 = mem[_263]
    require mem[_263] == mem[_263]
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _264
    require ext_code.size(address(_260))
    call address(_260).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), _264
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _267 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_267] == bool(mem[_267])
    if not mem[_267]:
        revert with 0, 'Token approve failed'
    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _264
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _272 = mem[192]
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
        args _264, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _272) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _286 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _287 = mem[_286]
    require mem[_286] <= test266151307()
    require _286 + mem[_286] + 31 < _286 + return_data.size
    _288 = mem[_286 + mem[_286]]
    if mem[_286 + mem[_286]] > test266151307():
        revert with 'NH{q', 65
    if _286 + ceil32(return_data.size) + floor32(mem[_286 + mem[_286]]) + 1 > test266151307() or floor32(mem[_286 + mem[_286]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _286 + ceil32(return_data.size) + floor32(mem[_286 + mem[_286]]) + 1
    mem[_286 + ceil32(return_data.size)] = _288
    require _287 + (32 * _288) + 32 <= return_data.size
    idx = 0
    s = _286 + _287 + 32
    t = _286 + ceil32(return_data.size) + 32
    while idx < _288:
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
