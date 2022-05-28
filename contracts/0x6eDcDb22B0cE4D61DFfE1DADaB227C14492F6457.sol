contract main {




// =====================  Runtime code  =====================


address sub_37f9e0deAddress;
address sub_9df6c44fAddress;
address sub_587173caAddress;
address sub_c4e3cc43Address;
address sub_b4993ecfAddress;
address sub_1a331eb1Address;
address sub_1206a69cAddress;
address sub_ea9abaeeAddress;
address sub_03737857Address;
address sub_2844be84Address;
address sub_3769ccffAddress;
address sub_f6c6e5e8Address;
address sub_87ced3dcAddress;
address sub_f088996fAddress;
address sub_dbd33e45Address;
address sub_85b374c3Address;
address sub_1e9b8c59Address;
address sub_33aa2191Address;
address sub_7abd5a1cAddress;
address sub_63f96cf4Address;
address zapAddress;

function sub_03737857(?) payable {
    return sub_03737857Address
}

function sub_1206a69c(?) payable {
    return sub_1206a69cAddress
}

function sub_1a331eb1(?) payable {
    return sub_1a331eb1Address
}

function sub_1e9b8c59(?) payable {
    return sub_1e9b8c59Address
}

function zap() payable {
    return zapAddress
}

function sub_2844be84(?) payable {
    return sub_2844be84Address
}

function sub_33aa2191(?) payable {
    return sub_33aa2191Address
}

function sub_3769ccff(?) payable {
    return sub_3769ccffAddress
}

function sub_37f9e0de(?) payable {
    return sub_37f9e0deAddress
}

function sub_587173ca(?) payable {
    return sub_587173caAddress
}

function sub_63f96cf4(?) payable {
    return sub_63f96cf4Address
}

function sub_7abd5a1c(?) payable {
    return sub_7abd5a1cAddress
}

function sub_85b374c3(?) payable {
    return sub_85b374c3Address
}

function sub_87ced3dc(?) payable {
    return sub_87ced3dcAddress
}

function sub_9df6c44f(?) payable {
    return sub_9df6c44fAddress
}

function sub_b4993ecf(?) payable {
    return sub_b4993ecfAddress
}

function sub_c4e3cc43(?) payable {
    return sub_c4e3cc43Address
}

function sub_dbd33e45(?) payable {
    return sub_dbd33e45Address
}

function sub_ea9abaee(?) payable {
    return sub_ea9abaeeAddress
}

function sub_f088996f(?) payable {
    return sub_f088996fAddress
}

function sub_f6c6e5e8(?) payable {
    return sub_f6c6e5e8Address
}

function _fallback() payable {
    revert
}

function compound() payable {
    sub_85b374c3Address = sub_9df6c44fAddress
    sub_dbd33e45Address = sub_37f9e0deAddress
    sub_1e9b8c59Address = sub_c4e3cc43Address
    sub_33aa2191Address = sub_b4993ecfAddress
    sub_f088996fAddress = sub_3769ccffAddress
    sub_87ced3dcAddress = sub_ea9abaeeAddress
    sub_63f96cf4Address = sub_2844be84Address
    sub_7abd5a1cAddress = sub_03737857Address
    sub_f6c6e5e8Address = sub_1206a69cAddress
    zapAddress = sub_1a331eb1Address
    require ext_code.size(sub_63f96cf4Address)
    call sub_63f96cf4Address.0x72a1e440 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    revert with 0, 'foo bar'
}



}
