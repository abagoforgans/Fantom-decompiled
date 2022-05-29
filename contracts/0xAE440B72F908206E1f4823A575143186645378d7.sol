contract main {




// =====================  Runtime code  =====================


#
#  - getProfit(address arg1, address arg2)
#  - flashArbitrage(address arg1, address arg2)
#
address owner;
address stor2;
mapping of uint8 stor3;

function sub_85bb6a3c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function owner() {
    return owner
}

function sub_5dc19928(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor3[address(arg1)] = 1
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function sub_479c7a71(?) {
    if eth.balance(this.address):
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_9abb28ae(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    u = 32 * ('cd', 4).length
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        u = cd[s]
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _30 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_30))
        staticcall address(_30).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _34 = mem[_33]
        if mem[_33]:
            require idx < mem[96]
            _36 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = _34
            require ext_code.size(address(_36))
            call address(_36).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args owner, _34
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_39] == bool(mem[_39])
        idx = idx + 1
        continue 
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if stor2 != msg.sender:
        revert with 0, 'Non permissioned address call'
    if arg1 != this.address:
        revert with 0, 'Not from this contract'
    require arg4.length >= 224
    require bool(ceil32(arg4.length) + 352 <= test266151307())
    require mem[128] == mem[140 len 20]
    mem[ceil32(arg4.length) + 128] = mem[128]
    require mem[160] == mem[172 len 20]
    mem[ceil32(arg4.length) + 160] = mem[160]
    require mem[192] == bool(mem[192])
    mem[ceil32(arg4.length) + 192] = mem[192]
    require mem[224] == mem[236 len 20]
    mem[ceil32(arg4.length) + 224] = mem[224]
    require mem[256] == mem[268 len 20]
    mem[ceil32(arg4.length) + 256] = mem[256]
    mem[ceil32(arg4.length) + 288] = mem[288]
    mem[ceil32(arg4.length) + 320] = mem[320]
    require ext_code.size(mem[ceil32(arg4.length) + 236 len 20])
    if arg2 > 0:
        call mem[ceil32(arg4.length) + 236 len 20].transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 172 len 20], arg2
    else:
        call mem[ceil32(arg4.length) + 236 len 20].transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 172 len 20], arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
    if mem[ceil32(arg4.length) + 192]:
        call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 320], 0, address(this.address), 128, 0
    else:
        call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, mem[ceil32(arg4.length) + 320], address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(mem[ceil32(arg4.length) + 268 len 20])
    call mem[ceil32(arg4.length) + 268 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if stor2 != msg.sender:
        revert with 0, 'Non permissioned address call'
    if address(arg1) != this.address:
        revert with 0, 'Not from this contract'
    require arg4.length >= 224
    require bool(ceil32(arg4.length) + 352 <= test266151307())
    require mem[128] == mem[140 len 20]
    mem[ceil32(arg4.length) + 128] = mem[128]
    require mem[160] == mem[172 len 20]
    mem[ceil32(arg4.length) + 160] = mem[160]
    require mem[192] == bool(mem[192])
    mem[ceil32(arg4.length) + 192] = mem[192]
    require mem[224] == mem[236 len 20]
    mem[ceil32(arg4.length) + 224] = mem[224]
    require mem[256] == mem[268 len 20]
    mem[ceil32(arg4.length) + 256] = mem[256]
    mem[ceil32(arg4.length) + 288] = mem[288]
    mem[ceil32(arg4.length) + 320] = mem[320]
    require ext_code.size(mem[ceil32(arg4.length) + 236 len 20])
    if arg2 > 0:
        call mem[ceil32(arg4.length) + 236 len 20].transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 172 len 20], arg2
    else:
        call mem[ceil32(arg4.length) + 236 len 20].transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 172 len 20], arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
    if mem[ceil32(arg4.length) + 192]:
        call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 320], 0, address(this.address), 128, 0
    else:
        call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, mem[ceil32(arg4.length) + 320], address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(mem[ceil32(arg4.length) + 268 len 20])
    call mem[ceil32(arg4.length) + 268 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return arg4[all]
}



}
