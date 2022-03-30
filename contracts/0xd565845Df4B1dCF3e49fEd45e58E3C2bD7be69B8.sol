contract main {




// =====================  Runtime code  =====================


#
#  - sub_b0541dbc(?)
#
const bytes32ToString(bytes32 arg1) = ''

const test = 1


mapping of address stor5;
array of uint256 sub_6295edb7;

function sub_5ed8b37d(?) {
    return sub_6295edb7[0 len sub_6295edb7.length].field_0
}

function sub_6295edb7(?) {
    return sub_6295edb7[0 len sub_6295edb7.length].field_0
}

function _fallback() payable {
    revert
}

function fulfill(bytes32 arg1, bytes32 arg2) {
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    emit RequestFulfilled(arg1, arg2);
    bool(sub_6295edb7.length) = 0
    sub_6295edb7.length.field_1 = 0
    sub_6295edb7.length.field_8 = mem[128 len 31]
    idx = 0
    while sub_6295edb7.length + 31 / 32 > idx:
        sub_6295edb7[idx].field_0 = 0
        idx = idx + 1
        continue 
}



}
