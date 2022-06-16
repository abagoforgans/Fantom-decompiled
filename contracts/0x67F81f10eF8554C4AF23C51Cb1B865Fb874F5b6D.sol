contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_4d10f07f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[1440 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    mem[ceil32(return_data.size) + 1440] = ext_call.return_data[28 len 4]
    mem[ceil32(return_data.size) + 1472] = uint32(ext_call.return_data[32])
    mem[ceil32(return_data.size) + 1504] = uint32(ext_call.return_data[64])
    mem[ceil32(return_data.size) + 1536] = uint32(ext_call.return_data[96])
    mem[ceil32(return_data.size) + 1568] = uint32(ext_call.return_data[128])
    mem[ceil32(return_data.size) + 1600] = uint32(ext_call.return_data[160])
    require ext_code.size(0x51c0b29a1d84611373ba301706c6b4b72283c80f)
    staticcall 0x51c0b29a1d84611373ba301706c6b4b72283c80f.get_skills(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 1632 len 1152] = ext_call.return_data[0 len 1152]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 1152
    require ceil32(return_data.size) + 1663 < ceil32(return_data.size) + return_data.size + 1632
    if not bool((2 * ceil32(return_data.size)) + 2784 <= test266151307()):
        revert with 'NH{q', 65
    require 1152 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + 1632
    t = (2 * ceil32(return_data.size)) + 1632
    while idx < 36:
        require mem[s] == mem[s + 31 len 1]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = ceil32(return_data.size) + 1440
    t = (2 * ceil32(return_data.size)) + 2784
    while idx < 6:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = (2 * ceil32(return_data.size)) + 1632
    t = (2 * ceil32(return_data.size)) + 2976
    while idx < 36:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (2 * ceil32(return_data.size)) + 2784
       len 1344
}

function sub_df13b173(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xc363b9eb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0x9cc7f708 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
    staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimed(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
    staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0x9cc7f708 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}



}
