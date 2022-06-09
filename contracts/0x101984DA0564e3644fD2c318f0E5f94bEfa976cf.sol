contract main {




// =====================  Runtime code  =====================


#
#  - sub_1fa840b2(?)
#  - sub_9bf4ec2f(?)
#
array of struct sub_cb7330ae;
mapping of struct stor1;
uint256 numRequests;

function numRequests() payable {
    return numRequests
}

function sub_cb7330ae(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 < 2
    require arg3 == arg3
    require arg3 < sub_cb7330ae[arg1][arg2].field_0
    return sub_cb7330ae[arg1][arg2][arg3].field_0
}

function _fallback() payable {
    revert
}

function sub_f8ab2689(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < 2
    if arg2 > 1:
        revert with 'NH{q', 33
    if sub_cb7330ae[address(arg1)][arg2].field_0:
        mem[128] = sub_cb7330ae[address(arg1)][arg2].field_0
        idx = 128
        s = 0
        while (32 * sub_cb7330ae[address(arg1)][arg2].field_0) + 96 > idx:
            mem[idx + 32] = sub_cb7330ae[address(arg1)][arg2][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_cb7330ae[address(arg1)][arg2].field_0, data=mem[128 len 32 * sub_cb7330ae[address(arg1)][arg2].field_0])
    mem[(32 * sub_cb7330ae[address(arg1)][arg2].field_0) + 128] = 32
    mem[(32 * sub_cb7330ae[address(arg1)][arg2].field_0) + 160] = sub_cb7330ae[address(arg1)][arg2].field_0
    mem[(32 * sub_cb7330ae[address(arg1)][arg2].field_0) + 192 len 32 * sub_cb7330ae[address(arg1)][arg2].field_0] = mem[128 len 32 * sub_cb7330ae[address(arg1)][arg2].field_0]
    return memory
      from (32 * sub_cb7330ae[address(arg1)][arg2].field_0) + 128
       len (96 * sub_cb7330ae[address(arg1)][arg2].field_0) + 64
}

function sub_f58ca325(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if address(arg1) == msg.sender:
        revert with 0, 'Cannot request from yourself'
    if not address(arg1):
        revert with 0, 'Cannot request from 0x0'
    if not address(arg2):
        revert with 0, 'Cannot request token 0x0'
    if not arg3:
        revert with 0, 'Cannot request amount 0'
    sub_cb7330ae[address(msg.sender)][0].field_0++
    sub_cb7330ae[address(msg.sender)][0][sub_cb7330ae[address(msg.sender)][0].field_0].field_0 = numRequests
    sub_cb7330ae[address(arg1)][1].field_0++
    sub_cb7330ae[address(arg1)][1][sub_cb7330ae[address(arg1)][1].field_0].field_0 = numRequests
    stor1[stor2].field_0 = msg.sender
    stor1[stor2].field_256 = address(arg1)
    stor1[stor2].field_512 = address(arg2)
    stor1[stor2].field_672 = 0
    stor1[stor2].field_768 = 0
    stor1[stor2].field_680 = block.timestamp % 281474976710656
    stor1[stor2].field_768 = 0
    stor1[stor2].field_1024 = 0
    stor1[stor2].field_1024 = arg3
    if stor1[stor2].field_1280:
        if stor1[stor2].field_1280 == stor1[stor2].field_1281 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            stor1[stor2][5][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor1[stor2].field_1280 = 0
            idx = 0
            while stor1[stor2].field_1281 + 31 / 32 > idx:
                stor1[stor2][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor1[stor2].field_1280 == stor1[stor2].field_1281 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            stor1[stor2][5][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor1[stor2].field_1280 = 0
            idx = 0
            while stor1[stor2].field_1281 + 31 / 32 > idx:
                stor1[stor2][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
    if numRequests == -1:
        revert with 'NH{q', 17
    numRequests++
    mem[ceil32(arg4.length) + 384] = address(arg2)
    mem[ceil32(arg4.length) + 416] = arg3
    emit 0xa40952ee: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 416 len -arg4.length + ceil32(arg4.length) + 32], msg.sender, address(arg1), sha3(Mask(24, -(8 * ceil32(arg4.length) + -arg4.length + 3) + 256, 0) >> -(8 * ceil32(arg4.length) + -arg4.length + 3) + 256)
}



}
