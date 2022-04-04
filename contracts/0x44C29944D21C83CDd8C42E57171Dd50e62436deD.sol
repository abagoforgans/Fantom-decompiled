contract main {




// =====================  Runtime code  =====================


#
#  - sub_a8d4cd63(?)
#
const getBalance = eth.balance(this.address)


address owner;

function owner() {
    return owner
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_24789aad(?) payable {
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
    require msg.sender == owner
    if not ('cd', 68).length:
        revert with 'NH{q', 18
    idx = 0
    while uint32(idx) < ('cd', 68).length:
        require cd[((32 * uint32(idx)) + cd[68] + 36)] == address(cd[((32 * uint32(idx)) + cd[68] + 36)])
        _43 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((32 * uint32(idx)) + cd[68] + 36)])
        mem[mem[64] + 100] = cd[36] / ('cd', 68).length
        _44 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_44 + 32] = mem[_44 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
        _47 = mem[_44]
        s = 0
        while s < _47:
            mem[_43 + s + 132] = mem[_44 + s + 32]
            s = s + 32
            continue 
        if ceil32(_47) <= _47:
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _43 + _47 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            else:
                _83 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_83] = return_data.size
                mem[_83 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_83 + 32] == bool(mem[_83 + 32])
                    if not mem[_83 + 32]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        else:
            mem[_43 + _47 + 132] = 0
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _43 + _47 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            else:
                _85 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_85] = return_data.size
                mem[_85 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_85 + 32] == bool(mem[_85 + 32])
                    if not mem[_85 + 32]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        if uint32(idx) == test266151307():
            revert with 'NH{q', 17
        idx = uint32(idx) + 1
        continue 
    return 1
}



}
