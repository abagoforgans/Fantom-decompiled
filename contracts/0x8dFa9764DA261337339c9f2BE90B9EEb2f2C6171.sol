contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_e63023cc(?)
#
address owner;
address sub_c70968e7Address;
address beneficiaryAddress;
address lpAddress;
uint256 sub_296f9ca4;
uint8 sub_371f274d;
address wEthAddress; offset 8

function sub_296f9ca4(?) {
    return sub_296f9ca4
}

function lp() {
    return lpAddress
}

function sub_371f274d(?) {
    return bool(sub_371f274d)
}

function beneficiary() {
    return beneficiaryAddress
}

function owner() {
    return owner
}

function sub_c70968e7(?) {
    return sub_c70968e7Address
}

function wEth() {
    return wEthAddress
}

function close() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_f602f731(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_296f9ca4 = arg1
}

function updateOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function sub_f24ef3c4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    lpAddress = address(arg1)
}

function sub_a2899a25(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    wEthAddress = address(arg1)
}

function sub_e4fdd485(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == owner
    sub_371f274d = uint8(bool(arg1))
}

function updateBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    beneficiaryAddress = arg1
}

function collectEth() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e35a25b2(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    call address(arg1) with:
       value arg3 wei
         gas gas_remaining wei
        args arg2[all]
}

function sub_027d6f56(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _12 = mem[_11]
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _12
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, _12
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == bool(mem[_15])
        idx = idx + 1
        continue 
}

function sub_627d51a2(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 >= 96 and (32 * ('cd', 68).length) + 128 <= test266151307()
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 68).length) + 128 len 64] = call.data[calldata.size len 64]
    if 0 < ('cd', 68).length:
        _40 = mem[128]
        if 1 < ('cd', 68).length:
            mem[(32 * ('cd', 68).length) + 196] = mem[172 len 20]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[172 len 20]
            mem[(32 * ('cd', 68).length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 196] = mem[172 len 20]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args mem[172 len 20]
            mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= cd[36]:
                return call.data[calldata.size len 64]
            if (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4):
                mem[(32 * ('cd', 68).length) + 128] = (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) + 1
                if ('cd', 68).length != 4:
                    return (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) + 1, 
                           call.data[calldata.size + 32]
                if 2 < ('cd', 68).length:
                    if 3 < ('cd', 68).length:
                        require ext_code.size(address(_40))
                        staticcall address(_40).0x70a08231 with:
                                gas gas_remaining wei
                               args mem[236 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(mem[204 len 20])
                        staticcall mem[204 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args mem[236 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) + 1:
                            return 0, call.data[calldata.size + 32]
                        if (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4) * sub_296f9ca4):
                            return (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) + 1, 
                                   ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4) * ext_call.return_data[0]) / (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4) * sub_296f9ca4)) + 1
    revert
}



}
