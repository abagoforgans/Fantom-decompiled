contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_47eb1151(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx > -3:
            revert with 'NH{q', 17
        if idx + 2 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx > -4:
            revert with 'NH{q', 17
        if idx + 3 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx > -5:
            revert with 'NH{q', 17
        if idx + 4 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx > -6:
            revert with 'NH{q', 17
        if idx + 5 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx > -7:
            revert with 'NH{q', 17
        if idx + 6 >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        mem[132] = uint32(cd[((32 * idx + 1) + cd[4] + 36)])
        mem[164] = uint32(cd[((32 * idx + 2) + cd[4] + 36)])
        mem[196] = uint32(cd[((32 * idx + 3) + cd[4] + 36)])
        mem[228] = uint32(cd[((32 * idx + 4) + cd[4] + 36)])
        mem[260] = uint32(cd[((32 * idx + 5) + cd[4] + 36)])
        mem[292] = uint32(cd[((32 * idx + 6) + cd[4] + 36)])
        require ext_code.size(stor0)
        call stor0.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx + 1) + cd[4] + 36)] << 224, cd[((32 * idx + 2) + cd[4] + 36)] << 224, cd[((32 * idx + 3) + cd[4] + 36)] << 224, cd[((32 * idx + 4) + cd[4] + 36)] << 224, cd[((32 * idx + 5) + cd[4] + 36)] << 224, uint32(cd[((32 * idx + 6) + cd[4] + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx > -8:
            revert with 'NH{q', 17
        idx = idx + 7
        continue 
}



}
