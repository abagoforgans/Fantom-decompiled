contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of struct stor1;
array of address stor2;
array of uint256 stor3;
array of uint256 stor4;

function _fallback() payable {
    revert
}

function pause() {
    require msg.sender == address(stor1.length.field_8)
    uint8(stor1.length) = 1
}

function unpause() {
    require msg.sender == address(stor1.length.field_8)
    uint8(stor1.length) = 0
}

function withdraw() {
    require msg.sender == address(stor1.length.field_8)
    if uint8(stor1.length):
        revert with 0, 'contract is paused'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_baab966e(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    if bool(stor0[arg1[all]].field_256):
        if bool(stor0[arg1[all]].field_256) == uint255(stor0[arg1[all]].field_257) < 32:
            revert with 'NH{q', 34
        if bool(stor0[arg1[all]].field_256):
            if bool(stor0[arg1[all]].field_256) == uint255(stor0[arg1[all]].field_257) < 32:
                revert with 'NH{q', 34
            if uint255(stor0[arg1[all]].field_257):
                if 31 >= uint255(stor0[arg1[all]].field_257):
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor0[arg1[all]].field_264)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor0[arg1[all]][1].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + uint255(stor0[arg1[all]].field_257) + 97 > idx:
                        mem[idx + 32] = uint256(stor0[arg1[all]][s + 1].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor0[arg1[all]].field_256) == stor0[arg1[all]].field_257 % 128 < 32:
                revert with 'NH{q', 34
            if stor0[arg1[all]].field_257 % 128:
                if 31 >= stor0[arg1[all]].field_257 % 128:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor0[arg1[all]].field_264)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor0[arg1[all]][1].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor0[arg1[all]].field_257 % 128 + 97 > idx:
                        mem[idx + 32] = uint256(stor0[arg1[all]][s + 1].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return bool(uint8(stor0[arg1[all]].field_0)), 
               Array(len=2 * Mask(256, -1, uint255(stor0[arg1[all]].field_257)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor0[arg1[all]].field_257))]),
               address(stor0[arg1[all]].field_512),
               uint256(stor0[arg1[all]].field_768),
               uint256(stor0[arg1[all]].field_1024)
    if bool(stor0[arg1[all]].field_256) == stor0[arg1[all]].field_257 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor0[arg1[all]].field_256):
        if bool(stor0[arg1[all]].field_256) == uint255(stor0[arg1[all]].field_257) < 32:
            revert with 'NH{q', 34
        if uint255(stor0[arg1[all]].field_257):
            if 31 >= uint255(stor0[arg1[all]].field_257):
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor0[arg1[all]].field_264)
            else:
                mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor0[arg1[all]][1].field_0)
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + uint255(stor0[arg1[all]].field_257) + 97 > idx:
                    mem[idx + 32] = uint256(stor0[arg1[all]][s + 1].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor0[arg1[all]].field_256) == stor0[arg1[all]].field_257 % 128 < 32:
            revert with 'NH{q', 34
        if stor0[arg1[all]].field_257 % 128:
            if 31 >= stor0[arg1[all]].field_257 % 128:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor0[arg1[all]].field_264)
            else:
                mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor0[arg1[all]][1].field_0)
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + stor0[arg1[all]].field_257 % 128 + 97 > idx:
                    mem[idx + 32] = uint256(stor0[arg1[all]][s + 1].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return bool(uint8(stor0[arg1[all]].field_0)), 
           Array(len=stor0[arg1[all]].field_256 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor0[arg1[all]].field_257 % 128)]),
           address(stor0[arg1[all]].field_512),
           uint256(stor0[arg1[all]].field_768),
           uint256(stor0[arg1[all]].field_1024)
}

