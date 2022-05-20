contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
uint8 stor1;
address stor1; offset 8
uint256 stor2;
address stor3;
address stor4;

function _fallback() payable {
    revert
}

function pause() payable {
    require msg.sender == address(stor1.field_8)
    uint8(stor1.field_0) = 1
}

function unpause() payable {
    require msg.sender == address(stor1.field_8)
    uint8(stor1.field_0) = 0
}

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor1.field_8)
    stor2 = arg1
}

function withdraw() payable {
    require msg.sender == address(stor1.field_8)
    require ext_code.size(stor4)
    call stor4.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_26c72a7f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_0:
            if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_1:
                if 31 >= stor0[arg1].field_1:
                    mem[128] = 256 * stor0[arg1].field_8
                else:
                    mem[128] = stor0[arg1].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor0[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_1:
                if 31 >= stor0[arg1].field_1:
                    mem[128] = 256 * stor0[arg1].field_8
                else:
                    mem[128] = stor0[arg1].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor0[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor0[arg1].field_1), data=mem[128 len ceil32(stor0[arg1].field_1)]), stor0[arg1].field_256
    if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_1:
            if 31 >= stor0[arg1].field_1:
                mem[128] = 256 * stor0[arg1].field_8
            else:
                mem[128] = stor0[arg1].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor0[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_1:
            if 31 >= stor0[arg1].field_1:
                mem[128] = 256 * stor0[arg1].field_8
            else:
                mem[128] = stor0[arg1].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor0[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor0[arg1].field_0, data=mem[128 len ceil32(stor0[arg1].field_1)]), stor0[arg1].field_256
}

function sub_a50a15fa(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(stor3)
    call stor3.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'sender is not the owner of this rat'
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
    else:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_1:
            if 31 < stor0[arg1].field_1:
                idx = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 193
                s = 0
                while ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + stor0[arg1].field_1 + 161 > idx:
                    mem[idx + 32] = stor0[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_1:
            if 31 < stor0[arg1].field_1:
                idx = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 193
                s = 0
                while ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + stor0[arg1].field_1 + 161 > idx:
                    mem[idx + 32] = stor0[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor2 and stor0[arg1].field_256 > -1 / stor2:
        revert with 'NH{q', 17
    if stor2 * stor0[arg1].field_256 > -stor2 - 1:
        revert with 'NH{q', 17
    require ext_code.size(stor4)
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), (stor2 * stor0[arg1].field_256) + stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor0[arg1].field_256:
        if stor0[arg1].field_0:
            if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if arg2.length:
                stor0[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor0[arg1].field_0 = 0
                idx = 0
                while stor0[arg1].field_1 + 31 / 32 > idx:
                    stor0[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if arg2.length:
                stor0[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor0[arg1].field_0 = 0
                idx = 0
                while stor0[arg1].field_1 + 31 / 32 > idx:
                    stor0[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        stor0[arg1].field_256 = 1
    else:
        if stor0[arg1].field_256 > -2:
            revert with 'NH{q', 17
        if stor0[arg1].field_0:
            if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if arg2.length:
                stor0[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor0[arg1].field_0 = 0
                idx = 0
                while stor0[arg1].field_1 + 31 / 32 > idx:
                    stor0[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if arg2.length:
                stor0[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor0[arg1].field_0 = 0
                idx = 0
                while stor0[arg1].field_1 + 31 / 32 > idx:
                    stor0[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        stor0[arg1].field_256++
}



}
