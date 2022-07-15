contract main {




// =====================  Runtime code  =====================


#
#  - sub_1120ec35(?)
#  - sub_c36dad44(?)
#  - _fallback()
#
address owner;
mapping of struct stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
uint16 stor4;

function owner() {
    return owner
}

function sub_fccb0b80(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function sub_6215e3c2(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    require msg.sender == owner
    if stor1[arg1 << 240].field_0:
        stor1[arg1 << 240].field_0 = 0
}

function withdraw() payable {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4b214cf2(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    require msg.sender == owner
    if not stor1[arg1 << 240].field_0:
        if not uint16(arg1):
            revert with 0, 18
        stor1[arg1 << 240].field_0 = uint16(10000 / uint16(arg1))
        stor1[arg1 << 240].field_16 = 0
}

function sub_9ea948b8(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    require msg.sender == owner
    stor4 = uint16(arg1)
    if not stor1[arg1 << 240].field_0:
        if not uint16(arg1):
            revert with 0, 18
        stor1[arg1 << 240].field_0 = uint16(10000 / uint16(arg1))
        stor1[arg1 << 240].field_16 = 0
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4fa61224(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require msg.sender == owner
    idx = 0
    while uint16(idx) < ('cd', 4).length:
        if uint16(idx) >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * uint16(idx)) + 140 len 20]
        mem[32] = 2
        if stor2[mem[(32 * uint16(idx)) + 140 len 20]]:
            if uint16(idx) >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * uint16(idx)) + 140 len 20]
            mem[32] = 2
            stor2[mem[(32 * uint16(idx)) + 140 len 20]] = 0
        if uint16(idx) == 65535:
            revert with 0, 17
        idx = uint16(idx) + 1
        continue 
}

function sub_600502f6(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require msg.sender == owner
    idx = 0
    while uint16(idx) < ('cd', 4).length:
        if uint16(idx) >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * uint16(idx)) + 140 len 20]
        mem[32] = 2
        if not stor2[mem[(32 * uint16(idx)) + 140 len 20]]:
            if uint16(idx) >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * uint16(idx)) + 140 len 20]
            mem[32] = 2
            stor2[mem[(32 * uint16(idx)) + 140 len 20]] = 1
        if uint16(idx) == 65535:
            revert with 0, 17
        idx = uint16(idx) + 1
        continue 
}



}
