contract main {




// =====================  Runtime code  =====================


uint8 paused;
mapping of uint8 stor1;
address owner;
address sub_0c923d83Address;
array of uint8 sub_3c94356b;
address cornAddress;
address sub_0e357738Address;
address sub_fe86673cAddress;
address sub_a9300b1eAddress;
address sub_529522a9Address;
address sub_bff7e49fAddress;
address oilAddress;
address sub_dff87bcbAddress;

function sub_0c923d83(?) payable {
    return sub_0c923d83Address
}

function sub_0e357738(?) payable {
    return sub_0e357738Address
}

function sub_3c94356b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 4
    return uint8(sub_3c94356b[uint8(arg1)].field_0)
}

function sub_529522a9(?) payable {
    return sub_529522a9Address
}

function oil() payable {
    return oilAddress
}

function paused() payable {
    return bool(paused)
}

function pausers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function owner() payable {
    return owner
}

function corn() payable {
    return cornAddress
}

function sub_a9300b1e(?) payable {
    return sub_a9300b1eAddress
}

function sub_bff7e49f(?) payable {
    return sub_bff7e49fAddress
}

function sub_dff87bcb(?) payable {
    return sub_dff87bcbAddress
}

function sub_fe86673c(?) payable {
    return sub_fe86673cAddress
}

function _fallback() payable {
    revert
}

function pause() payable {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Pause denied'
    paused = 1
    return 1
}

function unpause() payable {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Unpause denied'
    paused = 0
    return 1
}

function sub_6240f0f4(?) payable {
    if owner != msg.sender:
        if sub_0c923d83Address != msg.sender:
            revert with 0, 'Must be owner or disaster'
    stor1[stor3] = 0
    sub_0c923d83Address = 0
    paused = 0
}

function sub_4d34f855(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    stor1[address(arg1)] = 1
    sub_0c923d83Address = address(arg1)
    paused = 1
}

function sub_2e2f4ca3(?) payable {
    mem[224] = sub_3c94356b.length
    idx = 224
    s = 0
    while 352 > idx + 32:
        mem[idx + 32] = uint8(sub_3c94356b[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1].field_0)
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    idx = 0
    s = 224
    t = 352
    while idx < 4:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from 352
       len 128
}

function sub_aae446ef(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    mem[96] = uint8(arg1)
    mem[128] = uint8(arg2)
    mem[160] = uint8(arg3)
    mem[192] = uint8(arg4)
    s = 0
    idx = 96
    while 224 > idx:
        sub_3c94356b.length = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and sub_3c94356b.length
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 4
    s = 4
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-2 * None + 3 / 32) + (None * None + 3 / 32) + 4
    while 5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function sub_81a20a7a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must own NFT'
    if bool(paused) == 1:
        revert with 0, 'Mill not available'
    if arg2 < 10^18:
        revert with 0, 'Amount too small'
    require ext_code.size(cornAddress)
    staticcall cornAddress.0x9cc7f708 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 and sub_3c94356b.length > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * sub_3c94356b.length > ext_call.return_data[0]:
        revert with 0, 'Crop balance too low'
    if arg2 and sub_3c94356b.length > -1 / arg2:
        revert with 'NH{q', 17
    require ext_code.size(cornAddress)
    call cornAddress.0x8769fd41 with:
         gas gas_remaining wei
        args arg1, arg2 * sub_3c94356b.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_529522a9Address)
    call sub_529522a9Address.0x1b2ef1ca with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_abedcf84(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must own NFT'
    if bool(paused) == 1:
        revert with 0, 'Mill not available'
    if arg2 < 10^18:
        revert with 0, 'Amount too small'
    require ext_code.size(sub_fe86673cAddress)
    staticcall sub_fe86673cAddress.0x9cc7f708 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 and uint8(sub_3c94356b.length.field_16) > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * uint8(sub_3c94356b.length.field_16) > ext_call.return_data[0]:
        revert with 0, 'Crop balance too low'
    if arg2 and uint8(sub_3c94356b.length.field_16) > -1 / arg2:
        revert with 'NH{q', 17
    require ext_code.size(sub_fe86673cAddress)
    call sub_fe86673cAddress.0x8769fd41 with:
         gas gas_remaining wei
        args arg1, arg2 * uint8(sub_3c94356b.length.field_16)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(oilAddress)
    call oilAddress.0x1b2ef1ca with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f4d81671(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must own NFT'
    if bool(paused) == 1:
        revert with 0, 'Mill not available'
    if arg2 < 10^18:
        revert with 0, 'Amount too small'
    require ext_code.size(sub_0e357738Address)
    staticcall sub_0e357738Address.0x9cc7f708 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 and uint8(sub_3c94356b.length.field_8) > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * uint8(sub_3c94356b.length.field_8) > ext_call.return_data[0]:
        revert with 0, 'Crop balance too low'
    if arg2 and uint8(sub_3c94356b.length.field_8) > -1 / arg2:
        revert with 'NH{q', 17
    require ext_code.size(sub_0e357738Address)
    call sub_0e357738Address.0x8769fd41 with:
         gas gas_remaining wei
        args arg1, arg2 * uint8(sub_3c94356b.length.field_8)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_bff7e49fAddress)
    call sub_bff7e49fAddress.0x1b2ef1ca with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b1148de9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must own NFT'
    if bool(paused) == 1:
        revert with 0, 'Mill not available'
    if arg2 < 10^18:
        revert with 0, 'Amount too small'
    require ext_code.size(sub_a9300b1eAddress)
    staticcall sub_a9300b1eAddress.0x9cc7f708 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 and uint8(sub_3c94356b.length.field_24) > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * uint8(sub_3c94356b.length.field_24) > ext_call.return_data[0]:
        revert with 0, 'Crop balance too low'
    if arg2 and uint8(sub_3c94356b.length.field_24) > -1 / arg2:
        revert with 'NH{q', 17
    require ext_code.size(sub_a9300b1eAddress)
    call sub_a9300b1eAddress.0x8769fd41 with:
         gas gas_remaining wei
        args arg1, arg2 * uint8(sub_3c94356b.length.field_24)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_dff87bcbAddress)
    call sub_dff87bcbAddress.0x1b2ef1ca with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
