contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address payTokenAddress;
address buyTokenAddress;

function owner() {
    return owner
}

function payToken() {
    return payTokenAddress
}

function buyToken() {
    return buyTokenAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function withdraw() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9c036dc1(?) {
    mem[96] = 2
    mem[128] = payTokenAddress
    mem[160] = buyTokenAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _29 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= test266151307()
    require mem[192 len 4], 0 + 223 < return_data.size + 192
    _30 = mem[mem[192 len 4], 0 + 192]
    if mem[mem[192 len 4], 0 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    require _29 + (32 * _30) + 32 <= return_data.size
    idx = 0
    s = _29 + 224
    t = ceil32(return_data.size) + 224
    while idx < _30:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _30:
        revert with 'NH{q', 50
    require mem[ceil32(return_data.size) + 256] > 0
    _49 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_49]:
        revert with 'NH{q', 50
    mem[_49 + 32] = payTokenAddress
    if 1 >= mem[_49]:
        revert with 'NH{q', 50
    mem[_49 + 64] = buyTokenAddress
    mem[_49 + 100] = this.address
    require ext_code.size(payTokenAddress)
    staticcall payTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[_49 + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _49 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[_49 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[_49 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[_49 + ceil32(return_data.size) + 132] = 1
    mem[_49 + ceil32(return_data.size) + 164] = 160
    mem[_49 + ceil32(return_data.size) + 260] = mem[_49]
    idx = 0
    s = _49 + 32
    t = _49 + ceil32(return_data.size) + 292
    while idx < mem[_49]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_49 + ceil32(return_data.size) + 196] = owner
    mem[_49 + ceil32(return_data.size) + 228] = block.timestamp + 120
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _49 + ceil32(return_data.size) + (32 * mem[_49]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
