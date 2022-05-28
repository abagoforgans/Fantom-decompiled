contract main {




// =====================  Runtime code  =====================


const sub_03737857(?) = 0x55530fa1b042582d5fa3c313a7e02d21af6b82f4

const sub_1206a69c(?) = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const sub_1a331eb1(?) = 0x8bb1fe7a50082623b372d857b4d07911c786a3e9

const sub_2844be84(?) = 0x8764de60236c5843d9faeb1b638fbce962773b67

const sub_3769ccff(?) = 0xcc0a87f7e7c693042a9cc703661f5060c80acb43

const sub_37f9e0de(?) = 0x6c021ae822bea943b2e66552bde1d2696a53fbb7

const sub_587173ca(?) = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const sub_9df6c44f(?) = 0x4cdf39285d7ca8eb3f090fda0c069ba5f4145b37

const sub_b4993ecf(?) = 0x4733bc45ef91cf7ccecaeedb794727075fb209f2

const sub_c4e3cc43(?) = 0x2a651563c9d3af67ae0388a5c8f89b867038089e

const sub_ea9abaee(?) = 0xcaf6c0fb8bcb737c2d5d7e5db615147a26091de1


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

function sub_1e9b8c59(?) payable {
    return sub_1e9b8c59Address
}

function zap() payable {
    return zapAddress
}

function sub_33aa2191(?) payable {
    return sub_33aa2191Address
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

function sub_dbd33e45(?) payable {
    return sub_dbd33e45Address
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
    emit Start()
    sub_85b374c3Address = 0x4cdf39285d7ca8eb3f090fda0c069ba5f4145b37
    sub_dbd33e45Address = 0x6c021ae822bea943b2e66552bde1d2696a53fbb7
    sub_1e9b8c59Address = 0x2a651563c9d3af67ae0388a5c8f89b867038089e
    sub_33aa2191Address = 0x4733bc45ef91cf7ccecaeedb794727075fb209f2
    sub_f088996fAddress = 0xcc0a87f7e7c693042a9cc703661f5060c80acb43
    sub_87ced3dcAddress = 0xcaf6c0fb8bcb737c2d5d7e5db615147a26091de1
    sub_63f96cf4Address = 0x8764de60236c5843d9faeb1b638fbce962773b67
    sub_7abd5a1cAddress = 0x55530fa1b042582d5fa3c313a7e02d21af6b82f4
    sub_f6c6e5e8Address = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    zapAddress = 0x8bb1fe7a50082623b372d857b4d07911c786a3e9
    require ext_code.size(sub_63f96cf4Address)
    call sub_63f96cf4Address.0x72a1e440 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        emit 0x635e2534 
    else:
        mem[ceil32(return_data.size) + 100] = 0x6c021ae822bea943b2e66552bde1d2696a53fbb7
        mem[ceil32(return_data.size) + 132] = 1
        require ext_code.size(sub_7abd5a1cAddress)
        call sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, 1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 1:
            require ext_code.size(sub_dbd33e45Address)
            call sub_dbd33e45Address.taxRate() with:
                 gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
            require ext_code.size(sub_dbd33e45Address)
            call sub_dbd33e45Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_dbd33e45Address)
            call sub_dbd33e45Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if False and ext_call.return_data[0] > 0:
                revert with 'NH{q', 17
            if False and ext_call.return_data[0] > 0:
                revert with 'NH{q', 17
            mem[(6 * ceil32(return_data.size)) + 96] = 0x6c021ae822bea943b2e66552bde1d2696a53fbb7
            mem[(6 * ceil32(return_data.size)) + 128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            if block.timestamp > -121:
                revert with 'NH{q', 17
            mem[(6 * ceil32(return_data.size)) + 160] = 0x7dd0674800000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 164] = 0
            mem[(6 * ceil32(return_data.size)) + 196] = 0
            idx = 0
            s = (6 * ceil32(return_data.size)) + 96
            t = (6 * ceil32(return_data.size)) + 228
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 292] = msg.sender
            mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 120
            require ext_code.size(sub_f6c6e5e8Address)
            call sub_f6c6e5e8Address.0x7dd06748 with:
                 gas gas_remaining wei
                args 0, 0, mem[(6 * ceil32(return_data.size)) + 228 len 64], msg.sender, block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbd33e45Address)
            call sub_dbd33e45Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 164] = msg.sender
            require ext_code.size(sub_1e9b8c59Address)
            call sub_1e9b8c59Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 196] = 0
            mem[(8 * ceil32(return_data.size)) + 228] = 0
            require ext_code.size(sub_87ced3dcAddress)
            call sub_87ced3dcAddress.0x73baccc0 with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 164] = msg.sender
            require ext_code.size(sub_1e9b8c59Address)
            call sub_1e9b8c59Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(sub_85b374c3Address)
            call sub_85b374c3Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(11 * ceil32(return_data.size)) + 196] = 0
            require ext_code.size(sub_f088996fAddress)
            call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_85b374c3Address)
            call sub_85b374c3Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            mem[(12 * ceil32(return_data.size)) + 196] = 1
            require ext_code.size(sub_7abd5a1cAddress)
            call sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(13 * ceil32(return_data.size)) + 164] = msg.sender
            require ext_code.size(sub_85b374c3Address)
            call sub_85b374c3Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_85b374c3Address)
            call sub_85b374c3Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 and ext_call.return_data[0] > -1 / 0:
                revert with 'NH{q', 17
            mem[(14 * ceil32(return_data.size)) + 160] = 0x4cdf39285d7ca8eb3f090fda0c069ba5f4145b37
            mem[(14 * ceil32(return_data.size)) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            if block.timestamp > -121:
                revert with 'NH{q', 17
            mem[(14 * ceil32(return_data.size)) + 224] = 0x7dd0674800000000000000000000000000000000000000000000000000000000
            mem[(14 * ceil32(return_data.size)) + 228] = 0
            idx = 0
            s = (14 * ceil32(return_data.size)) + 160
            t = (14 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(sub_f6c6e5e8Address)
            call sub_f6c6e5e8Address.0x7dd06748 with:
                 gas gas_remaining wei
                args 0, 0, mem[(14 * ceil32(return_data.size)) + 292 len 64], msg.sender, block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_85b374c3Address)
            call sub_85b374c3Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(sub_33aa2191Address)
            call sub_33aa2191Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(zapAddress)
            call zapAddress.0xcee6202c with:
                 gas gas_remaining wei
                args 0x4cdf39285d7ca8eb3f090fda0c069ba5f4145b37, 0, 0x4733bc45ef91cf7ccecaeedb794727075fb209f2, 0xf491e7b69e4244ad4002bc14e878a34207e38c29, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_33aa2191Address)
            call sub_33aa2191Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(sub_85b374c3Address)
            call sub_85b374c3Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_f088996fAddress)
            call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_85b374c3Address)
            call sub_85b374c3Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
}



}
