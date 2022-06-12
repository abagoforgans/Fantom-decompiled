contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function sub_f4d388e7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor2)
        call stor2.claim(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_eba59f2e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        call stor0.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_dba340c0(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor3)
        call stor3.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ecdf681f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        call stor0.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_0b0b5a55(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (192 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((192 * idx) + cd[36] + 36)] == uint32(cd[((192 * idx) + cd[36] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((192 * idx) + cd[36] + 68)] == uint32(cd[((192 * idx) + cd[36] + 68)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((192 * idx) + cd[36] + 100)] == uint32(cd[((192 * idx) + cd[36] + 100)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((192 * idx) + cd[36] + 132)] == uint32(cd[((192 * idx) + cd[36] + 132)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((192 * idx) + cd[36] + 164)] == uint32(cd[((192 * idx) + cd[36] + 164)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((192 * idx) + cd[36] + 196)] == uint32(cd[((192 * idx) + cd[36] + 196)])
        mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        mem[132] = uint32(cd[((192 * idx) + cd[36] + 36)])
        mem[164] = uint32(cd[((192 * idx) + cd[36] + 68)])
        mem[196] = uint32(cd[((192 * idx) + cd[36] + 100)])
        mem[228] = uint32(cd[((192 * idx) + cd[36] + 132)])
        mem[260] = uint32(cd[((192 * idx) + cd[36] + 164)])
        mem[292] = uint32(cd[((192 * idx) + cd[36] + 196)])
        require ext_code.size(stor1)
        call stor1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], cd[((192 * idx) + cd[36] + 36)] << 224, cd[((192 * idx) + cd[36] + 68)] << 224, cd[((192 * idx) + cd[36] + 100)] << 224, cd[((192 * idx) + cd[36] + 132)] << 224, cd[((192 * idx) + cd[36] + 164)] << 224, uint32(cd[((192 * idx) + cd[36] + 196)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
