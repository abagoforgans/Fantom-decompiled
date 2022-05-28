contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require arg1
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sendETH(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg1.length > 0
    require msg.value > 0
    if not arg1.length:
        revert with 'NH{q', 18
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        call address(cd[((32 * idx) + arg1 + 36)]) with:
           value msg.value / arg1.length wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_92396e86(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require ('cd', 68).length > 0
    idx = 0
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        _39 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 100] = cd[36]
        _40 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_40 + 32] = mem[_40 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
        _43 = mem[_40]
        s = 0
        while s < _43:
            mem[_39 + s + 132] = mem[_40 + s + 32]
            s = s + 32
            continue 
        if ceil32(_43) <= _43:
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _39 + _43 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SEND TOKEN FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SEND TOKEN FAILED'
            else:
                _79 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_79] = return_data.size
                mem[_79 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SEND TOKEN FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_79 + 32] == bool(mem[_79 + 32])
                    if not mem[_79 + 32]:
                        revert with 0, 'SEND TOKEN FAILED'
        else:
            mem[_39 + _43 + 132] = 0
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _39 + _43 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SEND TOKEN FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SEND TOKEN FAILED'
            else:
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_81] = return_data.size
                mem[_81 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SEND TOKEN FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_81 + 32] == bool(mem[_81 + 32])
                    if not mem[_81 + 32]:
                        revert with 0, 'SEND TOKEN FAILED'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