function sub_746579e8(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == arg3
    require msg.sender == address(stor1.length.field_8)
    if uint8(stor1.length):
        revert with 0, 'contract is paused'
    require ext_code.size(address(arg2))
    call address(arg2).balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'you must deposit token before creating a sale'
    uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256]) = 1
    if bool(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('ext_call.return_data', ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_0):
        if bool(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('ext_call.return_data', ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_0) == uint255(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('ext_call.return_data', ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256][1][]) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('ext_call.return_data', ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_0) = 0
            idx = 0
            while uint255(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('ext_call.return_data', ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_1) + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256][idx + 1]) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('ext_call.return_data', ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_0) == stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('ext_call.return_data', ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256][1][]) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('ext_call.return_data', ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_0) = 0
            idx = 0
            while stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('ext_call.return_data', ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256][idx + 1]) = 0
                idx = idx + 1
                continue 
    stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('ext_call.return_data', ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))] = uint64(arg2) << 96
    stor3[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('ext_call.return_data', ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))] = ext_call.return_data[0]
    stor4[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('ext_call.return_data', ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))] = arg3
    emit 0x8ceaae57: Array(len=arg1.length, data=arg1[all])
}

function buyToken(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if uint8(stor1.length):
        revert with 0, 'contract is paused'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 0
    if ceil32(arg1.length) <= arg1.length:
        _339 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97] = bool(uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]))
        if bool(stor1[_339].field_0):
            if bool(stor1[_339].field_0) == uint255(stor1[_339].field_1) < 32:
                revert with 'NH{q', 34
            if bool(stor1[_339].field_0):
                if bool(stor1[_339].field_0) == uint255(stor1[_339].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor1[_339].field_1):
                    if bool(uint8(stor[_339])) != 1:
                        revert with 0, 'that sale does not exist'
                else:
                    if 31 >= uint255(stor1[_339].field_1):
                        mem[ceil32(ceil32(arg1.length)) + 289] = 256 * Mask(248, 0, stor1[_339].field_8)
                        if bool(uint8(stor[_339])) != 1:
                            revert with 0, 'that sale does not exist'
                    else:
                        mem[ceil32(ceil32(arg1.length)) + 289] = uint256(stor[sha3(_339 + 1)])
                        idx = ceil32(ceil32(arg1.length)) + 289
                        s = 0
                        while ceil32(ceil32(arg1.length)) + uint255(stor1[_339].field_1) + 257 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_339 + 1) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if bool(mem[ceil32(ceil32(arg1.length)) + 97]) != 1:
                            revert with 0, 'that sale does not exist'
            else:
                if bool(stor1[_339].field_0) == stor1[_339].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor1[_339].field_1 % 128:
                    if bool(uint8(stor[_339])) != 1:
                        revert with 0, 'that sale does not exist'
                else:
                    if 31 >= stor1[_339].field_1 % 128:
                        mem[ceil32(ceil32(arg1.length)) + 289] = 256 * Mask(248, 0, stor1[_339].field_8)
                        if bool(uint8(stor[_339])) != 1:
                            revert with 0, 'that sale does not exist'
                    else:
                        mem[ceil32(ceil32(arg1.length)) + 289] = uint256(stor[sha3(_339 + 1)])
                        idx = ceil32(ceil32(arg1.length)) + 289
                        s = 0
                        while ceil32(ceil32(arg1.length)) + stor1[_339].field_1 % 128 + 257 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_339 + 1) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if bool(mem[ceil32(ceil32(arg1.length)) + 97]) != 1:
                            revert with 0, 'that sale does not exist'
            if not stor4[_339]:
                revert with 'NH{q', 18
            require ext_code.size(stor2[_339])
            call stor2[_339].transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, msg.value / stor4[_339]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Purchase(msg.sender, msg.value / stor4[_339], Array(len=2 * Mask(256, -1, uint255(stor1[_339].field_1)), data=mem[ceil32(ceil32(arg1.length)) + 289 len ceil32(uint255(stor1[_339].field_1))]));
        else:
            if bool(stor1[_339].field_0) == stor1[_339].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if bool(stor1[_339].field_0):
                if bool(stor1[_339].field_0) == uint255(stor1[_339].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor1[_339].field_1):
                    if bool(uint8(stor[_339])) != 1:
                        revert with 0, 'that sale does not exist'
                else:
                    if 31 >= uint255(stor1[_339].field_1):
                        mem[ceil32(ceil32(arg1.length)) + 289] = 256 * Mask(248, 0, stor1[_339].field_8)
                        if bool(uint8(stor[_339])) != 1:
                            revert with 0, 'that sale does not exist'
                    else:
                        mem[ceil32(ceil32(arg1.length)) + 289] = uint256(stor[sha3(_339 + 1)])
                        idx = ceil32(ceil32(arg1.length)) + 289
                        s = 0
                        while ceil32(ceil32(arg1.length)) + uint255(stor1[_339].field_1) + 257 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_339 + 1) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if bool(mem[ceil32(ceil32(arg1.length)) + 97]) != 1:
                            revert with 0, 'that sale does not exist'
            else:
                if bool(stor1[_339].field_0) == stor1[_339].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor1[_339].field_1 % 128:
                    if bool(uint8(stor[_339])) != 1:
                        revert with 0, 'that sale does not exist'
                else:
                    if 31 >= stor1[_339].field_1 % 128:
                        mem[ceil32(ceil32(arg1.length)) + 289] = 256 * Mask(248, 0, stor1[_339].field_8)
                        if bool(uint8(stor[_339])) != 1:
                            revert with 0, 'that sale does not exist'
                    else:
                        mem[ceil32(ceil32(arg1.length)) + 289] = uint256(stor[sha3(_339 + 1)])
                        idx = ceil32(ceil32(arg1.length)) + 289
                        s = 0
                        while ceil32(ceil32(arg1.length)) + stor1[_339].field_1 % 128 + 257 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_339 + 1) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if bool(mem[ceil32(ceil32(arg1.length)) + 97]) != 1:
                            revert with 0, 'that sale does not exist'
            if not stor4[_339]:
                revert with 'NH{q', 18
            require ext_code.size(stor2[_339])
            call stor2[_339].transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, msg.value / stor4[_339]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Purchase(msg.sender, msg.value / stor4[_339], Array(len=stor1[_339].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 289 len ceil32(stor1[_339].field_1 % 128)]));
    else:
        _342 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97] = bool(uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]))
        if bool(stor1[_342].field_0):
            if bool(stor1[_342].field_0) == uint255(stor1[_342].field_1) < 32:
                revert with 'NH{q', 34
            if bool(stor1[_342].field_0):
                if bool(stor1[_342].field_0) == uint255(stor1[_342].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor1[_342].field_1):
                    if bool(uint8(stor[_342])) != 1:
                        revert with 0, 'that sale does not exist'
                else:
                    if 31 >= uint255(stor1[_342].field_1):
                        mem[ceil32(ceil32(arg1.length)) + 289] = 256 * Mask(248, 0, stor1[_342].field_8)
                        if bool(uint8(stor[_342])) != 1:
                            revert with 0, 'that sale does not exist'
                    else:
                        mem[ceil32(ceil32(arg1.length)) + 289] = uint256(stor[sha3(_342 + 1)])
                        idx = ceil32(ceil32(arg1.length)) + 289
                        s = 0
                        while ceil32(ceil32(arg1.length)) + uint255(stor1[_342].field_1) + 257 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_342 + 1) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if bool(mem[ceil32(ceil32(arg1.length)) + 97]) != 1:
                            revert with 0, 'that sale does not exist'
            else:
                if bool(stor1[_342].field_0) == stor1[_342].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor1[_342].field_1 % 128:
                    if bool(uint8(stor[_342])) != 1:
                        revert with 0, 'that sale does not exist'
                else:
                    if 31 >= stor1[_342].field_1 % 128:
                        mem[ceil32(ceil32(arg1.length)) + 289] = 256 * Mask(248, 0, stor1[_342].field_8)
                        if bool(uint8(stor[_342])) != 1:
                            revert with 0, 'that sale does not exist'
                    else:
                        mem[ceil32(ceil32(arg1.length)) + 289] = uint256(stor[sha3(_342 + 1)])
                        idx = ceil32(ceil32(arg1.length)) + 289
                        s = 0
                        while ceil32(ceil32(arg1.length)) + stor1[_342].field_1 % 128 + 257 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_342 + 1) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if bool(mem[ceil32(ceil32(arg1.length)) + 97]) != 1:
                            revert with 0, 'that sale does not exist'
            if not stor4[_342]:
                revert with 'NH{q', 18
            require ext_code.size(stor2[_342])
            call stor2[_342].transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, msg.value / stor4[_342]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Purchase(msg.sender, msg.value / stor4[_342], Array(len=2 * Mask(256, -1, uint255(stor1[_342].field_1)), data=mem[ceil32(ceil32(arg1.length)) + 289 len ceil32(uint255(stor1[_342].field_1))]));
        else:
            if bool(stor1[_342].field_0) == stor1[_342].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if bool(stor1[_342].field_0):
                if bool(stor1[_342].field_0) == uint255(stor1[_342].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor1[_342].field_1):
                    if bool(uint8(stor[_342])) != 1:
                        revert with 0, 'that sale does not exist'
                else:
                    if 31 >= uint255(stor1[_342].field_1):
                        mem[ceil32(ceil32(arg1.length)) + 289] = 256 * Mask(248, 0, stor1[_342].field_8)
                        if bool(uint8(stor[_342])) != 1:
                            revert with 0, 'that sale does not exist'
                    else:
                        mem[ceil32(ceil32(arg1.length)) + 289] = uint256(stor[sha3(_342 + 1)])
                        idx = ceil32(ceil32(arg1.length)) + 289
                        s = 0
                        while ceil32(ceil32(arg1.length)) + uint255(stor1[_342].field_1) + 257 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_342 + 1) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if bool(mem[ceil32(ceil32(arg1.length)) + 97]) != 1:
                            revert with 0, 'that sale does not exist'
            else:
                if bool(stor1[_342].field_0) == stor1[_342].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor1[_342].field_1 % 128:
                    if bool(uint8(stor[_342])) != 1:
                        revert with 0, 'that sale does not exist'
                else:
                    if 31 >= stor1[_342].field_1 % 128:
                        mem[ceil32(ceil32(arg1.length)) + 289] = 256 * Mask(248, 0, stor1[_342].field_8)
                        if bool(uint8(stor[_342])) != 1:
                            revert with 0, 'that sale does not exist'
                    else:
                        mem[ceil32(ceil32(arg1.length)) + 289] = uint256(stor[sha3(_342 + 1)])
                        idx = ceil32(ceil32(arg1.length)) + 289
                        s = 0
                        while ceil32(ceil32(arg1.length)) + stor1[_342].field_1 % 128 + 257 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_342 + 1) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if bool(mem[ceil32(ceil32(arg1.length)) + 97]) != 1:
                            revert with 0, 'that sale does not exist'
            if not stor4[_342]:
                revert with 'NH{q', 18
            require ext_code.size(stor2[_342])
            call stor2[_342].transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, msg.value / stor4[_342]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Purchase(msg.sender, msg.value / stor4[_342], Array(len=stor1[_342].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 289 len ceil32(stor1[_342].field_1 % 128)]));
}

