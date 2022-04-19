contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function multisendEther(address[] arg1, uint256[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = msg.value
    while idx < arg1.length:
        require idx < arg2.length
        require s >= cd[((32 * idx) + arg2 + 36)]
        require idx < arg2.length
        _19 = mem[64]
        mem[64] = mem[64] + 64
        mem[_19] = 30
        mem[_19 + 32] = 'SafeMath: subtraction overflow'
        if cd[((32 * idx) + arg2 + 36)] > s:
            _20 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _20 + 68] = mem[idx + _19 + 32]
                idx = idx + 32
                continue 
            mem[_20 + 68] = mem[_20 + 70 len 30]
            revert with memory
              from mem[64]
               len _20 + -mem[64] + 100
        require idx < arg1.length
        require idx < arg2.length
        call address(cd[((32 * idx) + arg1 + 36)]) with:
           value cd[((32 * idx) + arg2 + 36)] wei
             gas gas_remaining wei
        if return_data.size:
            _28 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_28] = return_data.size
            mem[_28 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Transfer failed.'
        idx = idx + 1
        s = s - cd[((32 * idx) + arg2 + 36)]
        continue 
    emit Multisended(msg.value, 48879);
}

function multisendToken(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if arg1 != 48879:
        idx = 0
        s = 0
        while arg2.length > uint8(idx):
            require uint8(idx) < arg2.length
            require uint8(idx) < arg3.length
            mem[100] = msg.sender
            mem[132] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
            mem[164] = cd[((32 * uint8(idx)) + arg3 + 36)]
            require ext_code.size(arg1)
            call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(cd[((32 * uint8(idx)) + arg2 + 36)]), cd[((32 * uint8(idx)) + arg3 + 36)]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < arg3.length
            if cd[((32 * uint8(idx)) + arg3 + 36)] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = cd[((32 * uint8(idx)) + arg3 + 36)] + s
            continue 
        emit Multisended(cd[((32 * uint8(None)) + arg3 + 36)] * None, arg1);
    else:
        idx = 0
        s = msg.value
        while idx < arg2.length:
            require idx < arg3.length
            require s >= cd[((32 * idx) + arg3 + 36)]
            require idx < arg3.length
            _31 = mem[64]
            mem[64] = mem[64] + 64
            mem[_31] = 30
            mem[_31 + 32] = 'SafeMath: subtraction overflow'
            if cd[((32 * idx) + arg3 + 36)] > s:
                _32 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _32 + 68] = mem[idx + _31 + 32]
                    idx = idx + 32
                    continue 
                mem[_32 + 68] = mem[_32 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _32 + -mem[64] + 100
            require idx < arg2.length
            require idx < arg3.length
            call address(cd[((32 * idx) + arg2 + 36)]) with:
               value cd[((32 * idx) + arg3 + 36)] wei
                 gas gas_remaining wei
            if return_data.size:
                _42 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_42] = return_data.size
                mem[_42 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Transfer failed.'
            idx = idx + 1
            s = s - cd[((32 * idx) + arg3 + 36)]
            continue 
        emit Multisended(msg.value, 48879);
}



}
