contract main {




// =====================  Runtime code  =====================


uint256 stor0;
array of uint256 sub_d04ae785;
array of uint256 sub_47edc777;
mapping of address stor3;
array of struct stor4;

function sub_47edc777(?) payable {
    return sub_47edc777[arg1][0 len sub_47edc777[arg1].length]
}

function sub_d04ae785(?) payable {
    return sub_d04ae785[arg1][0 len sub_d04ae785[arg1].length]
}

function _fallback() payable {
    revert
}

function sub_bcf4ffa3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    sub_d04ae785[stor0][] = Array(len=arg1.length, data=arg1[all])
    sub_47edc777[stor0][] = Array(len=arg2.length, data=arg2[all])
    stor3[stor0] = msg.sender
    stor4[address(msg.sender)].field_0++
    stor4[address(msg.sender)][stor4[address(msg.sender)].field_0].field_0 = stor0
    stor0++
}

function sub_ec023bc7(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if stor3[arg1] != msg.sender:
        revert with 0, 
                    32,
                    35,
                    0xfe596f75206f6e6c792075706461746520796f7572206f776e2070617373776f726473,
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 263 len 29]
    sub_d04ae785[arg1][] = Array(len=arg2.length, data=arg2[all])
    sub_47edc777[arg1][] = Array(len=arg3.length, data=arg3[all])
}

function sub_b67648c2(?) payable {
    require calldata.size - 4 >= 32
    if stor3[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x2e596f75206f6e6c792064656c65746520796f7572206f776e2070617373776f726473,
                    mem[199 len 29]
    sub_d04ae785[arg1] = 0
    if 31 < sub_d04ae785[arg1].length:
        idx = 0
        while sub_d04ae785[arg1].length + 31 / 32 > idx:
            sub_d04ae785[arg1][idx] = 0
            idx = idx + 1
            continue 
    sub_47edc777[arg1] = 0
    if 31 < sub_47edc777[arg1].length:
        idx = 0
        while sub_47edc777[arg1].length + 31 / 32 > idx:
            sub_47edc777[arg1][idx] = 0
            idx = idx + 1
            continue 
    stor3[arg1] = 0
    require ext_code.size(0x4b0596fa4f49d987d97465e0f1e926b14b9e6d2)
    delegate 0x4b0596fa4f49d987d97465e0f1e926b14b9e6d2.0xb1b942d8 with:
         gas gas_remaining wei
        args sha3(address(msg.sender), 4), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_26132a14(?) payable {
    if not stor4[address(msg.sender)].field_0:
        mem[(32 * stor4[address(msg.sender)].field_0) + 128] = 32
        mem[(32 * stor4[address(msg.sender)].field_0) + 160] = stor4[address(msg.sender)].field_0
        mem[(32 * stor4[address(msg.sender)].field_0) + 192 len floor32(stor4[address(msg.sender)].field_0)] = mem[128 len floor32(stor4[address(msg.sender)].field_0)]
        return memory
          from (32 * stor4[address(msg.sender)].field_0) + 128
           len (96 * stor4[address(msg.sender)].field_0) + 64
    mem[128] = stor4[address(msg.sender)].field_0
    idx = 128
    s = 0
    while (32 * stor4[address(msg.sender)].field_0) + 96 > idx:
        mem[idx + 32] = stor4[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4[address(msg.sender)].field_0) + 192 len floor32(stor4[address(msg.sender)].field_0)] = mem[128 len floor32(stor4[address(msg.sender)].field_0)]
    return Array(len=stor4[address(msg.sender)].field_0, data=mem[128 len floor32(stor4[address(msg.sender)].field_0)], mem[(32 * stor4[address(msg.sender)].field_0) + floor32(stor4[address(msg.sender)].field_0) + 192 len (32 * stor4[address(msg.sender)].field_0) - floor32(stor4[address(msg.sender)].field_0)]), 
}



}