function sub_5dd2a454(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == address(stor1.length.field_8)
    if uint8(stor1.length):
        revert with 0, 'contract is paused'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 0
    if ceil32(arg1.length) <= arg1.length:
        _1491 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97] = bool(uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]))
        if bool(stor1[_1491].field_0):
            if bool(stor1[_1491].field_0) == uint255(stor1[_1491].field_1) < 32:
                revert with 'NH{q', 34
        else:
            if bool(stor1[_1491].field_0) == stor1[_1491].field_1 % 128 < 32:
                revert with 'NH{q', 34
        if bool(stor1[_1491].field_0):
            if bool(stor1[_1491].field_0) == uint255(stor1[_1491].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor1[_1491].field_1):
                if bool(uint8(stor[_1491])) != 1:
                    revert with 0, 'that sale does not exist'
                require ext_code.size(stor2[_1491])
                call stor2[_1491].balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                if 31 >= uint255(stor1[_1491].field_1):
                    if bool(uint8(stor[_1491])) != 1:
                        revert with 0, 'that sale does not exist'
                    require ext_code.size(stor2[_1491])
                    call stor2[_1491].balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = ceil32(ceil32(arg1.length)) + 289
                    s = 0
                    while ceil32(ceil32(arg1.length)) + uint255(stor1[_1491].field_1) + 257 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_1491 + 1) + 1])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(mem[ceil32(ceil32(arg1.length)) + 97]) != 1:
                        revert with 0, 'that sale does not exist'
                    require ext_code.size(stor2[_1491])
                    call stor2[_1491].balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
        else:
            if bool(stor1[_1491].field_0) == stor1[_1491].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor1[_1491].field_1 % 128:
                if bool(uint8(stor[_1491])) != 1:
                    revert with 0, 'that sale does not exist'
                require ext_code.size(stor2[_1491])
                call stor2[_1491].balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                if 31 >= stor1[_1491].field_1 % 128:
                    if bool(uint8(stor[_1491])) != 1:
                        revert with 0, 'that sale does not exist'
                    require ext_code.size(stor2[_1491])
                    call stor2[_1491].balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = ceil32(ceil32(arg1.length)) + 289
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor1[_1491].field_1 % 128 + 257 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_1491 + 1) + 1])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(mem[ceil32(ceil32(arg1.length)) + 97]) != 1:
                        revert with 0, 'that sale does not exist'
                    require ext_code.size(stor2[_1491])
                    call stor2[_1491].balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor2[_1491])
        call stor2[_1491].transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        _1494 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97] = bool(uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]))
        if bool(stor1[_1494].field_0):
            if bool(stor1[_1494].field_0) == uint255(stor1[_1494].field_1) < 32:
                revert with 'NH{q', 34
        else:
            if bool(stor1[_1494].field_0) == stor1[_1494].field_1 % 128 < 32:
                revert with 'NH{q', 34
        if bool(stor1[_1494].field_0):
            if bool(stor1[_1494].field_0) == uint255(stor1[_1494].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor1[_1494].field_1):
                if bool(uint8(stor[_1494])) != 1:
                    revert with 0, 'that sale does not exist'
                require ext_code.size(stor2[_1494])
                call stor2[_1494].balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                if 31 >= uint255(stor1[_1494].field_1):
                    if bool(uint8(stor[_1494])) != 1:
                        revert with 0, 'that sale does not exist'
                    require ext_code.size(stor2[_1494])
                    call stor2[_1494].balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = ceil32(ceil32(arg1.length)) + 289
                    s = 0
                    while ceil32(ceil32(arg1.length)) + uint255(stor1[_1494].field_1) + 257 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_1494 + 1) + 1])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(mem[ceil32(ceil32(arg1.length)) + 97]) != 1:
                        revert with 0, 'that sale does not exist'
                    require ext_code.size(stor2[_1494])
                    call stor2[_1494].balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
        else:
            if bool(stor1[_1494].field_0) == stor1[_1494].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor1[_1494].field_1 % 128:
                if bool(uint8(stor[_1494])) != 1:
                    revert with 0, 'that sale does not exist'
                require ext_code.size(stor2[_1494])
                call stor2[_1494].balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                if 31 >= stor1[_1494].field_1 % 128:
                    if bool(uint8(stor[_1494])) != 1:
                        revert with 0, 'that sale does not exist'
                    require ext_code.size(stor2[_1494])
                    call stor2[_1494].balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = ceil32(ceil32(arg1.length)) + 289
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor1[_1494].field_1 % 128 + 257 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_1494 + 1) + 1])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(mem[ceil32(ceil32(arg1.length)) + 97]) != 1:
                        revert with 0, 'that sale does not exist'
                    require ext_code.size(stor2[_1494])
                    call stor2[_1494].balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor2[_1494])
        call stor2[_1494].transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256]) = 0
    if bool(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_0):
        if bool(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_0) == uint255(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_1) < 32:
            revert with 'NH{q', 34
        uint256(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_0) = 0
        if 31 < uint255(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_1):
            idx = 0
            while uint255(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_1) + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256][idx + 1]) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_0) == stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_1 % 128 < 32:
            revert with 'NH{q', 34
        uint256(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_0) = 0
        if 31 < stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_1 % 128:
            idx = 0
            while stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256][idx + 1]) = 0
                idx = idx + 1
                continue 
    stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))] = 0
    stor3[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))] = 0
    stor4[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0))] = 0
    emit 0x613fc282: Array(len=arg1.length, data=arg1[all])
}



}
