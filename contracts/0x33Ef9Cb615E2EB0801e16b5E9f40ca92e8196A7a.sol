contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
address sub_9fe0c29fAddress;
address sub_5ecada6aAddress;
uint256 sub_f1fc4780;
array of struct sub_e44f5c50;
uint256 sub_a5ff7b38;

function sub_2fa3eac8(?) payable {
    return sub_e44f5c50.length
}

function sub_5ecada6a(?) payable {
    return sub_5ecada6aAddress
}

function owner() payable {
    return owner
}

function sub_9fe0c29f(?) payable {
    return sub_9fe0c29fAddress
}

function sub_a5ff7b38(?) payable {
    return sub_a5ff7b38
}

function sub_e3c253ea(?) payable {
    return address(stor1.length)
}

function sub_e44f5c50(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e44f5c50.length
    return sub_e44f5c50[arg1].field_0, sub_e44f5c50[arg1].field_256
}

function sub_f1fc4780(?) payable {
    return sub_f1fc4780
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function sub_7f0aafec(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(stor1.length) = arg1
}

function sub_365b9444(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 10000:
        revert with 0, 'Fee Bps between 0 and 10000'
    sub_a5ff7b38 = arg1
}

function sub_4d351686(?) payable {
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x4d351686 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a0915c01(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0xa0915c01 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_bae1a01b(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0xb63098dd with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_86755e21(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x744d656f77206665652061646472657373206d757374206e6f7420616464726573732830,
                    mem[200 len 28]
    sub_5ecada6aAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function sub_aa7394e5(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'array size not equal'
    sub_e44f5c50.length = 0
    idx = 0
    while 2 * sub_e44f5c50.length > idx:
        sub_e44f5c50[idx].field_0 = 0
        sub_e44f5c50[idx].field_256 = 0
        idx = idx + 2
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        if cd[((32 * idx) + cd[36] + 36)] > 10000:
            revert with 0, 'Fee Bps between 0 and 10000'
        require idx < ('cd', 36).length
        if cd[((32 * idx) + cd[36] + 36)] > sub_f1fc4780:
            revert with 0, 'feeBps too much'
        if not idx:
            _28 = mem[64]
            mem[64] = mem[64] + 64
            require idx < ('cd', 4).length
            mem[_28] = cd[((32 * idx) + cd[4] + 36)]
            require idx < ('cd', 36).length
            mem[_28 + 32] = cd[((32 * idx) + cd[36] + 36)]
        else:
            require idx - 1 < ('cd', 4).length
            require idx < ('cd', 4).length
            if cd[((32 * idx) + cd[4] + 36)] <= cd[((32 * idx - 1) + cd[4] + 36)]:
                revert with 0, 
                            32,
                            40,
                            0x734665652076616c7565206d75737420736f7274206279206c6f7765737420746f20686967686573,
                            mem[mem[64] + 108 len 24]
            _32 = mem[64]
            mem[64] = mem[64] + 64
            require idx < ('cd', 4).length
            mem[_32] = cd[((32 * idx) + cd[4] + 36)]
            require idx < ('cd', 36).length
            mem[_32 + 32] = cd[((32 * idx) + cd[36] + 36)]
        sub_e44f5c50.length++
        mem[0] = 5
        sub_e44f5c50[sub_e44f5c50.length].field_0 = cd[((32 * idx) + cd[4] + 36)]
        sub_e44f5c50[sub_e44f5c50.length].field_256 = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
}

function sub_1bf01789(?) payable {
    require calldata.size - 4 >= 96
    if not address(stor1.length):
        revert with 0, 'Meow util not set'
    if not sub_e44f5c50.length:
        revert with 0, 'please set fee'
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0xa0915c01 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < sub_e44f5c50.length
    if ext_call.return_data[0] < uint256(sub_e44f5c50.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0xe06d4d656f7720696e20796f75722077616c6c6574206c657373207468616e206d696e696d756d20616d6f756e,
                    mem[209 len 19]
    require var53001 < sub_e44f5c50.length
    if ext_call.return_data[0] >= sub_e44f5c50[var55001].field_0:
        if not arg2:
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xb63098dd with:
                    gas gas_remaining wei
                   args address(arg1), var65001 / 10000
            mem[96] = ext_call.return_data[0]
            s = var59001
            s = var59009
            s = var59010
            while ext_call.success:
                require return_data.size >= 32
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x4d351686 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not mem[96]:
                    require 0 < sub_e44f5c50.length
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] >= stor[var65007]:
                        return stor[var65007], uint256(stor1[var65007]), mem[96]
                    require var63001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var65001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var65001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var65001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var65001].field_256
                            s = (2 * var65001) + sha3(5)
                            s = var65004
                            continue 
                        if sub_e44f5c50[var65001].field_256 * arg2 / arg2 != sub_e44f5c50[var65001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var65001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var65001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var65001 = sub_e44f5c50[var65001].field_256 * arg2
                        var65007 = (2 * var65001) + sha3(5)
                        var65008 = var65004
                        continue 
                    require var69001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var71001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var65001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var65001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var71001].field_256
                            s = (2 * var71001) + sha3(5)
                            s = var71004
                            continue 
                        if sub_e44f5c50[var71001].field_256 * arg2 / arg2 != sub_e44f5c50[var71001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var71001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var71001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var65001 = sub_e44f5c50[var71001].field_256 * arg2
                        var65007 = (2 * var71001) + sha3(5)
                        var65008 = var71004
                        continue 
                    require var75001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var77001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var65001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var65001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var77001].field_256
                            s = (2 * var77001) + sha3(5)
                            s = var77004
                            continue 
                        if sub_e44f5c50[var77001].field_256 * arg2 / arg2 != sub_e44f5c50[var77001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var77001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var77001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var65001 = sub_e44f5c50[var77001].field_256 * arg2
                        var65007 = (2 * var77001) + sha3(5)
                        var65008 = var77004
                        continue 
                    require var81001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] < sub_e44f5c50[var83001].field_0:
                        # nil
                    else:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var65001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var65001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var83001].field_256
                            s = (2 * var83001) + sha3(5)
                            s = var83004
                            continue 
                        if sub_e44f5c50[var83001].field_256 * arg2 / arg2 != sub_e44f5c50[var83001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var83001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var83001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var65001 = sub_e44f5c50[var83001].field_256 * arg2
                        var65007 = (2 * var83001) + sha3(5)
                        var65008 = var83004
                        continue 
                else:
                    if ext_call.return_data[0] * mem[96] / mem[96] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    require 0 < sub_e44f5c50.length
                    if ext_call.return_data[0] * mem[96] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * mem[96] / 10^18) < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if ext_call.return_data[0] * mem[96] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * mem[96] / 10^18) >= stor[var65007]:
                        return stor[var65007], uint256(stor1[var65007]), mem[96]
                    require var64001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var66001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var65001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var65001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var66001].field_256
                            s = (2 * var66001) + sha3(5)
                            s = var66004
                            continue 
                        if sub_e44f5c50[var66001].field_256 * arg2 / arg2 != sub_e44f5c50[var66001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var66001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var66001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var65001 = sub_e44f5c50[var66001].field_256 * arg2
                        var65007 = (2 * var66001) + sha3(5)
                        var65008 = var66004
                        continue 
                    require var70001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var72001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var65001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var65001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var72001].field_256
                            s = (2 * var72001) + sha3(5)
                            s = var72004
                            continue 
                        if sub_e44f5c50[var72001].field_256 * arg2 / arg2 != sub_e44f5c50[var72001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var72001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var72001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var65001 = sub_e44f5c50[var72001].field_256 * arg2
                        var65007 = (2 * var72001) + sha3(5)
                        var65008 = var72004
                        continue 
                    require var76001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var78001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var65001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var65001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var78001].field_256
                            s = (2 * var78001) + sha3(5)
                            s = var78004
                            continue 
                        if sub_e44f5c50[var78001].field_256 * arg2 / arg2 != sub_e44f5c50[var78001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var78001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var78001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var65001 = sub_e44f5c50[var78001].field_256 * arg2
                        var65007 = (2 * var78001) + sha3(5)
                        var65008 = var78004
                        continue 
                    require var82001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] < sub_e44f5c50[var84001].field_0:
                        # nil
                    else:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var65001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var65001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var84001].field_256
                            s = (2 * var84001) + sha3(5)
                            s = var84004
                            continue 
                        if sub_e44f5c50[var84001].field_256 * arg2 / arg2 != sub_e44f5c50[var84001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var84001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var84001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var65001 = sub_e44f5c50[var84001].field_256 * arg2
                        var65007 = (2 * var84001) + sha3(5)
                        var65008 = var84004
                        continue 
        else:
            if var64001 / arg2 != var64003:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xb63098dd with:
                    gas gas_remaining wei
                   args address(arg1), var66001 / 10000
            mem[96] = ext_call.return_data[0]
            s = var66001
            t = var66011
            u = var66012
            while ext_call.success:
                require return_data.size >= 32
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x4d351686 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not mem[96]:
                    require 0 < sub_e44f5c50.length
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] >= stor[t]:
                        return stor[t], uint256(stor1[t]), mem[96]
                    require var66001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var68001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = 0 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), 0
                            mem[96] = ext_call.return_data[0]
                            s = 0
                            t = (2 * var68001) + sha3(5)
                            u = var68004
                            continue 
                        if sub_e44f5c50[var68001].field_256 * arg2 / arg2 != sub_e44f5c50[var68001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var68001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var68001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        s = sub_e44f5c50[var68001].field_256 * arg2
                        t = (2 * var68001) + sha3(5)
                        u = var68004
                        continue 
                    require var72001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var74001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = 0 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), 0
                            mem[96] = ext_call.return_data[0]
                            s = 0
                            t = (2 * var74001) + sha3(5)
                            u = var74004
                            continue 
                        if sub_e44f5c50[var74001].field_256 * arg2 / arg2 != sub_e44f5c50[var74001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var74001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var74001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        s = sub_e44f5c50[var74001].field_256 * arg2
                        t = (2 * var74001) + sha3(5)
                        u = var74004
                        continue 
                    require var78001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] < sub_e44f5c50[var80001].field_0:
                        require var84001 < sub_e44f5c50.length
                        # nil
                    else:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = 0 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), 0
                            mem[96] = ext_call.return_data[0]
                            s = 0
                            t = (2 * var80001) + sha3(5)
                            u = var80004
                            continue 
                        if sub_e44f5c50[var80001].field_256 * arg2 / arg2 != sub_e44f5c50[var80001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var80001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var80001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        s = sub_e44f5c50[var80001].field_256 * arg2
                        t = (2 * var80001) + sha3(5)
                        u = var80004
                        continue 
                else:
                    if ext_call.return_data[0] * mem[96] / mem[96] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    require 0 < sub_e44f5c50.length
                    if ext_call.return_data[0] * mem[96] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * mem[96] / 10^18) < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if ext_call.return_data[0] * mem[96] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * mem[96] / 10^18) >= stor[t]:
                        return stor[t], uint256(stor1[t]), mem[96]
                    require s < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var69001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = 0 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), 0
                            mem[96] = ext_call.return_data[0]
                            s = 0
                            t = (2 * var69001) + sha3(5)
                            u = var69004
                            continue 
                        if sub_e44f5c50[var69001].field_256 * arg2 / arg2 != sub_e44f5c50[var69001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var69001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var69001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        s = sub_e44f5c50[var69001].field_256 * arg2
                        t = (2 * var69001) + sha3(5)
                        u = var69004
                        continue 
                    require var73001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var75001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = 0 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), 0
                            mem[96] = ext_call.return_data[0]
                            s = 0
                            t = (2 * var75001) + sha3(5)
                            u = var75004
                            continue 
                        if sub_e44f5c50[var75001].field_256 * arg2 / arg2 != sub_e44f5c50[var75001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var75001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var75001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        s = sub_e44f5c50[var75001].field_256 * arg2
                        t = (2 * var75001) + sha3(5)
                        u = var75004
                        continue 
                    require var79001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] < sub_e44f5c50[var81001].field_0:
                        require var85001 < sub_e44f5c50.length
                        # nil
                    else:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = 0 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), 0
                            mem[96] = ext_call.return_data[0]
                            s = 0
                            t = (2 * var81001) + sha3(5)
                            u = var81004
                            continue 
                        if sub_e44f5c50[var81001].field_256 * arg2 / arg2 != sub_e44f5c50[var81001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var81001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var81001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        s = sub_e44f5c50[var81001].field_256 * arg2
                        t = (2 * var81001) + sha3(5)
                        u = var81004
                        continue 
        revert with ext_call.return_data[0 len return_data.size]
    require var59001 < sub_e44f5c50.length
    if ext_call.return_data[0] >= sub_e44f5c50[var61001].field_0:
        if not arg2:
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xb63098dd with:
                    gas gas_remaining wei
                   args address(arg1), var71001 / 10000
            mem[96] = ext_call.return_data[0]
            s = var65001
            s = var65009
            s = var65010
            while ext_call.success:
                require return_data.size >= 32
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x4d351686 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not mem[96]:
                    require 0 < sub_e44f5c50.length
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] >= stor[var71007]:
                        return stor[var71007], uint256(stor1[var71007]), mem[96]
                    require var69001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var71001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var71001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var71001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var71001].field_256
                            s = (2 * var71001) + sha3(5)
                            s = var71004
                            continue 
                        if sub_e44f5c50[var71001].field_256 * arg2 / arg2 != sub_e44f5c50[var71001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var71001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var71001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var71001 = sub_e44f5c50[var71001].field_256 * arg2
                        var71007 = (2 * var71001) + sha3(5)
                        var71008 = var71004
                        continue 
                    require var75001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var77001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var71001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var71001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var77001].field_256
                            s = (2 * var77001) + sha3(5)
                            s = var77004
                            continue 
                        if sub_e44f5c50[var77001].field_256 * arg2 / arg2 != sub_e44f5c50[var77001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var77001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var77001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var71001 = sub_e44f5c50[var77001].field_256 * arg2
                        var71007 = (2 * var77001) + sha3(5)
                        var71008 = var77004
                        continue 
                    require var81001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] < sub_e44f5c50[var83001].field_0:
                        # nil
                    else:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var71001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var71001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var83001].field_256
                            s = (2 * var83001) + sha3(5)
                            s = var83004
                            continue 
                        if sub_e44f5c50[var83001].field_256 * arg2 / arg2 != sub_e44f5c50[var83001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var83001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var83001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var71001 = sub_e44f5c50[var83001].field_256 * arg2
                        var71007 = (2 * var83001) + sha3(5)
                        var71008 = var83004
                        continue 
                else:
                    if ext_call.return_data[0] * mem[96] / mem[96] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    require 0 < sub_e44f5c50.length
                    if ext_call.return_data[0] * mem[96] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * mem[96] / 10^18) < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if ext_call.return_data[0] * mem[96] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * mem[96] / 10^18) >= stor[var71007]:
                        return stor[var71007], uint256(stor1[var71007]), mem[96]
                    require var70001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var72001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var71001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var71001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var72001].field_256
                            s = (2 * var72001) + sha3(5)
                            s = var72004
                            continue 
                        if sub_e44f5c50[var72001].field_256 * arg2 / arg2 != sub_e44f5c50[var72001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var72001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var72001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var71001 = sub_e44f5c50[var72001].field_256 * arg2
                        var71007 = (2 * var72001) + sha3(5)
                        var71008 = var72004
                        continue 
                    require var76001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var78001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var71001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var71001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var78001].field_256
                            s = (2 * var78001) + sha3(5)
                            s = var78004
                            continue 
                        if sub_e44f5c50[var78001].field_256 * arg2 / arg2 != sub_e44f5c50[var78001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var78001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var78001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var71001 = sub_e44f5c50[var78001].field_256 * arg2
                        var71007 = (2 * var78001) + sha3(5)
                        var71008 = var78004
                        continue 
                    require var82001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] < sub_e44f5c50[var84001].field_0:
                        # nil
                    else:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var71001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var71001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var84001].field_256
                            s = (2 * var84001) + sha3(5)
                            s = var84004
                            continue 
                        if sub_e44f5c50[var84001].field_256 * arg2 / arg2 != sub_e44f5c50[var84001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var84001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var84001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var71001 = sub_e44f5c50[var84001].field_256 * arg2
                        var71007 = (2 * var84001) + sha3(5)
                        var71008 = var84004
                        continue 
        else:
            if var70001 / arg2 != var70003:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xb63098dd with:
                    gas gas_remaining wei
                   args address(arg1), var72001 / 10000
            mem[96] = ext_call.return_data[0]
            s = var72001
            t = var72011
            u = var72012
            while ext_call.success:
                require return_data.size >= 32
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x4d351686 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not mem[96]:
                    require 0 < sub_e44f5c50.length
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] >= stor[t]:
                        return stor[t], uint256(stor1[t]), mem[96]
                    require var72001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var74001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = 0 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), 0
                            mem[96] = ext_call.return_data[0]
                            s = 0
                            t = (2 * var74001) + sha3(5)
                            u = var74004
                            continue 
                        if sub_e44f5c50[var74001].field_256 * arg2 / arg2 != sub_e44f5c50[var74001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var74001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var74001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        s = sub_e44f5c50[var74001].field_256 * arg2
                        t = (2 * var74001) + sha3(5)
                        u = var74004
                        continue 
                    require var78001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] < sub_e44f5c50[var80001].field_0:
                        require var84001 < sub_e44f5c50.length
                        # nil
                    else:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = 0 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), 0
                            mem[96] = ext_call.return_data[0]
                            s = 0
                            t = (2 * var80001) + sha3(5)
                            u = var80004
                            continue 
                        if sub_e44f5c50[var80001].field_256 * arg2 / arg2 != sub_e44f5c50[var80001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var80001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var80001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        s = sub_e44f5c50[var80001].field_256 * arg2
                        t = (2 * var80001) + sha3(5)
                        u = var80004
                        continue 
                else:
                    if ext_call.return_data[0] * mem[96] / mem[96] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    require 0 < sub_e44f5c50.length
                    if ext_call.return_data[0] * mem[96] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * mem[96] / 10^18) < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if ext_call.return_data[0] * mem[96] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * mem[96] / 10^18) >= stor[t]:
                        return stor[t], uint256(stor1[t]), mem[96]
                    require s < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var75001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = 0 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), 0
                            mem[96] = ext_call.return_data[0]
                            s = 0
                            t = (2 * var75001) + sha3(5)
                            u = var75004
                            continue 
                        if sub_e44f5c50[var75001].field_256 * arg2 / arg2 != sub_e44f5c50[var75001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var75001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var75001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        s = sub_e44f5c50[var75001].field_256 * arg2
                        t = (2 * var75001) + sha3(5)
                        u = var75004
                        continue 
                    require var79001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] < sub_e44f5c50[var81001].field_0:
                        require var85001 < sub_e44f5c50.length
                        # nil
                    else:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = 0 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), 0
                            mem[96] = ext_call.return_data[0]
                            s = 0
                            t = (2 * var81001) + sha3(5)
                            u = var81004
                            continue 
                        if sub_e44f5c50[var81001].field_256 * arg2 / arg2 != sub_e44f5c50[var81001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var81001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var81001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        s = sub_e44f5c50[var81001].field_256 * arg2
                        t = (2 * var81001) + sha3(5)
                        u = var81004
                        continue 
        revert with ext_call.return_data[0 len return_data.size]
    require var65001 < sub_e44f5c50.length
    if ext_call.return_data[0] >= sub_e44f5c50[var67001].field_0:
        if not arg2:
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xb63098dd with:
                    gas gas_remaining wei
                   args address(arg1), var77001 / 10000
            mem[96] = ext_call.return_data[0]
            s = var71001
            s = var71009
            s = var71010
            while ext_call.success:
                require return_data.size >= 32
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x4d351686 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not mem[96]:
                    require 0 < sub_e44f5c50.length
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] >= stor[var77007]:
                        return stor[var77007], uint256(stor1[var77007]), mem[96]
                    require var75001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var77001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var77001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var77001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var77001].field_256
                            s = (2 * var77001) + sha3(5)
                            s = var77004
                            continue 
                        if sub_e44f5c50[var77001].field_256 * arg2 / arg2 != sub_e44f5c50[var77001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var77001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var77001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var77001 = sub_e44f5c50[var77001].field_256 * arg2
                        var77007 = (2 * var77001) + sha3(5)
                        var77008 = var77004
                        continue 
                    require var81001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] < sub_e44f5c50[var83001].field_0:
                        # nil
                    else:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var77001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var77001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var83001].field_256
                            s = (2 * var83001) + sha3(5)
                            s = var83004
                            continue 
                        if sub_e44f5c50[var83001].field_256 * arg2 / arg2 != sub_e44f5c50[var83001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var83001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var83001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var77001 = sub_e44f5c50[var83001].field_256 * arg2
                        var77007 = (2 * var83001) + sha3(5)
                        var77008 = var83004
                        continue 
                else:
                    if ext_call.return_data[0] * mem[96] / mem[96] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    require 0 < sub_e44f5c50.length
                    if ext_call.return_data[0] * mem[96] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * mem[96] / 10^18) < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if ext_call.return_data[0] * mem[96] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * mem[96] / 10^18) >= stor[var77007]:
                        return stor[var77007], uint256(stor1[var77007]), mem[96]
                    require var76001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] >= sub_e44f5c50[var78001].field_0:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var77001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var77001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var78001].field_256
                            s = (2 * var78001) + sha3(5)
                            s = var78004
                            continue 
                        if sub_e44f5c50[var78001].field_256 * arg2 / arg2 != sub_e44f5c50[var78001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var78001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var78001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var77001 = sub_e44f5c50[var78001].field_256 * arg2
                        var77007 = (2 * var78001) + sha3(5)
                        var77008 = var78004
                        continue 
                    require var82001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] < sub_e44f5c50[var84001].field_0:
                        # nil
                    else:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var77001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var77001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var84001].field_256
                            s = (2 * var84001) + sha3(5)
                            s = var84004
                            continue 
                        if sub_e44f5c50[var84001].field_256 * arg2 / arg2 != sub_e44f5c50[var84001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var84001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var84001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var77001 = sub_e44f5c50[var84001].field_256 * arg2
                        var77007 = (2 * var84001) + sha3(5)
                        var77008 = var84004
                        continue 
        else:
            if var76001 / arg2 != var76003:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xb63098dd with:
                    gas gas_remaining wei
                   args address(arg1), var78001 / 10000
            mem[96] = ext_call.return_data[0]
            s = var78001
            t = var78011
            u = var78012
            while ext_call.success:
                require return_data.size >= 32
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x4d351686 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not mem[96]:
                    require 0 < sub_e44f5c50.length
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] >= stor[t]:
                        return stor[t], uint256(stor1[t]), mem[96]
                    require var78001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] < sub_e44f5c50[var80001].field_0:
                        require var84001 < sub_e44f5c50.length
                        # nil
                    else:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = 0 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), 0
                            mem[96] = ext_call.return_data[0]
                            s = 0
                            t = (2 * var80001) + sha3(5)
                            u = var80004
                            continue 
                        if sub_e44f5c50[var80001].field_256 * arg2 / arg2 != sub_e44f5c50[var80001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var80001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var80001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        s = sub_e44f5c50[var80001].field_256 * arg2
                        t = (2 * var80001) + sha3(5)
                        u = var80004
                        continue 
                else:
                    if ext_call.return_data[0] * mem[96] / mem[96] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    require 0 < sub_e44f5c50.length
                    if ext_call.return_data[0] * mem[96] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * mem[96] / 10^18) < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if ext_call.return_data[0] * mem[96] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * mem[96] / 10^18) >= stor[t]:
                        return stor[t], uint256(stor1[t]), mem[96]
                    require s < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] < sub_e44f5c50[var81001].field_0:
                        require var85001 < sub_e44f5c50.length
                        # nil
                    else:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = 0 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), 0
                            mem[96] = ext_call.return_data[0]
                            s = 0
                            t = (2 * var81001) + sha3(5)
                            u = var81004
                            continue 
                        if sub_e44f5c50[var81001].field_256 * arg2 / arg2 != sub_e44f5c50[var81001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var81001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var81001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        s = sub_e44f5c50[var81001].field_256 * arg2
                        t = (2 * var81001) + sha3(5)
                        u = var81004
                        continue 
        revert with ext_call.return_data[0 len return_data.size]
    require var71001 < sub_e44f5c50.length
    if ext_call.return_data[0] < sub_e44f5c50[var73001].field_0:
        require var77001 < sub_e44f5c50.length
        if ext_call.return_data[0] < sub_e44f5c50[var79001].field_0:
            require var83001 < sub_e44f5c50.length
            if ext_call.return_data[0] < sub_e44f5c50[var85001].field_0:
                require var89001 < sub_e44f5c50.length
                # nil
            else:
                # nil
        else:
            if arg2:
                if var88001 / arg2 != var88003:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                # nil
            else:
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xb63098dd with:
                        gas gas_remaining wei
                       args address(arg1), var89001 / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x4d351686 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require 0 < sub_e44f5c50.length
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] < stor[var89007]:
                        # nil
                    else:
                        return stor[var89007], uint256(stor1[var89007]), ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require 0 < sub_e44f5c50.length
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < stor[var89007]:
                        # nil
                    else:
                        return stor[var89007], uint256(stor1[var89007]), ext_call.return_data[0]
    else:
        if not arg2:
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xb63098dd with:
                    gas gas_remaining wei
                   args address(arg1), var83001 / 10000
            mem[96] = ext_call.return_data[0]
            s = var77001
            s = var77009
            s = var77010
            while ext_call.success:
                require return_data.size >= 32
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x4d351686 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not mem[96]:
                    require 0 < sub_e44f5c50.length
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] >= stor[var83007]:
                        return stor[var83007], uint256(stor1[var83007]), mem[96]
                    require var81001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] < sub_e44f5c50[var83001].field_0:
                        # nil
                    else:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var83001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var83001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var83001].field_256
                            s = (2 * var83001) + sha3(5)
                            s = var83004
                            continue 
                        if sub_e44f5c50[var83001].field_256 * arg2 / arg2 != sub_e44f5c50[var83001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var83001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var83001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var83001 = sub_e44f5c50[var83001].field_256 * arg2
                        var83007 = (2 * var83001) + sha3(5)
                        var83008 = var83004
                        continue 
                else:
                    if ext_call.return_data[0] * mem[96] / mem[96] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    require 0 < sub_e44f5c50.length
                    if ext_call.return_data[0] * mem[96] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * mem[96] / 10^18) < uint256(sub_e44f5c50.field_0):
                        revert with 0, 'mMeow less than minimum amount'
                    if ext_call.return_data[0] * mem[96] / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * mem[96] / 10^18) >= stor[var83007]:
                        return stor[var83007], uint256(stor1[var83007]), mem[96]
                    require var82001 < sub_e44f5c50.length
                    mem[0] = 5
                    if ext_call.return_data[0] < sub_e44f5c50[var84001].field_0:
                        # nil
                    else:
                        if not arg2:
                            mem[100] = arg1
                            mem[132] = var83001 / 10000
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xb63098dd with:
                                    gas gas_remaining wei
                                   args address(arg1), var83001 / 10000
                            mem[96] = ext_call.return_data[0]
                            s = sub_e44f5c50[var84001].field_256
                            s = (2 * var84001) + sha3(5)
                            s = var84004
                            continue 
                        if sub_e44f5c50[var84001].field_256 * arg2 / arg2 != sub_e44f5c50[var84001].field_256:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        mem[100] = arg1
                        mem[132] = sub_e44f5c50[var84001].field_256 * arg2 / 10000
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xb63098dd with:
                                gas gas_remaining wei
                               args address(arg1), sub_e44f5c50[var84001].field_256 * arg2 / 10000
                        mem[96] = ext_call.return_data[0]
                        var83001 = sub_e44f5c50[var84001].field_256 * arg2
                        var83007 = (2 * var84001) + sha3(5)
                        var83008 = var84004
                        continue 
            revert with ext_call.return_data[0 len return_data.size]
        if var82001 / arg2 != var82003:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).0xb63098dd with:
                gas gas_remaining wei
               args address(arg1), var85001 / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).0x4d351686 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require 0 < sub_e44f5c50.length
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] < uint256(sub_e44f5c50.field_0):
                revert with 0, 'mMeow less than minimum amount'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] >= stor[var85007]:
                return stor[var85007], uint256(stor1[var85007]), ext_call.return_data[0]
            require var84001 < sub_e44f5c50.length
            # nil
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require 0 < sub_e44f5c50.length
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < uint256(sub_e44f5c50.field_0):
                revert with 0, 'mMeow less than minimum amount'
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >= stor[var85007]:
                return stor[var85007], uint256(stor1[var85007]), ext_call.return_data[0]
            require var85001 < sub_e44f5c50.length
            # nil
}



}
