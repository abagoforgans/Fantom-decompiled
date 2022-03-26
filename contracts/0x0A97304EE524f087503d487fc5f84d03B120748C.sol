contract main {




// =====================  Runtime code  =====================


array of uint256 sub_4f0caac3;
mapping of uint8 stor1;
array of struct stor2;
mapping of struct stor3;

function sub_4f0caac3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4f0caac3[msg.sender]
    return sub_4f0caac3[msg.sender][arg1]
}

function _fallback() payable {
    revert
}

function sub_24d431b9(?) payable {
    require calldata.size - 4 >= 32
    mem[704] = stor2[arg1].field_0
    idx = 704
    s = 0
    while stor2[arg1].length + 672 > idx:
        mem[idx + 32] = stor2[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor2[arg1].length) + 736] = stor3[arg1].field_0
    idx = ceil32(stor2[arg1].length) + 736
    s = 0
    while ceil32(stor2[arg1].length) + stor3[arg1].length + 704 > idx:
        mem[idx + 32] = stor3[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor2[arg1].length) <= stor2[arg1].length:
        mem[(2 * ceil32(stor2[arg1].length)) + ceil32(stor3[arg1].length) + 1088] = stor3[arg1].length
        mem[(2 * ceil32(stor2[arg1].length)) + ceil32(stor3[arg1].length) + 1120 len ceil32(stor3[arg1].length)] = mem[ceil32(stor2[arg1].length) + 736 len ceil32(stor3[arg1].length)]
        if ceil32(stor3[arg1].length) > stor3[arg1].length:
            mem[(2 * ceil32(stor2[arg1].length)) + ceil32(stor3[arg1].length) + stor3[arg1].length + 1120] = 0
        return 32, address(stor1[arg1]), 
               0,
               0,
               0,
               0,
               0,
               uint8(stor1[arg1]),
               288,
               ceil32(stor2[arg1].length) + 320,
               stor2[arg1].length,
               mem[704 len ceil32(stor2[arg1].length)],
               stor3[arg1].length,
               mem[ceil32(stor2[arg1].length) + 736 len ceil32(stor3[arg1].length)]
    mem[ceil32(stor2[arg1].length) + ceil32(stor3[arg1].length) + stor2[arg1].length + 1088] = 0
    mem[(2 * ceil32(stor2[arg1].length)) + ceil32(stor3[arg1].length) + 1088] = stor3[arg1].length
    mem[(2 * ceil32(stor2[arg1].length)) + ceil32(stor3[arg1].length) + 1120 len ceil32(stor3[arg1].length)] = mem[ceil32(stor2[arg1].length) + 736 len ceil32(stor3[arg1].length)]
    if ceil32(stor3[arg1].length) > stor3[arg1].length:
        mem[(2 * ceil32(stor2[arg1].length)) + ceil32(stor3[arg1].length) + stor3[arg1].length + 1120] = 0
    return 32, address(stor1[arg1]), 
           0,
           0,
           0,
           0,
           0,
           uint8(stor1[arg1]),
           288,
           ceil32(stor2[arg1].length) + 320,
           stor2[arg1].length,
           mem[704 len stor2[arg1].length],
           0,
           mem[ceil32(stor2[arg1].length) + ceil32(stor3[arg1].length) + stor2[arg1].length + 1120 len ceil32(stor3[arg1].length) + ceil32(stor2[arg1].length) - stor2[arg1].length]
}

function sub_fffc6064(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(msg.sender)
    mem[ceil32(arg1.length) + 180] = block.timestamp
    mem[ceil32(arg1.length) + 212 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + arg1.length + 212] = 0
    mem[ceil32(arg1.length) + 128] = arg1.length + 52
    sub_4f0caac3[msg.sender]++
    sub_4f0caac3[msg.sender][sub_4f0caac3[msg.sender]] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    if block.timestamp != block.timestamp:
        revert with 0, 'invalid birthdate'
    uint256(stor1[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]) = msg.sender or block.timestamp << 160 or 0x960000000000000000000000000000000000000000000000000000 or 0x200000000000000000000000000000000000000000000000000000000 or 0x40000000000000000000000000000000000000000000000000000000000 or 0x2000000000000000000000000000000000000000000000000000000000000
    if arg1.length:
        stor2[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        stor2[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_0 = 0
        idx = 0
        while stor2[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].length + 31 / 32 > idx:
            stor2[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor3[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_0 = 12
    stor3[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_8 = 0
    stor3[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_208 = 73003261258853
    idx = 0
    while stor3[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].length + 31 / 32 > idx:
        stor3[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][idx].field_0 = 0
        idx = idx + 1
        continue 
}



}
