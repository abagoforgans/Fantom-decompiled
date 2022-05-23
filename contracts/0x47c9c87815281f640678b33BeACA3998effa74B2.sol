contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function changeTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == 0xaadd4adfaf324300bbaff7fccc51e96bbfcca620
    stor0 = arg1
}

function sub_a06c1a33(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require msg.sender == 0xaadd4adfaf324300bbaff7fccc51e96bbfcca620
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'Address invalid'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = 10^18
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_11] == bool(mem[_11])
        if idx > -2:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
