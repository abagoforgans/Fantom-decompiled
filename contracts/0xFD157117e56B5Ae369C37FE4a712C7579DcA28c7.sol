contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 sub_2a9c72c8;
uint256 sub_cbc18e9f;
uint256 burned;

function sub_2a9c72c8(?) payable {
    return sub_2a9c72c8
}

function burned() payable {
    return burned
}

function sub_cbc18e9f(?) payable {
    return sub_cbc18e9f
}

function _fallback() payable {
    revert
}

function burn() payable {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe4275726e696e673a206f6e6c7920746f6b656e20636f6e74726163742063616e206275726e20746f6b656e,
                    mem[208 len 20]
    if burned > sub_2a9c72c8:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_cbc18e9f <= ext_call.return_data[0]:
        if sub_cbc18e9f <= sub_2a9c72c8 - burned:
            if sub_cbc18e9f <= 0:
                revert with 0, 32, 34, 0x734275726e696e673a207265616368656420746865206275726e696e67206c696d69, mem[262 len 30]
            require ext_code.size(stor0)
            call stor0.0x42966c68 with:
                 gas gas_remaining wei
                args sub_cbc18e9f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Burning: failed to burn tokens'
            if burned + sub_cbc18e9f < burned:
                revert with 0, 'SafeMath: addition overflow'
            burned += sub_cbc18e9f
            emit 0x4de33d35: sub_cbc18e9f, this.address
        else:
            if sub_2a9c72c8 - burned <= 0:
                revert with 0, 32, 34, 0x734275726e696e673a207265616368656420746865206275726e696e67206c696d69, mem[262 len 30]
            require ext_code.size(stor0)
            call stor0.0x42966c68 with:
                 gas gas_remaining wei
                args (sub_2a9c72c8 - burned)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Burning: failed to burn tokens'
            if sub_2a9c72c8 < burned:
                revert with 0, 'SafeMath: addition overflow'
            burned = sub_2a9c72c8
            emit 0x4de33d35: (sub_2a9c72c8 - burned), this.address
    else:
        if ext_call.return_data[0] <= sub_2a9c72c8 - burned:
            if ext_call.return_data[0] <= 0:
                revert with 0, 32, 34, 0x734275726e696e673a207265616368656420746865206275726e696e67206c696d69, mem[262 len 30]
            require ext_code.size(stor0)
            call stor0.0x42966c68 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Burning: failed to burn tokens'
            if burned + ext_call.return_data[0] < burned:
                revert with 0, 'SafeMath: addition overflow'
            burned += ext_call.return_data[0]
            emit 0x4de33d35: ext_call.return_data[0], this.address
        else:
            if sub_2a9c72c8 - burned <= 0:
                revert with 0, 32, 34, 0x734275726e696e673a207265616368656420746865206275726e696e67206c696d69, mem[262 len 30]
            require ext_code.size(stor0)
            call stor0.0x42966c68 with:
                 gas gas_remaining wei
                args (sub_2a9c72c8 - burned)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Burning: failed to burn tokens'
            if sub_2a9c72c8 < burned:
                revert with 0, 'SafeMath: addition overflow'
            burned = sub_2a9c72c8
            emit 0x4de33d35: (sub_2a9c72c8 - burned), this.address
    return 1
}



}
