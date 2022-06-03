contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'pls no hack ser'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'too much ser'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_41a3b60b(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'pls no hack ser'
    idx = 0
    while idx < ('cd', 4).length:
        if eth.balance(cd[((32 * idx) + cd[4] + 36)]) <= cd[36]:
            if cd[36] - eth.balance(cd[((32 * idx) + cd[4] + 36)]) > cd[36]:
                revert with 0, 'ds-math-sub-underflow'
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= cd[36] - eth.balance(cd[((32 * idx) + cd[4] + 36)]):
                revert with 0, 'not enough wftm on account left'
            mem[mem[64] + 4] = cd[36] - eth.balance(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args (cd[36] - eth.balance(cd[((32 * idx) + cd[4] + 36)]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _35 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            _37 = mem[_35]
            t = _35 + 32
            u = mem[64]
            s = mem[_35]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_35])] = mem[_35 + floor32(mem[_35]) + -(mem[_35] % 32) + 64 len mem[_35] % 32] or Mask(8 * -(mem[_35] % 32) + 32, -(8 * -(mem[_35] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_35])])
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
               value cd[36] - eth.balance(cd[((32 * idx) + cd[4] + 36)]) wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _37 + _35 + -mem[64] + 28]
            if return_data.size:
                _51 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_51] = return_data.size
                mem[_51 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            52,
                            0xfe5472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                            mem[mem[64] + 120 len 12]
        idx = idx + 1
        continue 
}



}
